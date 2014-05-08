# -----------------------------------------------------------
# transfinite/transfinite
# -----------------------------------------------------------

setMethod("==", signature(e1="transfinite", e2="numeric"),
  function(e1, e2)
    return( FALSE )
)

setMethod("!=", signature(e1="transfinite", e2="numeric"),
  function(e1, e2)
    return( TRUE )
)

setMethod("==", signature(e1="transfinite", e2="transfinite"),
  function(e1, e2)
  {
    e1.s <- simplify(e1)
    e2.s <- simplify(e2)
    
    return( class(e1.s) == class(e2.s) && e1.s@n == e2.s@n )
  }
)

setMethod("!=", signature(e1="transfinite", e2="transfinite"),
  function(e1, e2)
    return( !(e1==e2) )
)

# aleph <= beth for all n>1
setMethod("<", signature(e1="transfinite", e2="transfinite"),
  function(e1, e2)
  {
    consistency()
    
    if (class(e1) == class(e2))
      return( e1@n < e2@n )
    else
    {
      if (e1@n == e2@n)
      {
        if (e1@n == 0)
          return( TRUE )
        else 
          {}
      }
    }
  }
)

setMethod(">", signature(e1="transfinite", e2="transfinite"),
  function(e1, e2)
    return( e2 < e1 )
)

setMethod("<=", signature(e1="transfinite", e2="transfinite"),
  function(e1, e2)
    return( e1 == e2 || e1 < e2 )
)

setMethod(">=", signature(e1="transfinite", e2="transfinite"),
  function(e1, e2)
    return( e2 <= e1 )
)


# -----------------------------------------------------------
# transfinite/numeric
# -----------------------------------------------------------

setMethod("<", signature(e1="transfinite", e2="numeric"),
  function(e1, e2)
    return( FALSE )
)

setMethod("<=", signature(e1="transfinite", e2="numeric"),
  function(e1, e2)
    return( FALSE )
)

setMethod("<", signature(e1="numeric", e2="transfinite"),
  function(e1, e2)
    return( TRUE )
)

setMethod("<=", signature(e1="numeric", e2="transfinite"),
  function(e1, e2)
    return( TRUE )
)


setMethod(">", signature(e1="transfinite", e2="numeric"),
  function(e1, e2)
    return( TRUE )
)

setMethod(">=", signature(e1="transfinite", e2="numeric"),
  function(e1, e2)
    return( TRUE )
)

setMethod(">", signature(e1="numeric", e2="transfinite"),
  function(e1, e2)
    return( FALSE )
)

setMethod(">=", signature(e1="numeric", e2="transfinite"),
  function(e1, e2)
    return( FALSE )
)


# -----------------------------------------------------------
# 
# -----------------------------------------------------------

setMethod("max", signature(x="transfinite"),
  function(x, ...)
  {
    best <- x
    
    tmp <- list(...)
    for (w in tmp)
    {
      if (w > best)
        best <- w
    }
    
    return( best )
  }
)



setMethod("min", signature(x="transfinite"),
  function(x, ...)
  {
    best <- x
    
    tmp <- list(...)
    for (w in tmp)
    {
      if (w < best)
        best <- w
    }
    
    return( best )
  }
)


