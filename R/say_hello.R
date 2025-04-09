say_hello <- function(name = NULL) {
  if (!is.character(name)) {
    stop("Please include a name as a character string for me to greet!")
  } else {
    greeting <- paste0("Hello ", name, "!")
    print(greeting)
  }
}

# # Improvement ----
# say_hello <- function(name = NULL) {
#   if (!is.character(name) || trimws(name) == "") {
#     stop("Please include a name as a character string for me to greet!")
#   } else {
#     greeting <- paste0("Hello ", name, "!")
#     print(greeting)
#   }
# }