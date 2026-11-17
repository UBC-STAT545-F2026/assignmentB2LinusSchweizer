#' Calculate Mean Fire Spread Rate
#'
#' @description
#' Calculates the mean fire spread rate for a specified fuel type
#' in a wildfire dataset.
#'
#' @param dataset A data frame containing wildfire observations.
#' Must include the columns `fuel_type` and `fire_spread_rate`.
#' @param fuel A character string specifying the fuel type
#' for which the mean fire spread rate should be calculated.
#'
#' @return A data frame containing one column,
#' `mean_spread_rate`, with the mean fire spread rate
#' for the selected fuel type.
#'
#' @examples
#' example_data <- data.frame(
#'   fuel_type = c("C1", "C1", "C2", "C2"),
#'   fire_spread_rate = c(1.2, 1.8, 2.0, 2.4)
#' )
#'
#' mean_fire_spread(example_data, "C1")
#'
#' @export

mean_fire_spread <- function(dataset, fuel) {

  if (!is.data.frame(dataset)) {
    stop("dataset must be a data frame")
  }

  if (!is.character(fuel) || length(fuel) != 1 || is.na(fuel)) {
    stop("fuel must be a single character string")
  }

  if (!all(c("fuel_type", "fire_spread_rate") %in% names(dataset))) {
    stop("dataset must contain fuel_type and fire_spread_rate")
  }

  if (!is.numeric(dataset$fire_spread_rate)) {
    stop("fire_spread_rate must be numeric")
  }

  selected_data <- dataset[dataset$fuel_type %in% fuel, ]

  mean_spread <- mean(
    selected_data$fire_spread_rate,
    na.rm = TRUE
  )

  data.frame(mean_spread_rate = mean_spread)
}
