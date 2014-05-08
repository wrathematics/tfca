axioms <- function(.)
{
  data.frame(AC=AC, CH=CH, GCH=GCH)
}

consistency <- function(.)
{
  if (GCH)
  {
    if (!AC)
      stop("Axioms are inconsistent; GCH ==> AC")
    if (!CH)
      stop("Axioms are inconsistent; GCH ==> CH")
  }
  
  invisible()
}
