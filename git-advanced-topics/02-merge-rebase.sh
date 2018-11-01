# commits in master

echo "A" > notes.txt
git add notes.txt
git commit -m "A"

echo "B" > file.txt
git add notes.txt
git commit -m "B"

# Half of feature 1
git checkout -b demo/feature-1

echo "C1" > notes.txt
git add notes.txt
git commit -m "C1"

echo "C2" > notes.txt
git add notes.txt
git commit -m "C2"

# Feature 2
git checkout master
git checkout -b demo/feature-2

echo "D1" >> other.txt
git add other.txt
git commit -m "D1"

echo "D2" >> other.txt
git add other.txt
git commit -m "D2"

git graph

pause "Feature 2 done. Let's merge to master."

# Feature 2 done and merged
git checkout master
git merge --no-ff demo/feature-2 -m ""

git graph

pause "Let's go back to finish Feature 1."

# Back to finish feature 1
git checkout demo/feature-1

# getting latest 'master' changes
git merge master -m ""
#git rebase master

echo "C3" >> notes.txt
git add notes.txt
git commit -m "C3"

git checkout master
git merge --no-ff demo/feature-1 -m ""
git graph
