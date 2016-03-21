
#' Computes the proportion of whatever the provided object measures
#' that is still necessary.
#'
#' @param object. The object to calculate against.
setGeneric("propNeeded", function(object) {
	standardGeneric("propNeeded")
})

#' Computes the proportion of delegates a candidate still must
#' win to secure a nomination.
#'
#' @param object Candidate. The candidate to calculate against.
#'
#' @return The proportion of delegates the provided candidate must win.
setMethod("propNeeded",
		  signature(object = "Candidate"),
		  function (object) {
		  	return(1 - object@delegatesWon / object@delegatesNeeded)
		  }
)


