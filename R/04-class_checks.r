is.aleph <- function(w) return( class(w) == "aleph" )
is.beth <- function(w) return( class(w) == "beth" )

is.transfinite <- function(w)
{
  classes <- c("transfinite", "aleph", "beth")
  
  return( class(w) %in% classes )
}


setMethod("is.finite", signature(x="transfinite"),
  function(x)
    return( FALSE )
)

setMethod("is.infinite", signature(x="transfinite"),
  function(x)
    return( TRUE )
)

is.countable <- function(w)
{
  return( w <= aleph(0) )
}

is.cardinal <- function(w)
{
  return( is.finite(w) || is.transfinite(w) )
}
