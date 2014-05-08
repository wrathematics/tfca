setClass("finite", representation(n="numeric", "VIRTUAL"))

setClass("transfinite", representation(n="numeric", "VIRTUAL"))
setClass(Class="aleph", contains=c("transfinite", "numeric"))
setClass(Class="beth", contains=c("transfinite", "numeric"))

setClassUnion("cardinal", c("finite", "transfinite"))

