var IMAGES_DIR = `/Users/tombubul/Desktop/__SCREENSHOTS/`
var SELECTIONS = 5

function ready() { 

  var images = document.getElementById( `images` )

  selection = select( SELECTIONS )

  images.innerHTML = selection
}

function select( selections ) {

  var range = images_list.length
  var selection = ""

  for( count = 0; count < selections; count++ )
  {

    var index = Math.floor( Math.random() * range )
    selection += `<a href="` + IMAGES_DIR + images_list[index] + `"><img src="` + IMAGES_DIR + images_list[index] + `"></a>`
  }

  return selection
}

var images_list = [
  /* run the script to get this filled out */
]
