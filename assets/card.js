const getParameter = (match, url = window.location.href) => {

	const URLSeparator   = '%26',
	      paramSeparator = '%3D'

	// split URL into array with each key-value pair
	// return the key-value pair matching the searched parameter
	const result = url.split(URLSeparator).find(element => {
		if (element.includes(match)) return true
	})

	// only return the parameter value
	return result.split(paramSeparator)[1]

}



const androidToRGBA = color => {

	const colorArray = []

	// split android color string into it's R,G,B and A components
	for (let i = 0; i < 4; i++) {
		colorArray.push(color % 256)
		color >>>= 8
	}

	// remove alpha value from the original array
	// and store it as it's own variable
	const alpha = colorArray.pop() / 255

	// return the color in RGBA format
	return `rgba(${colorArray.reverse()},${alpha})`.replace('-', '')

}



const getTextColor = backgroundColor => {

	const rgba = backgroundColor.replace('rgba(', '').replace(')', '')

	const r = rgba.split(',')[0],
	      g = rgba.split(',')[1],
	      b = rgba.split(',')[2]

	// get YIQ ratio
	var yiq = ((r * 299) + (g * 587) + (b * 114)) / 1000

	// return better contrasting color
	return (yiq >= 128) ? 'black' : 'white'

}



if (window.location.href.includes('headercolor')) {

		const accentColor = androidToRGBA(getParameter('headercolor')),
		      textColor   = getTextColor(accentColor)

	document.documentElement.style.setProperty('--card-accent-color', accentColor)
	document.documentElement.style.setProperty('--card-text-color', textColor)

}
