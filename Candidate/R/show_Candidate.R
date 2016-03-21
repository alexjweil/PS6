#' Applies the method `show` to Candidate object.
#' The equivalent of calling `print`.
#' @seealso print.Candidate
#' @param object Candidate. The candidate to show.
setMethod("show",
    signature(object = "Candidate"),
    function (object) {
       print(object)
    }
)
