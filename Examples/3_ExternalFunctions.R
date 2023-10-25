#' @title 3_ExternalFunctions.R
#' @description Adding functions to an external R file
#' @author NMCG
#' @bugs None
#' @keywords functions, Roxygen, comments

# LinearContrastStretch ------------------------------------------------------------------

#' LinearContrastStretch
#' @param value Numeric
#' @param min_val Numeric
#' @param max_val Numeric
#' @param new_min Numeric 
#' @param new_max Numeric   
#' @return Numeric value stretched to new user-specficied range (new_min->new_max)
LinearContrastStretch <- function(value, min_val, max_val, new_min, new_max) {
  stretched_value <- ((value - min_val) / (max_val - min_val) * (new_max - new_min)) + new_min
}

# LogAbs ------------------------------------------------------------------

#' LogAbs
#' @param x Numeric
#' @param base Numeric
#' @return Numeric absolute value of x to the specified base
LogAbs <- function(x, base){  
  #note - if i want to use return keyword I need to wrap the expression in ()
  return (log(abs(x), base))
}



