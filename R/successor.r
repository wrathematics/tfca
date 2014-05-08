successor <- function(w)
{
  if (is.cardinal(w))
  {
    if (is.finite(w))
      return( w+1L )
    else
    {
      return( aleph(w@n + 1L) )
    }
  }
}
