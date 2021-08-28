echo "THIS BUILD SCRIPT IS UNTESTED"
echo "PRESS CTRL + C OR CLOSE THIS WINDOW TO CANCEL"
pause
mkdocs build
move docs site
ren ./site/docs ./site/javadocs