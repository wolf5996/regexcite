# Split a string

Split a string

## Usage

``` r
str_split_one(string, pattern, n = Inf)
```

## Arguments

- string:

  A character vector with, at most, one element.

- pattern:

  Pattern to look for.

  The default interpretation is a regular expression, as described in
  `vignette("regular-expressions")`. Use
  [`regex()`](https://stringr.tidyverse.org/reference/modifiers.html)
  for finer control of the matching behaviour.

  Match a fixed string (i.e. by comparing only bytes), using
  [`fixed()`](https://stringr.tidyverse.org/reference/modifiers.html).
  This is fast, but approximate. Generally, for matching human text,
  you'll want
  [`coll()`](https://stringr.tidyverse.org/reference/modifiers.html)
  which respects character matching rules for the specified locale.

  Match character, word, line and sentence boundaries with
  [`boundary()`](https://stringr.tidyverse.org/reference/modifiers.html).
  An empty pattern, "", is equivalent to `boundary("character")`.

- n:

  Maximum number of pieces to return. Default (Inf) uses all possible
  split positions.

  For `str_split()`, this determines the maximum length of each element
  of the output. For `str_split_fixed()`, this determines the number of
  columns in the output; if an input is too short, the result will be
  padded with `""`.

## Value

A character vector.

## Examples

``` r
x <- "alfa,bravo,charlie,delta"
str_split_one(x, pattern = ",")
#> [1] "alfa"    "bravo"   "charlie" "delta"  
str_split_one(x, pattern = ",", n = 2)
#> [1] "alfa"                "bravo,charlie,delta"

y <- "192.168.0.1"
str_split_one(y, pattern = stringr::fixed("."))
#> [1] "192" "168" "0"   "1"  
```
