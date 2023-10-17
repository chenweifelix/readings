
#color and size 
colored <- function(x, color = "gold", size = "none", bold = T, ita = F, u = F) {
  if (is.numeric(size)){size = stringr::str_c(as.character(size), "pt")}
  if (bold == T){bold = "bold"}
  if (ita == T){ita = "italic"}
  if (u == T){u = "underline"}
  if (knitr::is_latex_output()) {
    sprintf("\\textbf{\\textcolor{%s}{%s}}", color, x)
  } else if (knitr::is_html_output()) {
    sprintf("<span style='color: %s; font-size: %s; font-weight: %s; font-style: %s; text-decoration-line: %s'>%s</span>", color,size,bold, ita, u, x)
  } else x
  
}



#usage: `r colored("Hi", "red")`

#Insert arrows 
arr = function(x){
  if (stringr::str_starts(x, "r")){
    x = "&rarr;"
  }else if(stringr::str_starts(x, "l")){
    x = "&larr;"
  }else if(stringr::str_starts(x, "u")){
    x = "&uarr;"
  }else if(stringr::str_starts(x, "d")){
    x = "&darr;"}
  sprintf("<span>%s</span>", x)}

#Add sidenote 
side_note = function(text){
  sprintf("<div class='sidenote'>%s</div>", text)
}


#