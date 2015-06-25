shiny-incubator
===============

Examples and ideas that don't belong in the core Shiny package and aren't officially supported. 

Original Version to be found at [https://github.com/rstudio/shiny-incubator](https://github.com/rstudio/shiny-incubator)

My fork has some variation that suit my needs, which includes the ```Shiny-examples/``` from the original gist example here [https://gist.github.com/ptoche/8385584](https://gist.github.com/ptoche/8385584), modified to support this version shiny-incubator.

To install, install the `devtools` package if necessary (`install.packages("devtools")`) and run:

```
devtools::install_github('pmarais/shiny-incubator')
```

## Amendments from original

### Adding text to matrixInput

The matrixInput function gets an additional parameter, which allows you to enter text into the table and not only numeric values.

***Usage***

```matrixInput(inputId, label, data, datatype = "character")```

**Arguments**

```datatype```    The type of data the input dataframe will except, defaults now to character.

### Added a testable shiny application 

Available in ```./Shiny_examples/```

