import { getData } from "./modules/dataMiners.js";
(() => {
  console.log('Removed');

  let SpecDe = document.querySelector('.Spec-detail'),
      theSTemplate = document.querySelector("#specs").content,
      SpecData;

  function buildSpec(data) {
      SpecData = data;
      
      const thins = Object.keys(data); //Oject.keys creates an array

      thins.forEach(thin => {
          debugger;
          //copy the templates's contents
          let panels = theSTemplate.cloneNode(true);
         
          //get a refrence to the template's element
          let container = panels.firstElementChild.children;

          //putting data into template
          container[0].textContent = data[thins].name;
          container[1].textContent = data[thins].color;
          container[2].textContent = data[thins].dimensions;
          container[3].textContent = data[thins].compatibility;
          container[4].textContent = data[thins].display;
          container[5].textContent = data[thins].connectivity;
          container[6].textContent = data[thins].warranty;
          container[7].textContent = data[thins].ratings;
          
          
          //paste the data markup into the lightbox on the page
          SpecDe.appendChild(panels);
      })
  }
 
  getData('./specs.json', buildSpec)

})();