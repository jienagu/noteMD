

# noteMD

Print text from shiny UI (supports **Markdown** syntax) to pdf or word report!

Live Demo of Shiny App using `noteMD` R package: https://appforiarteam.shinyapps.io/noteMD_shiny_demo/ 

Code of the above live demo Shiny App (Welcome to download): https://github.com/jienagu/noteMD_shiny_app 

## Hexagon logo: 
<img src="noteMD_logo.png"  width="245px">

## Acknowledgement
Beef Cattle Institute at Kansas State University: https://ksubci.org/ 

Special thanks to Yihui Xie (from RStudio.LLC), Dr. Brad White and Dr. David Amrine

## Install
`install.packages("noteMD")`

Install from GitHub :  
`devtools::install_github("jienagu/noteMD")`

![](demo.gif)

Basically, This is how to use `noteMD` to insert a text box in your Shiny UI (supports Markdown syntax) and generate `pdf` or `word` report along with the text added in the text box. 

* Step 1: create a textarea in Shiny UI :
`                  tags$textarea(
                    "Please using any **markdown** syntax!",
                    id    = 'markdowninput',
                    rows  = 3,
                    style = 'width:100%;')`, here we know the id of this tag is `markdowninput` (you can name whatever you want)

* Step 2: If you want to have a preview in shiny app like the demo, use    `output$htmlmarkdown = reactive({note_in_html(input$markdowninput) }) ` , then `htmlOutput('htmlmarkdown')` in shiny ui

* Step 3: If your report is in pdf, put `note_in_md_pdf(input$markdowninput)` in an R chunk (whereever you want to insert the text); if your report is in word, put `note_in_md_word(input$markdowninput)` in an R chunk! 

Enjoy! 
        
