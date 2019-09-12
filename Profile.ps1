# others
function project {
    param (
        [string] $msg
    )
    cd ~/projetos/$msg 
}

# docker
function migrate {
    docker-compose run web python3 manage.py migrate
}

function makemigrations {
    docker-compose run web python3 manage.py makemigrations
}

function rundocker {
    docker-compose up --build
}

# git
function pull {
    git pull
}

function push {
    param (
        [string] $msg
    )
    git push origin $msg
}

function cm {
    param (
        [string] $msg
    )
    git commit -am $msg
}

# git add all & commit
function cma {
    param (
        [string] $msg
    )
    git add .
    git commit -am $msg
}

function s {
    git status
}