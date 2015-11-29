# vim-vcprompt

Vim-vcprompt is a little function that returns version control (git, hg, svn, etc.) info string (branch, revision, root dir, etc.). It is a thin wrapper 
around [David Logie's Python vcprompt](https://github.com/djl/vcprompt), which 
in turn is an implementation and extension of [Greg Ward's original 
vcprompt](https://bitbucket.org/gward/vcprompt/).

# Installation

Use your favorite package manager to install:

* [Pathogen](https://github.com/tpope/vim-pathogen)
  * `git clone https://github.com/zefei/vim-vcprompt ~/.vim/bundle/vim-vcprompt`
* [Vundle](https://github.com/gmarik/Vundle.vim)
  * `Plugin 'zefei/vim-vcprompt'`
* [NeoBundle](https://github.com/Shougo/neobundle.vim)
  * `NeoBundle 'zefei/vim-vcprompt'`

# Usage

Vcprompt has a single public function `vcprompt#format`, that returns the vesion 
control info of current working directory. The function takes one printf-like 
formatting string, and below is a list of all escape sequences:

  token | return string
  ------|------------------------------------------------
  `%n`  | name of version control system: git, hg, etc.
  `%P`  | name of the repository root directory
  `%p`  | path of the repository root directory
  `%b`  | current branch name
  `%r`  | current revision
  `%h`  | current hash
  `%m`  | plus symbol `+` if there are (unstaged) changes
  `%a`  | asterisk `*` if there are staged changes
  `%u`  | question mark `*` if there are untracked files

If the current working directory is not under any version control, empty string 
will be returned.

# Requirements

Python in system path. SQLite3 Python module if you use it for svn or fossil 
repositories.

# License

MIT License.
