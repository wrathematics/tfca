cardstr <- function(x)
{
  x <- simplify(x)
  
  if (is.aleph(x))
    card <- "aleph_"
  else
    card <- "beth_"
  
  return( card )
}

setMethod("print", signature(x="transfinite"),
  function(x)
  {
    n <- x@n
    str <- character(0)
    while (is.transfinite(n))
    {
      card <- cardstr(x)
      
      str <- paste(str, card, sep="")
      
      x <- x@n
      n <- x@n
    }
    
    print(paste(str, cardstr(x), n, "\n", sep=""))
  }
)



setMethod("show", signature(object="aleph"),
  function(object)
    cat(paste(print(object), "\n"))
)

