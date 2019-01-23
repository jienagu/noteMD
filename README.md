# noteMD
Print text from shiny ui (support markdown syntax) to pdf or word report!
This is a live demo shiny app using noteMD R package: https://appforiarteam.shinyapps.io/noteMD_shiny_demo/ 
Code of this live demo shiny app is here (welcome to download): https://github.com/jienagu/noteMD_shiny_app 

Install from GitHub :  
`devtools::install_github("jienagu/noteMD")`

![](demo.gif)

Basically, this is how to use `noteMD` to insert a text box in your shiny ui (support markdown syntax) to pdf or word report!
* Step 1
                      tags$textarea(
                    "Please using any **markdown** syntax!",
                    id    = 'markdowninput',
                    rows  = 3,
                    style = 'width:100%;')
