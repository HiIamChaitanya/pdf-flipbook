# PDF Flipbook

 - Demo

## FAQ

# Documentation
https://dearflip.com/examples/jquery/index.html

# flipbook pages are not visible/defect in PDF
check pdf if using link make sure that cross-origin resource sharing is enabled 

-----
# Options

```js
var options = {

	//sets if to use 3d or not (true|false)
	webgl: true,
	//if you want to turn of shadow in 3d set it to false
	webglShadow: true,

	// if enable sound at start (true|false)
	soundEnable: true,

	// height of the container
	// value(eg: 320) or percentage (eg: '50%')
	// calculaton limit: minimum 320, max window height
	height: '100%',

	// set to true to show outline on open (true|false)
	autoEnableOutline: false,

	// set to true to show thumbnail on open (true|false)
	autoEnableThumbnail: false,

	// set to true if PDF inbuilt outline is to be removed (true|false)
	overwritePDFOutline: false,

	// enableDownload of PDF files (true|false)
	enableDownload: true,

	// duration of page turn in milliseconds
	duration: 800,

	//direction of flipbook
	//DFLIP.DIRECTION.LTR or 1	for left to right(default),
	//DFLIP.DIRECTION.RTL or 2	for right to left,
	direction: DFLIP.DIRECTION.LTR,

	//set as
	//DFLIP.PAGE_MODE.AUTO	 				for auto-detect(default),
	//DFLIP.PAGE_MODE.SINGLE or 1 			for singleview,
	//DFLIP.PAGE_MODE.DOUBLE or 2 			for doubleview,
	pageMode: DFLIP.PAGE_MODE.AUTO,

	//set as
	//DFLIP.SINGLE_PAGE_MODE.AUTO	 				for auto-detect(default),
	//DFLIP.SINGLE_PAGE_MODE.ZOOM or 1 				for normal zoom single view,
	//DFLIP.SINGLE_PAGE_MODE.BOOKLET or 2 			for Booklet mode,
	singlePageMode: DFLIP.SINGLE_PAGE_MODE.AUTO,

	//color value in hexadecimal
	backgroundColor: "#fff",

	forceFit: true, //very rare usage leave it as true unless page are not fitting wrong...
	transparent: false, //true or false
	hard: "none", //possible values are "all", "none", "cover"


	annotationClass: "",

	autoPlay: false,
	autoPlayDuration: 5000,
	autoPlayStart: false,

	// texture settings
	maxTextureSize: 1600,	//max page size to be rendered. for pdf files only
	minTextureSize: 256,	//min page size to be rendered. for pdf files only
	rangeChunkSize: 524288,

	// icons for the buttons
	icons: {
		'altnext': 'ti-angle-right',
		'altprev': 'ti-angle-left',
		'next': 'ti-angle-right',
		'prev': 'ti-angle-left',
		'end': 'ti-angle-double-right',
		'start': 'ti-angle-double-left',
		'share': 'ti-sharethis',
		'help': 'ti-help-alt',
		'more': 'ti-more-alt',
		'download': 'ti-download',
		'zoomin': 'ti-zoom-in',
		'zoomout': 'ti-zoom-out',
		'fullscreen': 'ti-fullscreen',
		'fitscreen': 'ti-arrows-corner',
		'thumbnail': 'ti-layout-grid2',
		'outline': 'ti-menu-alt',
		'close': 'ti-close',
		'doublepage': 'ti-book',
		'singlepage': 'ti-file',
		'sound': 'ti-volume',
		'facebook': 'ti-facebook',
		'google': 'ti-google',
		'twitter': 'ti-twitter-alt',
		'mail': 'ti-email',
		'play': 'ti-control-play',
		'pause': 'ti-control-pause'
	},

	// TRANSLATION text to be displayed
	text: {

		toggleSound: "Turn on/off Sound",
		toggleThumbnails: "Toggle Thumbnails",
		toggleOutline: "Toggle Outline/Bookmark",
		previousPage: "Previous Page",
		nextPage: "Next Page",
		toggleFullscreen: "Toggle Fullscreen",
		zoomIn: "Zoom In",
		zoomOut: "Zoom Out",
		toggleHelp: "Toggle Help",

		singlePageMode: "Single Page Mode",
		doublePageMode: "Double Page Mode",
		downloadPDFFile: "Download PDF File",
		gotoFirstPage: "Goto First Page",
		gotoLastPage: "Goto Last Page",
		play: "Start AutoPlay",
		pause: "Pause AutoPlay",

		share: "Share"
	},

	//valid controlnames:
	//altPrev,pageNumber,altNext,outline,thumbnail,zoomIn,zoomOut,fullScreen,share
	//more,download,pageMode,startPage,endPage,sound
	allControls: "altPrev,pageNumber,altNext,play,outline,thumbnail,zoomIn,zoomOut,fullScreen,share,download,more,pageMode,startPage,endPage,sound",
	moreControls: "download,pageMode,startPage,endPage,sound",
	hideControls: "",

	controlsPosition: DFLIP.CONTROLSPOSITION.BOTTOM,
	paddingTop: 30,
	paddingLeft: 50,
	paddingRight: 50,
	paddingBottom: 30,

	//set if the zoom changes on mouse scroll (true|false)
	scrollWheel: true,

	// callbacks
	onCreate: function (flipBook) {
		// after flip book is created is fired
	},
	onCreateUI: function (flipBook) {
		// after ui created event is fired
	},
	onFlip: function (flipBook) {
		// after flip event is fired
	},
	beforeFlip: function (flipBook) {
		// before flip event is fired
	},
	onReady: function (flipBook) {
		// after flip book is completely loaded
	},

	zoomRatio: 1.5,
	pageSize: DFLIP.PAGE_SIZE.AUTO,

	/**
	 * NON-OPTIONS AREA
	 * These options are not supposed to be sent from options variable
	 */
	/**
	 * dependency URLS (NON-OPTION):
	 * Do not set them as options,
	 * Refer to advance-examples
	 */
	//(NON-OPTION) source link for PDF.JS file
	pdfjsSrc: "js/libs/pdf.min.js",
	//(NON-OPTION) source link for PDFcompatibility.JS file
	pdfjsCompatibilitySrc: "js/libs/compatibility.js",
	//(NON-OPTION) source link for PDF.WORKER.JS file
	pdfjsWorkerSrc: "js/libs/pdf.worker.min.js",
	//(NON-OPTION) source link for THREE.JS file
	threejsSrc: "js/libs/three.min.js",
	//(NON-OPTION) source link for MOCKUP.JS file
	mockupjsSrc: "js/libs/mockup.min.js",
	//(NON-OPTION) File path to the trun sound
	soundFile: "sound/turn2.mp3",
	imagesLocation: "images",
	imageResourcesPath: "images/pdfjs/",
	cMapUrl: "cmaps/", //it's quite wierd how cmaps don't work properly with relative urls like others.. but is relative to pdf.min.js path

	//(NON-OPTION) developer parameters
	enableDebugLog: false,
	canvasToBlob: false,//as of 1.2.9 canvas are better optimized and secure
	enableAnnotation: true,
	pdfRenderQuality: 0.90,


	/**
	 * Let them be, change at your risk
	 */
	// if texture fallback override is required
	// note: if set to anything other than "blank" the first page is changed
	// recommended : "blank"
	textureLoadFallback: "blank", //"images/textures/white.jpg",
	// controls the flexibility of the paper more value for more flexiblilty
	stiffness: 3,
	// minTopOffset: 30,
	// link to the images file that you want as background.
	// supported files are jpgs,png. smaller files are preffered for performance
	backgroundImage: "",//"images/textures/el.jpg",
	// or any number like 5, 500. recommended: "auto"

	pageRatio: null, 		//equals to width/height

	pixelRatio: window.devicePixelRatio || 1,
	thumbElement: 'div',

	/*3D settings*/
	spotLightIntensity: 0.22,
	ambientLightColor: "#fff",
	ambientLightIntensity: 0.8,
	shadowOpacity: 0.15
};
```
