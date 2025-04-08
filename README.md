# Writing unit tests with `{testthat}`

This repository houses two small functions and example unit tests. It is intended to pair with the [EDS 296: Intro to Shiny](https://ucsb-meds.github.io/EDS-296-Intro-to-Shiny/) unit testing modules ([full](https://ucsb-meds.github.io/EDS-296-Intro-to-Shiny/course-materials/slides/part7.2-unit-testing-slides.html#/title-slide) & [abridged](https://ucsb-meds.github.io/EDS-296-Intro-to-Shiny/course-materials/slides/part7.2-unit-testing-slides-ABRIDGED.html#/title-slide) versions).

## An important note

The [`{testthat}` framework](https://testthat.r-lib.org/index.html) is intended to be used within repositories structured as R packages. There have been [active conversations](https://github.com/r-lib/testthat/issues/659) around using `{testhat}` outside the context of an R package, though this practice is generally discouraged. 

*Because this example serves to briefly introduce the concept a unit test **separate** from Shiny (before we jump into the `{shinytest2}` framework), I have chosen to **not** to convert this repository into a package. Largely because:*

1. I am limited on instructional time and don't have the capacity to introduce package development. Members of the intended audience ([MEDS](https://bren.ucsb.edu/masters-programs/master-environmental-data-science/academics-meds-program) students) are largely constructing data science pipelines / analyses / projects inside a run-of-the-mill repository (rather than a package)
2. There are very few examples on how to appropriately structure a respository for using `{testthat}` outside of a package. context. I found [this resource](https://b-rodrigues.github.io/fput/unit-testing.html) by Bruno Rodrigues and wanted to give it a try.

## Repository structure

To run test files using `{testthat}` outside of a package context, this respository is structured as follows:

```
.
├── R/  
|   └── add_nums.R
|   └── say_hello.R
├── tests/  
|   └── test_add_nums.R
|   └── test_say_hello.R
```

- `R/` contains functions. Each function lives in its own script (while this is good practice, it's not necessarily required)
- `tests/` contain corresponding test files for each function (e.g. `test_add_nums.R` contains the unit tests for the `add_nums()` function in `add_nums.R`. `test_add_nums.R` sources `add_nums.R`). These file names must be prepended with the name `test`.

You should see a **Run Tests** button appear at the top of each test file when opened.

*Please be aware that this repository structure does differ from that of an R package containing `{testthat}` test files. Please reference the [`{testthat}` documentation](https://testthat.r-lib.org/) for more information.*
