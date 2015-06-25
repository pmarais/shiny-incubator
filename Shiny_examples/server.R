# server.R

library("shiny")
library("shinyIncubator")

shinyServer(
  function(input, output) {
    # table of outputs
    output$table <- renderTable({
        res <- input$data
        colnames(res) <- c("Input 1","Input 2")
        res
      }
      , include.rownames = FALSE
      , include.colnames = TRUE
      , align = "ccc"
      , digits = 2
      , sanitize.text.function = function(x) x
    )
  }
)
