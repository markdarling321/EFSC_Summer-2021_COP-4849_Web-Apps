// WAIT UNTIL PAGE IS FINISHED LOADING TO AVOID UNWANTED NULL VALUES
window.addEventListener('load', function(){start();});

// ESTABLISH EVENT LISTENER FOR BUTTON
function start()
{
	// LINK VARIABLE TO BUTTON
	var button = document.getElementById('colorChangeButton');
	console.log(button);

	// LISTEN FOR BUTTON TO BE CLICKED VIA AN EVENT HANDLER
	button.addEventListener('click', changeColors);
}

// CHANGE THE COLORS WHEN BUTTON CLICKED
function changeColors()
{
	// GET LIST OF ELEMENTS WHOSE CLASS = images
    var imgArray = document.getElementsByClassName('images');
    
	// DEBUG: LOG NUMBER OF FOUND ELEMENTS
    console.log(imgArray.length);

	// MODIFY ELEMENTS WHOSE CLASS = images
    for (i = 1; i <= imgArray.length; i++)
    {
        if (i%2 != 0)	// ODD CELL POSITION
		{
			// DEBUG
			console.log('ODD');
			document.getElementsByClassName('images')[i-1].style.border = '25px solid black';

		}
		else			// EVEN CELL POSITION
		{
			// DEBUG
			console.log('EVEN');
			document.getElementsByClassName('images')[i-1].style.border = '25px solid red';

		}
    }
}