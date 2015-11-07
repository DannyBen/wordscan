# wordscan - dictionary and thesaurus regular expression search

`wordscan` is a command line utility for searching dictionary word lists 
(included) and thesaurus, with regular expression support.

It is using [Runfile](https://github.com/DannyBen/runfile).


## Install Gem Dependencies

Option 1, with bundler:

	$ bundle

Option 2, manually:

	$ gem install runfile


## Usage

	$ run --help


## Examples

```
$ run find animal ^d
Deer
Dog
Dolphin
Donkey
Dove
Duck

$ run find animal "^b.{1,3}$"
Bat
Bear
Bee
Bird

$ run find noun ^l --len 3
Lab
Law
Lid
Lie

$ run like network -l5
fret
grate
grid
lace
maze
mesh
net
sieve
weave
web
weft
