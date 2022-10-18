import { getData } from "./modules/dataMiners.js";

(() => {
    console.log('Removed');

    let FavThing = document.querySelector('.fav-things'),
        theTemplate = document.querySelector("#Desc-template").content,
        FavData;

    function buildDesc(data) {
        FavData = data;
        
        const things = Object.keys(data); //Oject.keys creates an array

        things.forEach(thing => {
            debugger;
            //copy the templates's contents
            let panel = theTemplate.cloneNode(true);
           
            //get a refrence to the template's element
            let containers = panel.firstElementChild.children;

            //putting data into template
            let Title = containers[0].querySelector('h1');
            Title.textContent = thing
            
            Title.id = thing;
            Title.addEventListener('click', showLightbox);
            
            //paste the data markup into the lightbox on the page
            FavThing.appendChild(panel);
        })
    }
    function showLightbox () {
        debugger;

        //making id for the data for this function
        let CurentData = FavData[this.id];

        //retrieve the lightbox, chnage its content with data and then show it 
        let lightBox = document.querySelector('.lightbox');

        //selcting element where data has to be pasted on
        lightBox.querySelector('img').src = `images/${CurentData.pic}`;
         



        let nAme = document.querySelector('.Namew'),
            Descrip = document.querySelector('.descripTion'),
            likeness = document.querySelector('.Likes');
        nAme.textContent = CurentData.name;
        likeness.textContent = CurentData.likeness;
        likeness.textContent = CurentData.like;

        Descrip.textContent = CurentData.Desc;
        Descrip.textContent = CurentData.DEsc;

        lightBox.classList.add('show-lightbox');
    }

    getData('./data.json', buildDesc)


})();