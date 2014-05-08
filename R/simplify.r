simplify <- function(w)
{
  consistency()
  
  if (is.transfinite(w))
  {
    if (w@n == 0)
      return( aleph(0L) )
    else if (class(w) == "aleph")
      return( w )
    else if (w@n == 1)
    {
      if (CH)
        return( aleph(1L) )
      else
        return( w )
    }
    else
    {
      if (GCH)
        return( aleph(w@n) )
      else
        return( w )
    }
  }
  if (is.finite(w))
    return( w )
  else
    stop("bad input")
}
