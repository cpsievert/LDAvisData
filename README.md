# moviereviews

This package contains data from the [Cornell Movie Review project](http://www.cs.cornell.edu/people/pabo/movie-review-data/)
as well as scripts to obtain this data using R. This repository is heavily influenced
by hadley's [babynames](https://github.com/hadley/babynames).

Install this package from github:
  
```s
# install.packages("devtools")
devtools::install_github("cpsievert/moviereviews")
```

Load the movie reviews:

```s
data(reviews, package = "moviereviews")
```
