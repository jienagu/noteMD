#' Title
#'
#' @param input
#'
#' @return
#' @export
#'
#' @examples
#' note_in_md_word(input$markdownid)
note_in_md_word=function(input){
  f1 = tempfile()
  writeLines(input, f1)
  return(knitr::asis_output(readLines(f1, encoding = 'UTF-8')) )
}

