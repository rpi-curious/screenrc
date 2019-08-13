# `screenrc` Tips
[heading__title]:
  #screenrc-tips
  "&#x2B06; Top of this page"


[`screenrc`][master__screenrc], contains a collection of scripts and configurations for setting up `screen` on Raspberry Pi. The following covers how to install this branch within Linux user account.


## [![Repository Size][badge__master__git_shell_commands__size]][master__screenrc] [![Open Issues][badge__issues__git_shell_commands]][issues__git_shell_commands] [![Open Pull Requests][badge__pull_requests__git_shell_commands]][pull_requests__git_shell_commands] [![Latest commits][badge__commits__git_shell_commands__master]][commits__git_shell_commands__master]



------


#### Table of Contents


- [&#x2B06; Top of ReadMe File][heading__title]

- [:zap: Quick Start][heading__quick_start]

- [&#x1F5D2; Notes][notes]

- [:card_index: Attribution][heading__attribution]

- [:copyright: License][heading__license]


------


## Quick Start
[heading__quick_start]:
  #quick-start
  "&#9889; ...well as quick as it may get with things like this"


**Installing**


1. Make a directory for Git sources and clone this project

2. Symbolically link configuration file

3. Symbolically link scripts directory


```Bash
mkdir -vp ~/git/rpi-curious
cd ~/git/rpi-curious
git clone git@github.com:rpi-curious/screenrc.git

mkdir -vp ~/bin
ln -s "${HOME}/git/rpi-curious/screenrc/screenrc" "${HOME}/.screenrc"

mkdir -vp ~/.screenrc-scripts
ln -s "${HOME}/git/rpi-curious/screenrc/screenrc-scripts" "${HOME}/.screenrc-scripts"
```


**Updating**


1. Change directories to repository

2. Pull changes from default remote


```Bash
cd ~/git/rpi-curious/screenrc

git pull
```


**Customizing**


1. Change directories to repository and checkout a local branch

2. Make changes to a file

3. Add and commit for Git to track changes on the local branch


```Bash
cd ~/git/rpi-curious/screenrc
git checkout -b local-edits

vim screenrc-scripts/cpu-temp.sh

git commit add screenrc-scripts/cpu-temp.sh
git commit -F- <<'EOF'
:shell: Adds Kelvin support
# ... Three blank lines and then other
#     comment-worthy notes maybe...
EOF
```


___


## Notes
[notes]:
  #notes
  "&#x1F5D2; Additional notes and links that may be worth clicking in the future"


This project is designed and tested on Raspberry Pi development boards, however, there's likely little reason that it will not work properly on other platforms, perhaps even without modifications.


___


## Attribution
[heading__attribution]:
  #attribution
  "&#x1F4C7; Resources that where helpful in building this project so far."

- `screenrc`

  - [GNU -- `screen` String Escapes](https://www.gnu.org/software/screen/manual/html_node/String-Escapes.html)
  - [Gist -- `.screenrc` from @roylez](https://github.com/roylez/dotfiles/blob/master/.screenrc)

- `cpu-temp.sh`

  - [Unix StackExchange -- How can I tell if I'm in a tmux session from a bash script?](https://unix.stackexchange.com/questions/10689/)

- `free-mem`

  - [Unix StackExchange -- How to do integer & float calculations in bash or other languages/frameworks?](https://unix.stackexchange.com/questions/40786/)
  - [Arch Linux -- Post your `.screenrc` with screenshots!](https://bbs.archlinux.org/viewtopic.php?id=55618&p=2)


___


## License
[heading__license]:
  #license
  "&#x00A9; Legal bits of Open Source software"


> Legal bits of Open Source software


```
`screenrc` Tips documentation
Copyright (C) 2019  S0AndS0

This program is free software: you can redistribute it and/or modify
it under the terms of the GNU Affero General Public License as published
by the Free Software Foundation; version 3 of the License.

This program is distributed in the hope that it will be useful,
but WITHOUT ANY WARRANTY; without even the implied warranty of
MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
GNU Affero General Public License for more details.

You should have received a copy of the GNU Affero General Public License
along with this program.  If not, see <https://www.gnu.org/licenses/>.
```



[badge__travis_ci__git_shell_commands]:
  https://img.shields.io/travis/rpi-curious/screenrc/example.svg

[travis_ci__git_shell_commands]:
  https://travis-ci.com/rpi-curious/screenrc
  "&#x1F6E0; Automated tests and build logs"


[branch_example__example_usage]:
  https://github.com/rpi-curious/screenrc/blob/example/example-usage.sh
  "Bash script that shows some ways of utilizing code from the master branch of this repository"


[badge__commits__git_shell_commands__master]:
  https://img.shields.io/github/last-commit/rpi-curious/screenrc/master.svg

[commits__git_shell_commands__master]:
  https://github.com/rpi-curious/screenrc/commits/master
  "&#x1F4DD; History of changes on this branch"


[git_shell_commands__community]:
  https://github.com/rpi-curious/screenrc/community
  "&#x1F331; Dedicated to functioning code"


[git_shell_commands__example_branch]:
  https://github.com/rpi-curious/screenrc/tree/example
  "If it lurches, it lives"


[badge__issues__git_shell_commands]:
  https://img.shields.io/github/issues/rpi-curious/screenrc.svg

[issues__git_shell_commands]:
  https://github.com/rpi-curious/screenrc/issues
  "&#x2622; Search for and _bump_ existing issues or open new issues for project maintainer to address."


[badge__pull_requests__git_shell_commands]:
  https://img.shields.io/github/issues-pr/rpi-curious/screenrc.svg

[pull_requests__git_shell_commands]:
  https://github.com/rpi-curious/screenrc/pulls
  "&#x1F3D7; Pull Request friendly, though please check the Community guidelines"


[badge__master__git_shell_commands__size]:
  https://img.shields.io/github/languages/code-size/rpi-curious/screenrc.svg

[master__screenrc]:
  https://github.com/rpi-curious/screenrc/
  "&#x2328; Project source code!"
