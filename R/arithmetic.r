# -----------------------------------------------------------
# 
# -----------------------------------------------------------

setMethod("+", signature(e1="aleph", e2="numeric"),
  function(e1, e2) 
    return( e1 )
)

setMethod("+", signature(e1="numeric", e2="aleph"),
  function(e1, e2) 
    return( e2 )
)

setMethod("*", signature(e1="numeric", e2="aleph"),
  function(e1, e2)
  {
    if (e1 != 0)
      return( e2 )
    else
      return( 0L )
  }
)

setMethod("*", signature(e1="aleph", e2="numeric"),
  function(e1, e2) 
    return( e2*e1 )
)


# -----------------------------------------------------------
# 
# -----------------------------------------------------------

### Assumes AC
setMethod("+", signature(e1="aleph", e2="aleph"),
  function(e1, e2)
    return( max(e1, e2) )
)

setMethod("*", signature(e1="aleph", e2="aleph"),
  function(e1, e2)
    return( max(e1, e2) )
)




