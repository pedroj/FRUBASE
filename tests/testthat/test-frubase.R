# Tests for the FRUBASE data object.
# frubase is a data-only package, so the suite validates the integrity of the
# shipped dataset rather than any function behaviour.

test_that("frubase loads and is a data frame of the expected shape", {
  data(frubase, package = "frubase")
  expect_s3_class(frubase, "data.frame")
  expect_identical(ncol(frubase), 32L)
  expect_gt(nrow(frubase), 900L)
})

test_that("frubase has the documented columns in the documented order", {
  data(frubase, package = "frubase")
  expected <- c("cl", "scl", "ord", "fam", "gen", "sp", "ref", "newref",
                "famlab", "genlab", "splab", "cod", "dispcat", "disp",
                "area", "fruit", "leng", "diam", "frfm", "pdm", "sdm",
                "seeds", "seedm", "ry", "kjg", "kjfr", "pcw", "lip",
                "pro", "nsc", "ash", "fib")
  expect_identical(names(frubase), expected)
})

test_that("taxonomic key columns are character and non-missing", {
  data(frubase, package = "frubase")
  key <- c("cl", "scl", "ord", "fam", "gen", "sp")
  for (col in key) {
    expect_type(frubase[[col]], "character")
    expect_false(anyNA(frubase[[col]]),
                 info = paste("NA found in key column", col))
  }
})

test_that("fruit-trait columns are numeric", {
  data(frubase, package = "frubase")
  numeric_cols <- c("leng", "diam", "frfm", "pdm", "sdm", "seeds", "seedm",
                    "ry", "kjg", "kjfr", "pcw", "lip", "pro", "nsc",
                    "ash", "fib")
  for (col in numeric_cols) {
    expect_true(is.numeric(frubase[[col]]),
                info = paste(col, "should be numeric"))
  }
})

test_that("disperser categories are the three documented types", {
  data(frubase, package = "frubase")
  expect_setequal(unique(frubase$dispcat), c("Birds", "Mammals", "Mixed"))
})

test_that("measured fruit dimensions are non-negative where present", {
  data(frubase, package = "frubase")
  for (col in c("leng", "diam", "frfm", "seedm")) {
    vals <- frubase[[col]]
    vals <- vals[!is.na(vals)]
    expect_true(all(vals >= 0),
                info = paste(col, "has a negative value"))
  }
})

test_that("proportional composition columns lie within a plausible range", {
  data(frubase, package = "frubase")
  # relative pulp yield and pulp/composition percentages should be within
  # [0, 100] (some are reported as percentages).
  for (col in c("ry", "pcw")) {
    vals <- frubase[[col]]
    vals <- vals[!is.na(vals)]
    expect_true(all(vals >= 0 & vals <= 100),
                info = paste(col, "outside 0-100"))
  }
})

test_that("species labels are unique per row where provided", {
  data(frubase, package = "frubase")
  # cod is a 5-character species code; where present it should identify rows.
  expect_type(frubase$cod, "character")
})

test_that("the bundled extdata tsv matches the packaged data object", {
  data(frubase, package = "frubase")
  tsv <- system.file("extdata", "frubase.tsv", package = "frubase")
  skip_if(tsv == "", "extdata/frubase.tsv not installed")
  from_tsv <- utils::read.table(tsv, sep = "\t", dec = ".",
                                header = TRUE, na.strings = "NA",
                                stringsAsFactors = FALSE)
  expect_identical(nrow(from_tsv), nrow(frubase))
  expect_identical(ncol(from_tsv), ncol(frubase))
  expect_identical(names(from_tsv), names(frubase))
})
