% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/reminder.R
\name{remind_me}
\alias{remind_me}
\title{Reminders to Record Your Work}
\usage{
remind_me(after = 60)
}
\arguments{
\item{after}{how long (in minutes) to wait before reminding you to record
your work}
}
\description{
It's easy to get carried away and forget to record your work. changes can send
you a reminder if you have work that needs to be committed, but haven't used
a changes function for some time.
}
\details{
To turn off reminders, just do \code{remind_me(after = 0)}.
  \code{remind_me()} is called by default when you run
  \code{\link{create_repo}()}.
}
