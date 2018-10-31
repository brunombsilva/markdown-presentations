touch A.txt
git add  A.txt
git commit -m "First commit"

git checkout -b demo/stash

echo "A1" > A.txt
git add A.txt
git commit -m "A.txt"

echo "A2" >> A.txt
git checkout master

pause "Aborted due to uncommited changes."

git stash

echo "A3" >> A.txt
echo "B1" >> B.txt

git status

git stash -u

git stash list

pause "List of stashed changes"

git stash show -p

git stash show stash@{1} -p

pause "Pop changes"

git stash pop
