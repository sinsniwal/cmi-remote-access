#!/bin/bash

WWW="$HOME/.www"
NAME=$(curl -s "https://www.cmi.ac.in/people/student-profile.php?id=$USER" | grep -oP '(?<=<div class="profile_name">)[^<]+')

mkdir -p $WWW

cat >"$WWW/index.html" <<EOM
<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="UTF-8" />
    <title>$NAME</title>
  </head>
  <body>
    Hi 👋, I'm $NAME!
  </body>
</html>
EOM

chmod -R +r $WWW
chmod +x $WWW
