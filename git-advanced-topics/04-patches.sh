touch A.txt
git add  A.txt
git commit -m "First commit"

git checkout -b demo/patches

cat <<EOT > A.txt
A1
A3
A5
A7
EOT

git add A.txt
git commit -m "Odd lines"

cat <<EOT > A.txt
A1
A2
A3
A4
A5
A6
A7
EOT

git diff
git add -p A.txt
git status

git commit -m "Patched commit"
git diff HEAD^ HEAD

pause "Picked changes are committed."

# Creating new file
cat <<EOT > B.txt
Go first 1
Go after 1
Go first 2
Go after 2
EOT

pause "New file created. Let's pick the changes we want."

# Staging file without the content
git add -N B.txt

git add -p B.txt
git commit -m "First goers"

git status
git diff

