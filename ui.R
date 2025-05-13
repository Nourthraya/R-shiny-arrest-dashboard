library(shiny)
library(shinydashboard)
library(DT)  
dashboardPage(
  
  dashboardHeader(
    title = "Exploring the 1973 arrests data with R and shiny dashboard", 
    titleWidth = 650,
    tags$li(class = "dropdown", 
            tags$a(href = "https://www.linkedin.com/in/nour-thraya-34ba0b1b4/",
                   icon("linkedin"), 
                   "My profile", 
                   target = "_blank"))
  ),
  
  dashboardSidebar(
    sidebarMenu(id = "sidebar",
                menuItem("Dataset", tabName = "data", icon = icon("database")),
                menuItem("Visualization", tabName = "viz", icon = icon("chart-line")),
                menuItem("Map", tabName = "map", icon = icon("map"))
    )
  ),
  
  dashboardBody(
    tabItems(
      
      # First tab item
      tabItem(tabName = "data",
              tabBox(id = "t1", width = 12,
                     tabPanel("About", icon = icon("address-card"),
                              fluidRow(
                                column(width = 8,
                                       tags$img(src = "crime.jpg", width = 600, height = 400),
                                       tags$br(),
                                       tags$a(href = "https://www.google.com", "Photo from Google", target = "_blank")
                                ),
                                column(width = 4,
                                       tags$br(),
                                       tags$p("This dataset comes along with base R.")
                                )
                              )
                     ),
                     tabPanel("Data", icon = icon("address-card"), DTOutput("dataT")),
                     tabPanel("Structure", icon = icon("address-card"), verbatimTextOutput("structure")),
                     tabPanel("Summary stats", icon = icon("address-card"), verbatimTextOutput("summary"))
              )
      ),      
      
      # Second tab item
      tabItem(tabName = "viz",
              tabBox(id = "t2", width = 12,
                     tabPanel("Crime trends by state", value = "trends", h4("Crime trends by state")),
                     tabPanel("Distribution", value = "distro", h4("State distribution")),
                     tabPanel("Correlation matrix", h4("Correlation matrix placeholder")),
                     tabPanel("Relationship among arrest types & Urban population", h4("Relationship placeholder"))
              )
      ),
      
      # Third tab item
      tabItem(tabName = "map",
              box(h1("Map placeholder UI"))
      )
      
    )
  )
)
