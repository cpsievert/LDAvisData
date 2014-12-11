if (!file.exists("data-raw/reviews")) {
  tmp <- tempfile(fileext = ".tar.gz")
  download.file("http://www.cs.cornell.edu/people/pabo/movie-review-data/review_polarity.tar.gz", 
                tmp, quiet = TRUE)
  untar(tmp, exdir = "data-raw/reviews")
  unlink(tmp)
}

path <- file.path("data-raw", "reviews", "txt_sentoken")
pos <- list.files(file.path(path, "pos"))
neg <- list.files(file.path(path, "neg"))
pos.files <- file.path(path, "pos", pos)
neg.files <- file.path(path, "neg", neg)
all.files <- c(pos.files, neg.files)
txt <- lapply(all.files, readLines)
nms <- gsub("data-raw/reviews/txt_sentoken", "", all.files)
reviews <- setNames(txt, nms)
reviews <- sapply(reviews, function(x) paste(x, collapse = " "))

save(reviews, file = "data/reviews.rdata", compress = "xz")
