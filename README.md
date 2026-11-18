
<!-- README.md is generated from README.Rmd. Please edit that file -->

# assignmentB2LinusSchweizer

The goal of assignmentB2LinusSchweizer is to calculate the mean fire
spead rate for a given fuel type using the function, mean_fire_spread().

## Installation

You can install the development version of assignmentB2LinusSchweizer
from [GitHub](https://github.com/) with:

``` r
# install.packages("devtools")
devtools::install_github("UBC-STAT545-F2026/assignmentB2LinusSchweizer"
```

## Example

This is a basic example which shows you how to solve a common problem:

``` r
library(assignmentB2LinusSchweizer)
add_dataset_here <- data.frame(
  fuel_type = c("C1"),
  fire_spread_rate = c(1.5))
mean_fire_spread(add_dataset_here, "C1")
#>   mean_spread_rate
#> 1              1.5
```

For the wildfire dataset in tidyverse, the mean fire spread rate for
fuel type ‘C1’ is 1.5m/s.
