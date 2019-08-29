#' @title CADE
#'
#' @description R implementation of Classifier-Adjusted Density Estimation, as
#' described by Friedland, Gentzel, and Jensen in their white paper "Classifier-Adjusted
#' Density Estimation for Anomaly Detection and One-Class Classification"
#'
#' @param df data frame used for training
#' @param classifier classifier used to distinguish between true and false data points, must be one of:
#' \itemize{
#'   \item 'randomForest'
#'   \item 'KNN'
#'   \item 'logistic'
#'   \item 'rpart'
#'   \item 'nb'
#' }
#' @param density.estimate method used to create false data points, must be one of
#' \itemize{
#'   \item 'uniform'
#'   \item 'Gaussian'
#'   \item 'KDE'
#' }
#' @param true.prop proportion of true data points in final training set
#'
#' @export
train.cade = function(df, classifier = "randomForest", density.estimate = "uniform", true.prop = 0.5) {

  checkmate::assert_data_frame(df)
  checkmate::assert_choice(classifier, choices = c('randomForest', 'KNN', 'logistic', 'rpart', 'nb'))
  checkmate::assert_choice(density.estimate, choices = c('uniform', 'Gaussian', 'KDE'))

  # create fake data set
  # - determine type of each feature
  # - create random version of each feature with correct length
  # - join back to true dataset

  # train classifier

  # output trained classifier
}
