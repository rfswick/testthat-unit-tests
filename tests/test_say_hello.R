#..........................load packages.........................
library(testthat)

#...........................source fxn...........................
source(here::here("R", "say_hello.R"))

#..............................tests.............................
test_that("say_hello works with a string", { # give your test a descriptive name
  expect_output(say_hello("Sam"), "Hello Sam!") # write an expectation (i.e. expected output given a known input)
})

test_that("say_hello throws error when no argument is provided", {
  expect_error(say_hello(), "Please include a name as a character string for me to greet!")
})

test_that("say_hello throws error when numeric value is provided", {
  expect_error(say_hello(123), "Please include a name as a character string for me to greet!")
})

# # Added after improving function ----
# test_that("say_hello throws error when an empty string is provided", {
#   expect_error(say_hello(""), "Please include a name as a character string for me to greet!")
# })
# 
# test_that("say_hello throws error when empty string with white space is provided", {
#   expect_error(say_hello(" "), "Please include a name as a character string for me to greet!")
# })
