#' Represents a single candidate, along with the number of delegates they've
#' won, and the number of delegates they need to win, as well as their party.
#'
#' @note No validation function is visible here because an initializer function
#' was used instead, and validation functions are not executed if an initializer is
#' present.
#' @seealso initialize.Candidate
#'
#' @slot name character. The candidate's name.
#' @slot delegatesWon numeric. The number of delegates that the candidate has won.
#' @slot party character. The candidate's party (either 'Republican' or 'Democratic').
#' @slot delegatesNeeded numeric. The number of delegates the candidate needs
#	 - determined automatically by party.
#'
Candidate = setClass("Candidate",
		slots = c(name="character", delegatesWon="numeric", party="character", delegatesNeeded="numeric")
)

#' Computes the number of delegates needed by a candidate
#' of the specified party.
#'
#' @param party The party to check.
#'
#' @return The number of delegates necessary for a member of
#' 	the specified party to secure a nomination.
delegates.needed = function(party) {
	switch (party,
			"Democratic" = return(2383),
			"Republican" = return (1237),
			stop("Invalid Party Specified.")
	)
}

#' A wrapper function for \code{Candidate}'s constructor,
#' which allows consumers to ignore the automatic generation
#' of the delegatesNeeded value.
#'
#' @param name The candidate's name.
#' @param delegatesWon The number of delegates won by the candidate.
#' @param party The candidate's party.
#'
#' @return A new Candidate object, initialized according to the provided values.
createCandidate = function(name, delegatesWon, party) {
	return(Candidate(name, delegatesWon, party))
}
