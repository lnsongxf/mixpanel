.onLoad = function(libname, pkgname) {
}

.onAttach = function(libname, pkgname) {
  packageStartupMessage("Simple wrapper around MP API. \n Tirthankar Chakravarty (2016)")
  # source(system.file(".API_SECRET.R", package = "mixpanel"))
}
