find . -type f -name ".DS_Store" -delete
zip -r firefox.zip . --exclude ".git/*" --exclude "release.sh" --exclude .DS_Store
mv firefox.zip ~/Downloads/rtbf-firefox.zip
