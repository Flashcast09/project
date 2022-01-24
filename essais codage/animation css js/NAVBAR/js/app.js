// Récupérer le sélecteur .nav-toggle ainsi que .links 

// Ecouter l'évènement 'click' sur .nav-toogle

  // si .links a pour class .show-links
    // la supprimer
  // sinon
    // l'ajouter

  // Vous pouvez arriver au même résultat avec classList.toggle

  const toggle = document.querySelector(".nav-toggle");
  const links = document.querySelector(".links");

  toggle.addEventListener("click", function(){
    //links.classList.toggle("show-links"); remplace add et remove
  if
  
  (links.classList.contains("show-links")){

  

    links.classList.remove("show-links");

  }else{

    links.classList.add("show-links");
  }

  
    
  });