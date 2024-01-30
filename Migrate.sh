#!/bin/bash

echo "#!/bin/bash" >> MigrateClone.sh

pr=0

for dir in */; do
  cd "$dir"
  if ! (git config --get remote.origin.url >> /dev/null) then
    echo "oops" >> /dev/null
  else
    glink=$(git config --get remote.origin.url)
    pr=1
  fi
  cd ..
  if [ $pr == 1 ]; then
    echo "git clone $glink" >> MigrateClone.sh
  fi
  pr=0
done

chmod +x MigrateClone.sh
