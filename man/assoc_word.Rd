% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/FindWordAssociations.R
\name{assoc_word}
\alias{assoc_word}
\title{Find associations in BBC News article}
\usage{
assoc_word(url_end, word_entry, corr_entry)
}
\arguments{
\item{url_end}{a character string, an ending part of BBC News particular atricle URL (everything after https://www.bbc.com/news/).
For example, article URL is "https://www.bbc.com/news/world-us-canada-51381625".
Only "world-us-canada-51381625" should be pasted}

\item{word_entry}{character string, one input word to analyze associations (terms which correlate) with it}

\item{corr_entry}{numeric, correlation value, should be between 0 and 1, otherwise user gets a message to run the function again
(recommended value is between 0.3 and 0.6)}
}
\value{
assoc - a dataframe with two columns: terms correlated with word input and correlation value in decreasing order
}
\description{
Find terms associated with the input word with at least input correlation value.
             Build a dataframe with terms and correlation values in decreasing order
}
\details{
It's recommended to check the dataframe with the most frequent term (run function analyze_text)
         to know which terms might be relevant for the analysis.
}
\note{
Please, check that URL (url_end) exists before running the function,
      otherwise you will get an "Error in open.connection(x, "rb") : HTTP error 404".
      Please, insert URLs of the articles in English only. Only for BBC News, not BBC Sports , Travel, Worklife, etc.
}
\examples{
assoc_word("world-asia-51427301", "fire", 0.3)
assoc_word("world-us-canada-51408704", "trump", 0.5)
}
