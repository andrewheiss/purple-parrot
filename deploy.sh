REMOTE_HOST="ath-cloud"
REMOTE_DIR="~/sites/stats.andrewheiss.com/public_html/purple-parrot"
REMOTE_DEST=$REMOTE_HOST:$REMOTE_DIR

echo "Uploading new changes to remote server..."
echo
rsync -crvP --exclude '*_cache' --delete _output/ $REMOTE_DEST
