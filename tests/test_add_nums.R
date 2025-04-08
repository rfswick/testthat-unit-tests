#..........................load packages.........................
library(testthat)

#...........................source fxn...........................
source(here::here("R", "add_nums.R"))

#..............................tests.............................
test_that("add_nums works with two positive integers", {
 expect_equal(add_nums(5, 7), 12)
})

test_that("add_numbers works with two positive decimals", {
  expect_equal(add_nums(2.5, 3.5), 6)
})

test_that("add_numbers throws error when a string is provided", {
  expect_error(add_nums(5, "hello"), "non-numeric argument to binary operator")
})

test_that("add_numbers works with a positive and a negative number", {
  expect_equal(add_nums(5, -3), 2)
})

test_that("add_numbers works with a negative and a positive number", {
  expect_equal(add_nums(-5, 8), 3)
})

test_that("add_numbers works with two negative numbers", {
  expect_equal(add_nums(-5, -7), -12)
})

test_that("add_numbers works with positive infinity and a number", {
  expect_equal(add_nums(Inf, 5), Inf)
})

test_that("add_numbers works with a number and positive infinity", {
  expect_equal(add_nums(5, Inf), Inf)
})

test_that("add_numbers works with two positive infinities", {
  expect_equal(add_nums(Inf, Inf), Inf)
})

test_that("add_numbers works with negative infinity and positive infinity", {
  expect_equal(add_nums(-Inf, Inf), NaN)
})

