check.aleph <- function(object)
{
  if (!is.cardinal(object@n))
    stop("argument 'n' must be a cardinal")
  if (is.finite(object@n))
  {
    if (!is.int(object@n))
      stop("argument 'n' must be a cardinal")
    if (object@n < 0)
      stop("")
  }
  else if (is.transfinite(object@n))
  {
    # ok I guess
  }
}


check.beth <- check.aleph


setValidity("aleph", check.aleph)
setValidity("beth", check.beth)

