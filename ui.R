library(shiny)
library (shinydashboard)
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
    #sidebarmenu
    
    sidebarMenu( id= "sidebar",
                 
                 #menuitems:
                
                 menuItem("Dataset", tabName="data" , icon= icon("database")),
                 menuItem(text="visualization ", tabName="viz" , icon= icon("chart-line")),
                 menuItem(text=" Map ", tabName="map" , icon= icon("map"))
                 
                 
                 
                 )
    
    
  ),
  dashboardBody(
    
    
    tabItems(
      
      
      #first tab item
      tabItem(tabName="data",
       #tab box
                    tabBox (id="t1",width=12, 
                      tabPanel ("About", icon=icon("adress-card"), h4("tabpanel 1 placeholder")),
                      tabPanel (title="Data", icon=icon("adress-card"), h2("tabpanel 2 placeholder")),
                      tabPanel (title="structures", icon=icon("adress-card"), h2("tabpanel 2 placeholder")),
                      tabPanel (title="summary stats", icon=icon("adress-card"), h2("tabpanel 2 placeholder"))
                      )
            
                ),
      
      #secondtabitem
      
      tabItem(tabName="viz",
              
              tabBox(id = "t2" , width=12,
                     tabPanel (title="crime trends by state",value= "trends",h4("crime trends by state ")),
                     tabPanel (title="Distribution",value= "distro",h4("c state ")),
                     tabPanel (title="correlation matrix",h4("tabPanel placeholder ")),
                     tabPanel (title="Relationship among arrest types & Urban population",h4("tabPanel placeholder "))
                     
                     )
              ),
      #third tab item
      
      tabItem (tabName="map",
               box (h1("placeholder UI"))
               
      )
      
      
      
    )
  )
  
)