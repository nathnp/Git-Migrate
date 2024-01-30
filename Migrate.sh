#!/bin/bash

echo "#!/bin/bash" >> MigrateClone.sh

for dir in */; do
  cd "$dir"
  glink=$(git config --get remote.origin.url)
  cd ..
  echo "git clone $glink" >> MigrateClone.sh
done

chmod +x MigrateClone.sh
