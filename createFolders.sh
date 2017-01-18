#!/bin/bash

mkdir -p projecttest/app/{core/services/rest,config,hello}

basePath="projecttest/"

array=(
        app/config/config.js
        app/core/services/rest/urlFactory.js
        app/core/services/rest/urlList.js
        app/core/services/rest/restService.js
        app/hello/hello.html
        app/hello/helloController.js
        app/hello/helloRestService.js
        app/index.html
        app/routing.js
        gulpfile.js
        README.md
        .bowerrc
        .gitignore
      )

for i in "${array[@]}"
do
    printf ". "
    file=$basePath$i
    touch $file
done

printf "\nProject template created :)"
