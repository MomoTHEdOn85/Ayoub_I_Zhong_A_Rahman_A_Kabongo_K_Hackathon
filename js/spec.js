import { getData } from "./modules/dataMiners.js";
(() => {
  console.log('Removed');

  let SpecDe = document.querySelector('.Spec-detail'),
      theSTemplate = document.querySelector("#specs").content,
      SpecData;

  function buildSpec(dataa) {
      SpecData = dataa;
      
      const thins = Object.keys(dataa); //Oject.keys creates an array

      thins.forEach(thin => {
          debugger;
          //copy the templates's contents
          let panels = theSTemplate.cloneNode(true);
         
          //get a refrence to the template's element
          let container = panels.firstElementChild.children;

          //putting data into template
          container[0].textContent = dataa[thin].name;
          container[1].textContent = dataa[thin].color;
          container[2].textContent = dataa[thin].dimensions;
          container[3].textContent = dataa[thin].compatibility;
          container[4].textContent = dataa[thin].display;
          container[5].textContent = dataa[thin].connectivity;
          container[6].textContent = dataa[thin].warranty;
         
          //paste the data markup into the lightbox on the page
          SpecDe.appendChild(panels);
      })
  }
 
  getData('./specs.json', buildSpec)

})();