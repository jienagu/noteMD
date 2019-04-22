#' Title
#'
#' @param input
#'
#' @return
#' @export
#'
#' @examples
#' note_in_html(input$markdownid)
note_in_html=function(input){
  rmarkdown:::find_pandoc()
  f1 = tempfile()
  f2 = tempfile()

  f1 <- tempfile()
  writeLines(input, f1, useBytes = T)

  ## convert input to html
  rmarkdown::pandoc_convert(f1, to = 'html', from = 'markdown', output = f2)
  ## read results
  res <-readLines(f2, encoding = 'UTF-8')
  paste(res, collapse = '\n')
}
