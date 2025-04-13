#We use r-ticulate and use it to install packages in the given file.
library(reticulate)
py_install("pandas")

#https://rstudio.r-universe.dev/articles/reticulate/package.html
help(package = "reticulate")

#We can create python objects in R?
R_Object <- c(1,2)
Pyton_Object <- r_to_py(R_Object)

#We can do basic analysis on python objects.
reticulate::py_bool(Pyton_Object)
reticulate::py_str(Pyton_Object)
reticulate::py_len(Pyton_Object)

#and go back
R_Object_2 <- py_to_r(Pyton_Object)
