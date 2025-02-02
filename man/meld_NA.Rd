% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/meld_NA.R
\name{meld_NA}
\alias{meld_NA}
\title{MELD-Na (UNOS/OPTN) Score Calculator}
\usage{
meld_NA(my_data)
}
\arguments{
\item{my_data}{A data frame containing columns 'Creatinine', 'Bilirubin', 'INR', 'Hemodialysis', and 'Sodium'.}
}
\value{
A modified data frame (my_data) with the calculated MELD-Na score and risk classification of three-month mortality. Returns NA for cases with missing values.
}
\description{
Calculates the MELD-Na score for patients greater than or equal to 12 years, incorporating serum sodium levels. This score is used for assessing the severity of end-stage liver disease for transplant planning. Note that since January 2016, the MELD score calculation includes the serum sodium level.
For more information, visit \url{https://www.mdcalc.com/calc/78/meld-score-model-end-stage-liver-disease-12-older#evidence}.
}
\details{
The function calculates the MELD-Na score based on the following parameters:
\itemize{
\item \code{Bilirubin:} Numeric value representing the bilirubin level (mg/dL).
\item \code{INR:} Numeric value representing the International Normalized Ratio (INR).
\item \code{Creatinine:} Numeric value representing the creatinine level (mg/dL).
\item \code{Hemodialysis:} Logical value indicating if the patient is on hemodialysis (0 = No, 1 = Yes).
\item \code{Sodium:} Numeric value representing the serum sodium level (mEq/L).
}
}
\examples{
my_data <- data.frame(
  Creatinine = c(1.2, 2.5, 3),
  Bilirubin = c(0.5, 1.0, 2.1),
  INR = c(1.1, 1.5, 1.8),
  Sodium = c(130, 140, 125),
  Hemodialysis = c(0, 1, 0)
)
meld_NA(my_data)


}
\references{
Kamath et al. (2001) \url{doi:10.1053/jhep.2001.22172}
}
