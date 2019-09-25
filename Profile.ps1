# others
function project {
    param (
        [string] $arg
    )
    cd ~/projetos/$arg
    code .
}
function dev {
    cd ~/projetos/comissionamento
    code .
}

# docker
function test {
    docker-compose run web pytest
}

function migrate {
    docker-compose run web python3 manage.py migrate
}

function makemigrations {
    docker-compose run web python3 manage.py makemigrations
}

function loaddata {
    param (
        [string] $arg
    )
    cd ~/projetos/comissionamento/server
    if ($arg) {
        docker-compose run web python3 manage.py loaddata $arg
    }
    else {
        docker-compose run web python3 manage.py loaddata state city
    }
}

function permission {
    param (
        [string] $arg,
        [string] $arg2
    )
    cd ~/projetos/comissionamento/server
    if ($arg2) {
        docker-compose run web python manage.py set_permission $arg --group $arg2
    }
    else {
        docker-compose run web python manage.py set_permission $arg
    }
}

function runback {
    cd ~/projetos/comissionamento/server
    docker-compose up --build
}

function runfront {
    cd ~/projetos/comissionamento/client
    quasar dev
}

# git
function pull {
    git pull
}

function push {
    param (
        [string] $arg
    )
    git push origin $arg
}

function cm {
    param (
        [string] $arg
    )
    git commit -am $arg
}

# git add all & commit
function cma {
    param (
        [string] $arg
    )
    git add .
    git commit -am $arg
}

function s {
    git status
}

