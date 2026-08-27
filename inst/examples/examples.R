# ============================================================
# FRUBASE - Example usage
# Fleshy fruit traits database (>1000 plant species worldwide)
# Jordano, P. 1995. Am. Nat. 145: 163-191.
# ============================================================

# -----------------------------------------------------------
# 1. Load the dataset
# -----------------------------------------------------------
data(frubase)

dplyr::glimpse(frubase)

# -----------------------------------------------------------
# 2. Explore structure
# -----------------------------------------------------------
# Number of species per disperser category
frubase |>
  dplyr::count(dispcat, sort = TRUE)

# Species per geographic area
frubase |>
  dplyr::count(area, sort = TRUE)

# -----------------------------------------------------------
# 3. Filter by taxon
# -----------------------------------------------------------
# All Prunus species with their fruit traits
prunus <- frubase |>
  dplyr::filter(gen == "Prunus") |>
  dplyr::select(gen, sp, fam, dispcat, area, frfm, leng, diam,
                seeds, lip, pro, nsc)

prunus

# -----------------------------------------------------------
# 4. Compare fruit traits across disperser categories
# -----------------------------------------------------------
# Summary of fruit fresh mass by disperser type
frubase |>
  dplyr::filter(!is.na(frfm), dispcat %in% c("Birds", "Mammals",
                                             "Mixed")) |>
  dplyr::group_by(dispcat) |>
  dplyr::summarise(
    n = dplyr::n(),
    mean_mass = mean(frfm, na.rm = TRUE),
    sd_mass   = sd(frfm, na.rm = TRUE),
    mean_lip  = mean(lip,  na.rm = TRUE),
    mean_pro  = mean(pro,  na.rm = TRUE)
  )


# -----------------------------------------------------------
# 5. Plot: Fruit size vs. lipid content by disperser type
# -----------------------------------------------------------
if (interactive()) {
  frubase |>
    dplyr::filter(!is.na(leng), !is.na(diam),
                  dispcat %in% c("Birds", "Mammals",
                                 "Mixed")) |>
    ggplot(aes(x = leng, y = diam, colour = dispcat)) +
    geom_point(alpha = 0.4, size = 1.8) +
    geom_smooth(method = "lm", se = TRUE) +
    scale_colour_manual(values = c("Birds"   = "#1b7837",
                                   "Mammals" = "#762a83",
                                   "Mixed"   = "#e08214")) +
    labs(
      x        = "Fruit length, mm",
      y        = "Fruit diameter, mm",
      colour   = "Disperser type",
      title    = "Fruit form/shape",
      subtitle = "FRUBASE - Jordano 1995"
    ) +
    theme_bw()
}
# -----------------------------------------------------------
# 6. Pulp quality: lipid-protein trade-off
# -----------------------------------------------------------
if (interactive()) {
  frubase |>
    dplyr::filter(!is.na(lip), !is.na(pro),
                  dispcat %in% c("Birds", "Mammals")) |>
    ggplot(aes(x = lip, y = pro, colour = dispcat)) +
    geom_point(alpha = 0.5) +
    geom_smooth(method = "lm", se = FALSE, linetype = "dashed") +
    labs(
      x = "Lipid content",
      y = "Protein content",
      title = "Lipid-protein trade-off in fleshy fruits"
    ) +
    theme_minimal()
}
# -----------------------------------------------------------
# 7. Relative pulp yield by family (top 10 families)
# -----------------------------------------------------------
if (interactive()) {
  frubase |>
    dplyr::filter(!is.na(ry)) |>
    dplyr::group_by(fam) |>
    dplyr::summarise(n = n(), mean_ry = mean(ry, na.rm = TRUE)) |>
    dplyr::filter(n >= 5) |>
    dplyr::slice_max(mean_ry, n = 10) |>
    ggplot(aes(x = reorder(fam, mean_ry), y = mean_ry)) +
    geom_col(fill = "#2166ac") +
    coord_flip() +
    labs(
      x = "Family",
      y = "Mean relative pulp yield (%)",
      title = "Top 10 families by relative pulp yield"
    ) +
    theme_minimal()
}
