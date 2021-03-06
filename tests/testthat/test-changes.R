context("changes = git status")

test_path <- getwd()

test_that("changes() message: clean history", {
  .cache  <-  changes:::.cache
  .cache$repo  <- NULL 
  path <- tempfile(pattern = "tmpInitFolder-")
  dir.create(path)
  setwd(path)
  changes:::init(path)
  write(a <- "a", file = file.path(path, "a"))
  record("init")
  expect_output(changes(), "no changes since the last")
  setwd(test_path)
})
