#' Initializes a Candidate object according to the provided values,
#' validating that the candidate's party is either 'Republican' or 'Democratic'.
#' Used instead of a validation function because it accomplishes the tasks
#' of initialization and validation simultaneously.
#'
#' Automatically generates the value of delegatesNeeded.
#'
#' @param .Object Candidate. The candidate to initialize.
#' @return A new Candidate with the provided values.
setMethod("initialize", signature(.Object = "Candidate"),
		  function(.Object, name, delegatesWon, party, ...) {
		  	if (!(party %in% c("Democratic", "Republican"))) {
		  		stop("Party must be either 'Democratic' or 'Republican'")
		  	}
		  	.Object@name = name
		  	.Object@party = party
		  	.Object@delegatesWon = delegatesWon
		  	.Object@delegatesNeeded = delegates.needed(party, delegatesWon)
		  	return(.Object)
		  }
)
