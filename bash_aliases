alias rmpyc="find . -iname '*.pyc' -delete"
alias rmbak="find . -iname '*~' -delete"
alias dirsize="/home/carljm/dot/bin/dirsize.sh | sort -n | uniq"
alias pkgsize='/home/carljm/dot/bin/pkgsize.sh'

alias sshkey="ssh-add /home/carljm/.ssh/romaine_dsa"
alias sshtp="ssh tp -t screen -URD"
alias sshlt="ssh lt -A -t ~/dot/bin/scr"
alias sshpuffin="ssh puffin -t screen -URD"
alias sshsw="ssh sw"
alias sshmwr="ssh mwr"
alias sshrp="ssh rp"
alias sshcp="ssh cp -t screen -URD"
alias sshql="ssh ql"
alias sshbruce="ssh bruce"
alias sshpmc="ssh pmc"
alias sshdz="ssh dz -A -t scr"

alias mk24env="mkvirtualenv -p /opt/Python-2.4.6/bin/python"
alias mk25env="mkvirtualenv -p /opt/Python-2.5.6/bin/python"
alias mk26env="mkvirtualenv -p /opt/Python-2.6.8/bin/python"
alias mk27env="mkvirtualenv -p /opt/Python-2.7.3/bin/python"
alias mk32env="mkvirtualenv -p /opt/Python-3.2.3/bin/python3"
alias mk33env="mkvirtualenv -p /opt/Python-3.3.0rc1/bin/python3"
alias mkvenv=mk27env

alias joe="emacs -nw"
alias emacs="emacs -nw"

alias fixssh="source ~/.sshvars"

alias rs="redshift -l 44.08:-103.25"

alias g=git

mktags() {
    PWD=`pwd`
    SP=`virtualenvwrapper_get_site_packages_dir`
    find $PWD $SP -name '*.py' | etags -
}

djtests() {
    if [[ "$1" =~ ^db=.* ]]; then
        DB=${1#db=}
        shift
    else
        DB="sqlite"
    fi

    pushd /home/carljm/projects/django/django/django/tests/
    PYTHONHASHSEED="random" DJANGO_SETTINGS_MODULE=testconf.${DB} coverage run runtests.py $@
    coverage html
    popd
}
