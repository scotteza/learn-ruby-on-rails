echo '------------------------------------------------------------------------'
echo "Running webrailspacker compile..."
echo '------------------------------------------------------------------------'
rails webpacker:compile

echo '------------------------------------------------------------------------'
echo "Running db migrations..."
echo '------------------------------------------------------------------------'
rails db:migrate

echo '------------------------------------------------------------------------'
echo "Starting web server..."
echo '------------------------------------------------------------------------'
rails server
