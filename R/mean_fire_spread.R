#' Calculate the Mean Fire Spread Rate for a Fuel Type
#'
#' @description
#' This function calculates the mean fire spread rate for an inputted
#' fuel type in a dataset containing wildfire observations.
#'
#' @param dataset The dataset containing fuel_type and fire_spread_rate.
#' Named dataset since it could technically be used with several
#' datasets, not just wildfires.
#'
#' @param fuel The fuel type for which the mean fire spread rate
#' will be calculated.
#'
#' @return A tibble containing the mean fire spread rate for the
#' inputted fuel type.
#'
#' @examples
#' example_data <- data.frame(
#'   fuel_type = c("C1", "C1", "C2"),
#'   fire_spread_rate = c(1.2, 1.8, 2.0)
#' )
#' mean_fire_spread(example_data, "C1")
#'
#' @export
mean_fire_spread = function(dataset,fuel) {

  if(!is.data.frame(dataset)) {
    stop("Dataset is not a date frame")
  }

  if(!is.character(fuel)){
    stop("Fuel is not a character string")
  }

  dataset |>
    dplyr::filter(fuel_type == fuel) |>
    dplyr::summarise(mean_spread_rate = mean(fire_spread_rate, na.rm = TRUE))
}
