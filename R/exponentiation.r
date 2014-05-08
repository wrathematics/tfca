# -----------------------------------------------------------
# 
# -----------------------------------------------------------

setMethod("^", signature(e1="aleph", e2="numeric"),
  function(e1, e2)
  {
    if (e2 == 0)
      return( 1L )
    else
      return( e1 )
  }
)

setMethod("^", signature(e1="numeric", e2="aleph"),
  function(e1, e2)
  {
    if (e1 == 1)
      return( 1L )
    
    
    return( e2 )
  }
)


# -----------------------------------------------------------
# 
# -----------------------------------------------------------

setMethod("^", signature(e1="aleph", e2="aleph"),
  function(e1, e2)
  {
    if (e1 < e2)
      return( 2L^e2 )
  }
)











