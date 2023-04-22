function pullDown() {

  const pullDownButton = document.getElementById("lists")
  const pullDownParents = document.getElementById("wrapper_list")
  
  pullDownButton.addEventListener('mouseover',function() {
    this.setAttribute("style", "color:grey;")
  })
  
  pullDownButton.addEventListener('mouseout',function() {
    this.removeAttribute("style")
  })
  
  pullDownButton.addEventListener('click', function() {
    
    if (pullDownParents.getAttribute("style") == "display:block;") {
      pullDownParents.removeAttribute("style")
    }else {
      pullDownParents.setAttribute("style", "display:block;")
    }
  })
 }

window.addEventListener('load', pullDown)