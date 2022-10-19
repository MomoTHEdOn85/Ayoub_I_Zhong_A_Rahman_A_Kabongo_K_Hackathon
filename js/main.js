import { getData } from "./modules/dataMiners.js";

const hams = document.querySelector(".ham");
const navMenu = document.querySelector(".nav-menu");

hams.addEventListener("click", mobileMenu);

function mobileMenu() {
    hams.classList.toggle("active");
    navMenu.classList.toggle("active");
}

const navLink = document.querySelectorAll(".nav-link");

navLink.forEach(n => n.addEventListener("click", closeMenu));

function closeMenu() {
    hams.classList.remove("active");
    navMenu.classList.remove("active");
}


(() => {
    console.log('Removed');

    let FThing = document.querySelector('.feat-things'),
        theTemplate = document.querySelector("#feature").content,
        FeatData;

    function buildDesc(data) {
        FeatData = data;
        
        const things = Object.keys(data); //Oject.keys creates an array

        things.forEach(thing => {
            debugger;
            //copy the templates's contents
            let panel = theTemplate.cloneNode(true);
           
            //get a refrence to the template's element
            let containers = panel.firstElementChild.children;

            //putting data into template
            let Title = containers[0].querySelector('h5');
            Title.textContent = thing
            
            Title.id = thing;
            Title.addEventListener('click', showLightbox);
            
            //paste the data markup into the lightbox on the page
            FThing.appendChild(panel);
        })
    }
    function showLightbox () {
        debugger;

        //making id for the data for this function
        let CurentData = FeatData[this.id];

        //retrieve the lightbox, chnage its content with data and then show it 
        let lightBox = document.querySelector('.lightbox');

        //selcting element where data has to be pasted on
        lightBox.querySelector('img').src = `images/${CurentData.pic}`;
         

        let d1 = document.querySelector('.des1'),
            d2 = document.querySelector('.des2'),
            d3 = document.querySelector('.des3'),
            d4 = document.querySelector('.des4'),
            d5 = document.querySelector('.des5'),
            d6 = document.querySelector('.des6'),
            d7 = document.querySelector('.des7'),
            d8 = document.querySelector('.des8'),
            d9 = document.querySelector('.des9'),
            d10 = document.querySelector('.des10'),
            d11 = document.querySelector('.des11'),
            d12 = document.querySelector('.des12'),
            d13 = document.querySelector('.des13'),
            d14 = document.querySelector('.des14'),
            d15 = document.querySelector('.des15'),
            d16 = document.querySelector('.des16'),
            d17 = document.querySelector('.des17');

        d1.textContent = CurentData.camera;
        d2.textContent = CurentData.mic;
        d3.textContent = CurentData.history;

        d4.textContent = CurentData.hvac;
        d5.textContent = CurentData.mode;
        d6.textContent = CurentData.tracking;
        d7.textContent = CurentData.humidity;
        d8.textContent = CurentData.weather;
        d9.textContent = CurentData.schedule;
        d10.textContent = CurentData.interface;

        d11.textContent = CurentData.temprature;
        d12.textContent = CurentData.cameras;
        d13.textContent = CurentData.mics;

        d14.textContent = CurentData.languages;
        d15.textContent = CurentData.region;
        d16.textContent = CurentData.appearance;
        d17.textContent = CurentData.account;

        lightBox.classList.add('show-lightbox');
    }

    getData('./data.json', buildDesc)


})();