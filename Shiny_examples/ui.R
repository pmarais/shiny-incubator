# ui.R

library("shiny")
library("shinyIncubator")

# initialize data with colnames
df <- data.frame(matrix(c("0","0"), 1, 2))
colnames(df) <- c("Input1", "Input2")

shinyUI(
  pageWithSidebar(

    headerPanel('matrixInput from shinyIncubator package - Demo')
    ,
    sidebarPanel(

      # customize display settings
      tags$head(
        tags$style(type = "text/css"
          , "table.data { width: 300px; }"
          , ".well {width: 80%; background-color: NULL; border: 0px solid rgb(255, 255, 255); box-shadow: 0px 0px 0px rgb(255, 255, 255) inset;}"
          , ".tableinput .hide {display: table-header-group; color: black; align-items: center; text-align: center; align-self: center;}"
          , ".tableinput-container {width: 100%; text-align: center;}"
          , ".tableinput-buttons {margin: 10px;}"
          , ".data {background-color: rgb(255,255,255);}"
          , ".table th, .table td {text-align: center;}"

        )
      )
      ,
      wellPanel(
        h4("Input Table")
        ,
        matrixInput(inputId = 'data', label = 'Add/Remove Rows', data = df,datatype = "numeric")
        ,
        helpText("This table accepts user input into each cell. The number of rows may be controlled by pressing the +/- buttons.")
      )
    )
    ,
    mainPanel(
      wellPanel(
        wellPanel(
          h4("Output Table")
          ,
          tableOutput(outputId = 'table')
          ,
          helpText("This table displays the input matrix together with the product of the rows of the input matrix")
        )
      )
    )
  )
)
