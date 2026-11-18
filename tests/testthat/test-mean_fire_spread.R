test_that("the function mean_fire_spread works", {

  add_dataset_here <- data.frame(
     fuel_type = c("C1", "C2"),
     fire_spread_rate = c(1.475939, 1.8))

  # Test 1: Ensure dataset is not a string
  expect_error(mean_fire_spread("w", "C1"))

  # Test 2: Ensure that fuel type is correct
  expect_error(mean_fire_spread(add_dataset_here, 1))

  # Test 3: Test accuracy for fuel type C1
  expect_equal(
    mean_fire_spread(add_dataset_here, "C1")$mean_spread_rate,
    1.475939,
    tolerance = 0.00001
  )
})
