% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/Candidate.R
\docType{class}
\name{Candidate-class}
\alias{Candidate}
\alias{Candidate-class}
\title{Represents a single candidate, along with the number of delegates they've
won, and the number of delegates they need to win, as well as their party.}
\description{
Represents a single candidate, along with the number of delegates they've
won, and the number of delegates they need to win, as well as their party.
}
\section{Slots}{

\describe{
\item{\code{name}}{character. The candidate's name.}

\item{\code{delegatesWon}}{numeric. The number of delegates that the candidate has won.}

\item{\code{party}}{character. The candidate's party (either 'Republican' or 'Democratic').}

\item{\code{delegatesNeeded}}{numeric. The number of delegates the candidate needs}
}}
\note{
No validation function is visible here because an initializer function
was used instead, and validation functions are not executed if an initializer is
present.
}
\seealso{
initialize.Candidate
}

