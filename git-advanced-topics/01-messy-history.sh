touch notes.txt
git add notes.txt
git commit -m "Initial commit"

# Dirty Commit History
git checkout -b demo/dirty-history

echo "helo" > notes.txt
git add notes.txt
git commit -m "creating notes"

echo "helloo" > notes.txt
git add notes.txt
git commit -m "fixing!"

echo "hello" > notes.txt
git add notes.txt
git commit -m "Third time's the charm"

echo "olá" >> notes.txt
git add notes.txt
git commit -m "this is a reeaaaaallllyyyyy long description that may become hard to read or even cut in GitHub UI"

echo "Hola" >> notes.txt
git add notes.txt
git commit -m "."

git log --pretty="format:%s %n %b"

pause "Branch ready. Time to cleanup!"

# Rebasing to clean history
git rebase -i master

git log --pretty="format:%s %n %b"
