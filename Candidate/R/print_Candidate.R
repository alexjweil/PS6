#' Prints a Candidate object, by printing all its fields,
#' in the order: name, party, delegatesWon, delegatesNeeded.
#'
#' @param x Candidate. The Candidate to print.
setMethod("print",
    signature(x = "Candidate"),
    function (x, ...) {
        print("Candidate:")
    	print(paste("Name:", x@name))
    	print(paste("Party:", x@party))
    	print(paste("Delegates Won:", x@delegatesWon))
    	print(paste("Delegates Needed:", x@delegatesNeeded))
    }
)
