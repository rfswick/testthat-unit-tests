#..........................load packages.........................
library(testthat)

#...........................source fxn...........................
source(here::here("R", "say-hello.R"))

#..............................tests.............................
test_that("say_hello works with a string", {
  expect_output(say_hello("Sam"), "Hello Sam!")
})

test_that("say_hello prints message when no argument is provided", {
  expect_equal(say_hello(), "Please include a name for me to greet!")
})

test_that("say_hello prints message when NA is provided", {
  expect_equal(say_hello(NA), "Please include a name for me to greet!")
})

test_that("say_hello prints message when empty string is provided", {
  expect_equal(say_hello(""), "Please include a name for me to greet!")
})

test_that("say_hello prints message when empty string with white space is provided", {
  expect_equal(say_hello("  "), "Please include a name for me to greet!")
})

test_that("say_hello prints message when integer is provided", {
  expect_equal(say_hello(123), "Please include a name for me to greet!")
})

test_that("say_hello prints message when decimal is provided", {
  expect_equal(say_hello(1.23), "Please include a name for me to greet!")
})
