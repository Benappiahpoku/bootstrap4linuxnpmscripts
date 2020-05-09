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
  
# how to install gulp, broweser, gulp-sass?
  - copy from node_modules -> bootstrap.min.js / jquery.js/popper.js/tether.js to /dist/js folder
  - copy bootstrap.min.css -> /dist/css


# how to change your CDN links to local?
  - <!-- Bootstrap CSS @ the <head> before title</head>-->
    <link rel="stylesheet" href="../dist/css/bootstrap.min.css">
    <link rel="stylesheet" href="../dist/css/style.css">

  - <!-- Optional JavaScript  before final<body> </body>-->
    <!-- jQuery first, then Popper.js, then Bootstrap JS -->
    <script src="../dist/js/jquery.min.js"></script>
    <script src="../dist/js/tether.min.js"></script>
    <script src="../dist/js/bootstrap.min.js"></script>



# how to use the install node modules and write scripts?
  - sudo npm install -g --unsafe-perm node-sass in the home directory command prompt
  - npm install node-sass --save-dev
  - 
  - "compile": "node-sass --output-style expanded --source-map=true  -o assets/css assets/scss",
  -  
  - sudo npm install -g --unsafe-perm imagemin-cli at home directory
  - npm i imagemin-cli --save--dev
  - "imagemin": "imagemin assets/img/* --out-dir dist/img", 
  - 
  - "move:js": "@powershell copy \"assets/js/*.min.js\" \"dist/js\"",
  - "move:css": "@powershell copy \"assets/css/* \" \"dist/css\"",
  - "move:style": "@powershell copy \"assets/css/style.css\" \"dist/css\"",

  - "build": "npm run compile && npm run move:css && npm run move:js && npm run imagemin",
  -   
  - sudo npm install -g --unsafe-perm onchange
  - npm i onchange --save--dev
  - "compile_move": "npm run compile && npm run move:style",
  - "watch:css": "onchange \"assets/scss/*.scss\" -- npm run compile",
  - "watch:images": "onchange \"assets/img/*\" -- npm run imagemin",
  -   
  - sudo npm install -g --unsafe-perm npm-run-all 
  - npm i npm-run-all --save-dev
  - "watch": "npm-run-all --parallel watch:**"
  - 

 
# how to use the npm to run the scripts in the terminal?
  - npm run build everthing into dist folder for development
  - npm run watch ***what i use everytime


# How to minify, prefix and clean css in production?
  - sudo npm install -g --unsafe-perm npm i -D autoprefixer clean-css-cli postcss-cli
  - npm i -D npm-run-all autoprefixer clean-css-cli postcss-cli
  - "prefix": "postcss assets/css/style.css --use=autoprefixer --map=false --output=assets/css/style.css"
  - 
  - Outside the scripts { }
  - "browserslist": ["last 2 versions"]
  - 
  -  "minify": "cleancss --level=1 --source-map --source-map-inline-sources --output assets/css/style.min.css assets/css/style.css",
  - 
  -  "prod": "npm run build && npm run prefix && npm run minify && npm run move:css "


# how to use the npm to run the scripts in the terminal for production?
- npm run prod
- remember to change the ../dist/css/style.min.css

# what is the current build process?
  - we compile style.scss to style.css in assets
  - we minify images in assets/img to dist/img
  - we move js files from assets/js to dist/js
  - we move Bootstrap.min.css and all css from assets/css to dist/css

# what is the current watch process?
  - watch images and any changes are copied from assets/img to dist/img
  - watch scss in assets and any changes in assets/scss are compiled to assets/css and copied to dist/css -> compile_move
  - 
  - 

# what is the current production process?
  - we compile .scss at assets/scss and compile it to assets/css
  - we minify images and move them to dist/img
  - we move all css from assets/css to dist/css
  - we move all js from assets/css to dist/js
  - we autoprefix and minify style.css and move only that file to dist/css
  - change the link in the files to ../dist/css/style.min.css and manually delete style.css / style.css.map