# how to uninstall save package in npm?
  - npm uninstall --save gulp-livereload
  - npm uninstall --save imagemin

# how to set up node.js?
  - download node.js
  - 
# how to check npm version?
  - 
  - npm --version to test

# how to  set up a local repository from github?
  - create repository in github and .gitignore
  - clone it into the vs code folder
  - create a templates folder
  - create a dist folder > css folder/ js folder /img
  - create an src folder > css folder/ js folder/scss folder /img


# how to get a hello world from bootstrap?
  - copy bootstrap starter pack and paste in index.html

# how to on initiate npm and create a package.json file?
  - npm init

# how to install bootstrap?
  - npm install bootstrap

# how to install jquery?
  - npm install jquery

# how to install tether?
  - npm install tether

# how to install popper.js?
  - npm install popper.js
  

# how to change your CDN links to local?
  - <!-- Bootstrap CSS @ the <head> before title</head>-->
    <link rel="stylesheet" href="../dist/css/bootstrap.min.css">
    <link rel="stylesheet" href="../dist/css/style.css">

  - <!-- Optional JavaScript  before final<body> </body>-->
    <!-- jQuery first, then Popper.js, then Bootstrap JS -->
    <script src="../dist/js/jquery.min.js"></script>
    <script src="../dist/js/tether.min.js"></script>
    <script src="../dist/js/bootstrap.min.js"></script>

# how to get the js and boostrap min files to the assests folder?
  - copy bootstrap.min.css to assets/css
  - copy the bootstrap.min.js /jquery.min.js /popper.min.js / tether.min.js to assests/js
  - copy images to assets/img



# how to compile scss and minify images?
  - Global install
  - sudo npm install -g --unsafe-perm node-sass in the home directory command prompt
  - 
  - local install
  - npm install node-sass --save-dev
  - 
  - compile ==> node-sass --output-style expanded --source-map=true  -o assets/css assets/scss
  -  
  - global 
  - sudo npm install -g --unsafe-perm imagemin-cli at home directory
  - 
  - local install
  - npm i imagemin-cli --save--dev
  - imagemin ==>  imagemin assets/img/* --out-dir dist/img 
  
  # how to move files in the folders

  - move:js ==> cp assets/js/*.min.js  dist/js/
  - move:css ==> cp assets/css/*  dist/css/
  - move:style ==> cp assets/css/style.css  dist/css/

  
  # how to watch for changes in images and scss 
  - Global install
  - sudo npm install -g --unsafe-perm onchange
  - 
  - local install
  - npm i onchange --save--dev
  - 
  - watch:css ==> onchange 'assets/scss/*.scss' -- node-sass --output-style expanded --source-map=true  -o dist/css assets/scss &
  - watch images ==> onchange 'assets/img/*' -- imagemin assets/img/* --out-dir dist/img
  -   
  

 
# how to use the npm to run the scripts in the terminal?
  - npm run builds  ==> everthing into dist folder for development
  - npm run watch ==> watch scss and images
  - npm run prod ==> run all in production server


# How to minify, prefix and clean css in production?
  - Global install 
  - sudo npm install -g --unsafe-perm npm i -D autoprefixer clean-css-cli postcss-cli
  - 
  - Project install
  - npm i -D npm-run-all autoprefixer clean-css-cli postcss-cli
  - 
  - prefix ==> postcss assets/css/style.css --use=autoprefixer --map=false --output=assets/css/style.css
  - 
  - Outside the scripts { }
  - "browserslist": ["last 2 versions"]
  - 
  - minify  ==> cleancss --level=1 --source-map --source-map-inline-sources --output assets/css/style.min.css assets/css/style.css
  - 
  -  

# what is the current build process?
  - we compile style.scss to style.css in assets
  - we minify images in assets/img to dist/img
  - we move js files from assets/js to dist/js
  - we move Bootstrap.min.css and all css from assets/css to dist/css

# what is the current watch process?
  - watch images and any changes are copied from assets/img to dist/img
  - watch scss in assets and any changes in assets/scss are compiled to dist/css 
  - 
  - 

# what is the current production process?
  - we compile .scss at assets/scss and compile it to assets/css
  - we minify images and move them to dist/img
  - we move all css from assets/css to dist/css
  - we move all js from assets/css to dist/js
  - we autoprefix and minify style.css and move style.min.css and style.min.css.map  that file to dist/css
  - change the link in the html files to ../dist/css/style.min.css at base.html and manually delete style.css / style.css.map in the dist folder