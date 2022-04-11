pyversion(){
    __doc__="
    Display the version of a Python module

    Example:
        pyversion six
    "
    PYVERSION_COMMAND="import $1; print('$1.__version__ = ' + str($1.__version__))"
    #PYVERSION_COMMAND="import importlib.metadata; print('version($1) = ' + importlib.metadata.version('$1'))"
    echo "python -c \"${PYVERSION_COMMAND}\""
    python -c "$PYVERSION_COMMAND"
}


pyfile()
{
    __doc__="
    Display the location of a Python module
    "

    echo "python -c \"import $1; print($1.__file__)\""
    python -c "import $1; print($1.__file__.replace(\".pyc\", \".py\"))"
}
