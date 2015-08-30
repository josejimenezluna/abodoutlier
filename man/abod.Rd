\name{abod}
\alias{abod}
%- Also NEED an '\alias' for EACH other topic documented here.
\title{
Angle-Based Outlier Factor
}
\description{
Computes angle-based outlier factor for each observation in the dataset}
\usage{
abod(data, method = "complete", n_sample_size = trunc(nrow(data)/10), k = 15)
}
%- maybe also 'usage' for other objects documented here.
\arguments{
  \item{data}{
%%     ~~Describe \code{data} here~~
Dataframe in which to compute angle-based outlier factor.
}
  \item{method}{
%%     ~~Describe \code{method} here~~
Method to perform. 'complete' will use the entire dataset (cubic complexity) to
compute abof. 'randomized' will use a random sample of the data of size 'n_sample_size'. 'knn' will
compute abof among 'k' nearest neighbours. 
}
  \item{n_sample_size}{
%%     ~~Describe \code{n_sample_size} here~~
Number of random observations to choose in randomized method.
}
  \item{k}{
%%     ~~Describe \code{k} here~~
Number of nearest neighbours to choose in knn method.
}
}
\details{
%%  ~~ If necessary, more details than the description above ~~
Please note that 'knn' has to compute an euclidean distance
matrix before computing abof.
}
\value{
%%  ~Describe the value returned
%%  If it is a LIST, use
%%  \item{comp1 }{Description of 'comp1'}
%%  \item{comp2 }{Description of 'comp2'}
%% ...
Returns angle-based outlier factor for each observation. A small abof respect the others would indicate
presence of an outlier.
}
\references{
%% ~put references to the literature/web site here ~
[1] Angle-Based Outlier Detection in High-dimensional Data. KDD 2008.  Hans-Peter Kriegel, Matthias Schubert, Arthur Zimek. (http://www.dbs.ifi.lmu.de/Publikationen/Papers/KDD2008.pdf)
}
\author{
%%  ~~who you are~~
Jose Jimenez <jose@jimenezluna.com>
}
\examples{
abod(faithful, method = "randomized", n_sample_size = 5)
abod(faithful, method = "knn", k = 5)

}