#!/bin/bash

WWW="/home/studentswww/$USER"

read -p "Enter url to forward to: " url </dev/tty

mkdir -p $WWW

cat >"$WWW/index.html" <<EOM
<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="UTF-8" />
    <meta http-equiv="refresh" content="0; url=$url" />
    <script type="text/javascript">
      window.location.href = '$url'
    </script>
    <title>Redirect</title>
  </head>
  <body>
    If you are not redirected automatically, follow this
    <a href="$url">link</a>
  </body>
</html>
EOM

chmod -R a+r $WWW
chmod a+x $WWW
