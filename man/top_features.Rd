% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/feature_information.r
\name{top_features}
\alias{top_features}
\title{Show top features}
\usage{
top_features(
  tc,
  feature,
  n = 10,
  group_by = NULL,
  group_by_meta = NULL,
  rank_by = c("freq", "chi2"),
  dropNA = T,
  return_long = F
)
}
\arguments{
\item{tc}{a tCorpus}

\item{feature}{The name of the feature}

\item{n}{Return the top n features}

\item{group_by}{A column in the token data to group the top features by. For example, if token data contains part-of-speech tags (pos), then grouping by pos will show the top n feature per part-of-speech tag.}

\item{group_by_meta}{A column in the meta data to group the top features by.}

\item{rank_by}{The method for ranking the terms. Currently supports frequency (default) and the 'Chi2' value for the
relative frequency of a term in a topic compared to the overall corpus.
If return_long is used, the Chi2 score is also returned, but note that there are negative Chi2 scores.
This is used to indicate that the relative frequency of a feature in a group was lower than
the relative frequency in the corpus  (i.e. under-represented).}

\item{dropNA}{if TRUE, drop NA features}

\item{return_long}{if TRUE, results will be returned in a long format that contains more information.}
}
\value{
a data.frame
}
\description{
Show top features
}
\examples{
tc = tokens_to_tcorpus(corenlp_tokens, token_id_col = 'id')

top_features(tc, 'lemma')
top_features(tc, 'lemma', group_by = 'NER', group_by_meta='doc_id')
}
