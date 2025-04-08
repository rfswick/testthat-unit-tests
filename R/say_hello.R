say_hello <- function(name = NULL) {
  if (is.null(name) || is.na(name) || trimws(name) == "" || is.numeric(name)) {
    return("Please include a name for me to greet!")
  } else {
    greeting <- paste0("Hello ", name, "!")
    print(greeting)
  }
}