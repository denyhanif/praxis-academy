# Alice downloads favorite rhymes.
wget https://www.acquia.com/sites/default/files/blog/all-around-the-mulberry-bush.txt
wget https://www.acquia.com/sites/default/files/blog/jack-and-jill.txt
wget https://www.acquia.com/sites/default/files/blog/old-mother-hubbard.txt
wget https://www.acquia.com/sites/default/files/blog/twinkle-twinkle.txt
wget https://www.acquia.com/sites/default/files/blog/hokey-pokey.txt 

# The files have been downloaded, but not committed.
# You can see this with git status. git status
# Alice adds the files one-by-one to make her git history look nice and tidy.
git add all-around-the-mulberry-bush.txt 
git status 
git commit -m 'Added all-around-the-mulberry-bush.txt.'
git add jack-and-jill.txt
git commit -m 'Added jack-and-jill.txt.' 

# Alice gets lazy and decides to just add everything else at once.
git add .
git commit -m 'Added old-mother-hubbard.txt, twinkle-twinkle.txt, hokey-pokey.txt' 

# Alice reviews and admires her commit history.
git log
git log --oneline
git log -p
Next, Alice creates a GitHub account here: https://github.com/. Then she creates a new repo named "rhymes". Following the instructions provided by GitHub, she pushes her repo up to GitHub like this (if your following along as Alice, replace my username in the URL with your own):

git remote add origin https://github.com/bryanhirsch/rhymes.git
git push -u origin master

# First Bob clones his fork of Alice's rhymes project.
# (If you're following along, replace bryanhirsch below with your own GitHub username.)
git clone https://github.com/bryanhirsch/rhymes.git
cd rhymes

# To keep things simple and tidy, Bob will keep the master branch in sync with Alice's version of the master branch.
# Bob creates a new branch, where he will store his changes.
git checkout -b hickory-dickory

# Add Hickory Dickory Dock to the repo.
wget https://www.acquia.com/sites/default/files/blog/hickory-dickory-dock.txt...
add hickory-dickory-dock.txt
git commit -m 'Added hickory-dickory-dock.txt.'

# Bob pushes the changes from his local copy of rhymes up to GitHub.
git push origin hickory-dickory