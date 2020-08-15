# ref

# docker run

docker build -t css_real_calculator .
docker run --rm -it -v $PWD:/app/css_real_calculator css_real_calculator ash

# compile(in docker)
cd /app/css_real_calculator
node-sass _index.scss  _index.css
pug -P _index.pug

echo "<!DOCTYPE html>
<html>
<head>
<meta charset=\"UTF-8\">
<title>css real calculator</title>
</head>
<style type=\"text/css\">" > index.html
cat _index.css >> index.html
echo "</style>
</head>
<body>" >> index.html
cat _index.html >> index.html
echo "</body>
</html>
" >> index.html

rm _index.css
rm _index.html
