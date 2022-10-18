function getData (targetURL, callback) {
  console.log('Thrown from data Miners modules');

  fetch(targetURL)//retrieve data from this file and source
      .then(resourse =>resourse.json())//res means 'response' -> the data we retrieved
      //res.json() is a built-in method that turns the JSON into a plain object
       .then(data =>{
          console.log(data);

          //build out the fav-things content on the page
          //callback is a ref to the buildDesc function in the main JS file
          callback(data);
        })

    //catch the error event, in case anything breaks
    //and then report it to the devloper
    .catch(error => console.error(error));


}
export { getData };