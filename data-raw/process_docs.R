################################################################################
#
# Load libraries to use for data extraction from PDF documents
#
################################################################################

library(pdftools)
library(tabulizer)
library(tm)
library(stringr)
library(tidytext)
library(dplyr)

################################################################################
#
# First document
#
################################################################################

x <- pdf_text(pdf = "data-raw/docs/Roberts, Khattri - 2012 - Designing a results framework for achieving results a how-to guide.pdf")
x <- str_split(x, pattern = "\n")

################################################################################
#
# Remove unneeded pages
#
################################################################################
#
# Remove page 1
#
x[1] <- NULL
#
# Remove page 2
#
x[1] <- NULL
#
# Remove page 4
#
x[2] <- NULL
#
# Remove page 5
#
x[2] <- NULL
#
# Remove page 6
#
x[2] <- NULL


world_bank_results_framework_2012 <- NULL

for(i in 1:length(x)) {
  temp <- x[[i]]
  temp <- temp[2:length(temp)]
  world_bank_results_framework_2012 <- c(world_bank_results_framework_2012, temp)
}

world_bank_results_framework_2012 <- data_frame(linenumber = 1:length(world_bank_results_framework_2012),
                                                text = world_bank_results_framework_2012)

devtools::use_data(world_bank_results_framework_2012, overwrite = TRUE)


################################################################################
#
# Second document
#
################################################################################

x <- pdf_text(pdf = "data-raw/docs/DFID_ToC_Review_VogelV7.pdf")
x <- str_split(x, pattern = "\n")

x[c(2:5, 66:length(x))] <- NULL

vogel_toc_review_2012 <- NULL

for(i in 1:length(x)) {
  temp <- x[[i]]
  vogel_toc_review_2012 <- c(vogel_toc_review_2012, temp)
}

vogel_toc_review_2012 <- data_frame(linenumber = 1:length(vogel_toc_review_2012),
                                    text = vogel_toc_review_2012)

devtools::use_data(vogel_toc_review_2012, overwrite = TRUE)


################################################################################
#
# Third document
#
################################################################################

x <- pdf_text(pdf = "data-raw/docs/springdoc1.pdf")
x <- str_split(x, pattern = "\n")

x[c(2:3, 25:26)] <- NULL

spring_brief_1 <- NULL

for(i in 1:length(x)) {
  temp <- x[[i]]
  spring_brief_1 <- c(spring_brief_1, temp)
}

spring_brief_1 <- data_frame(linenumber = 1:length(spring_brief_1),
                             text = spring_brief_1)

devtools::use_data(spring_brief_1, overwrite = TRUE)


################################################################################
#
# Fourth document
#
################################################################################

x <- pdf_text(pdf = "data-raw/docs/springdoc2.pdf")
x <- str_split(x, pattern = "\n")

x[2:3] <- NULL

spring_brief_2 <- NULL

for(i in 1:length(x)) {
  temp <- x[[i]]
  spring_brief_2 <- c(spring_brief_2, temp)
}

spring_brief_2 <- data_frame(linenumber = 1:length(spring_brief_2),
                             text = spring_brief_2)

devtools::use_data(spring_brief_2, overwrite = TRUE)


################################################################################
#
# Fifth document
#
################################################################################

x <- pdf_text(pdf = "data-raw/docs/springdoc3.pdf")
x <- str_split(x, pattern = "\n")

x[2] <- NULL

spring_brief_3 <- NULL

for(i in 1:length(x)) {
  temp <- x[[i]]
  spring_brief_3 <- c(spring_brief_3, temp)
}

spring_brief_3 <- data_frame(linenumber = 1:length(spring_brief_3),
                             text = spring_brief_3)

devtools::use_data(spring_brief_3, overwrite = TRUE)


################################################################################
#
# Sixth document
#
################################################################################

x <- pdf_text(pdf = "data-raw/docs/springdoc4.pdf")
x <- str_split(x, pattern = "\n")

x[2:3] <- NULL

spring_brief_4 <- NULL

for(i in 1:length(x)) {
  temp <- x[[i]]
  spring_brief_4 <- c(spring_brief_4, temp)
}

spring_brief_4 <- data_frame(linenumber = 1:length(spring_brief_4),
                             text = spring_brief_4)

devtools::use_data(spring_brief_4, overwrite = TRUE)
