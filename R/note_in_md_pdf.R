
#' Title
#'
#' @param input
#'
#' @return
#' @export
#'
#' @examples
#' note_in_md_pdf(input$markdownid)
note_in_md_pdf=function(input){
  rmarkdown:::find_pandoc()
  f1 = tempfile()
  f2 = tempfile()
  writeLines(input, f1)
  rmarkdown::pandoc_convert(f1, to = 'latex', from = 'markdown', output = f2)
  return(knitr::asis_output(readLines(f2, encoding = 'UTF-8')) )
}
