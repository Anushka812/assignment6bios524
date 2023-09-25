#' calculating sides
#'
#' This function calculates the lengths of sides using pythagoras theorem.
#'
#' @param sides input vector
#' @return integer
#' @export

calculate_side <- function(sides) {
  if (length(sides) == 3 || length(sides) == 1) {
    stop("Incorrect Input. Enter only two sides.")
  }
  strYN = readline(prompt = "Did you enter a hypotenuse? ")
  if (strYN == "yes"){
    if (side1 > side2) {
      missing_side <- sqrt(side1^2 - side2^2)
      return(missing_side)
    }
    else {
      missing_side <- sqrt(side2^2 - side1^2)
      return(missing_side)
    }
  }
  else {
    third_side <- sqrt(side1^2 + side2^2)
    return(third_side)
  }
}
