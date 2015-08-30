# Angle-Based Outlier Detection

Implementation of the angle-based outlier factor in R. Three methods are available, a full but slow implementation using all the data that has cubic complexity, a fully randomized one which is way more efficient and another using k-nearest neighbours. These algorithms are specially well suited for high dimensional data outlier detection.

## Install 

The package is available on CRAN:

````r
install.packages("abodOutlier")
library(abodOutlier)
````

## Usage

````r
abod(faithful, method = "randomized", n_sample_size = 30)
abod(faithful, method = "knn", k = 20)
````

MIT Licensed.