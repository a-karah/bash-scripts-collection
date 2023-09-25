# One-liners:

## Miscellaneous

### same as prepare-c-files-for-makefile.sh[^1][^2][^3][^4]
```console
foo@bar:~$ ls -1 <path to src folder> | sed -z 's/\n/ \\\n/g'
ft_atoi.c \
ft_bzero.c \
ft_calloc.c \
...
```

### download release builds from github using curl and wget[^5]
```bash
curl -s https://api.github.com/repos/<ogranization-name>/<repo-name>/releases/latest \
| grep "browser_download_url.*zip" \
| cut -d : -f 2,3 \
| tr -d \" \
| wget -qi -
```

### show sorted used space[^6]
```console
foo@bar:~$ du -h <folder path> | sort -h
3.2M	./libs/glfw/docs/html
5.5M	./libs/glfw
 15M	./libs/glm/doc/api
 18M	./libs/glm/doc
 23M	./libs/glm
 35M	./libs
 39M	.

foo@bar:~$ du -sh -- * | sort -h
 36K	LICENSE
288K	include
536K	template
764K	assets
 35M	libs
```

### create folder in each subfolder
```bash
for dir in */; do mkdir -- "$dir/<folder-name>"; done
```

# Regex

## Match

### Grep[^7]
```console
foo@bar:~$ grep -HEn '^SRCS' Makefile
Makefile:26:SRCS := ft_strlen.cpp
```

### Grep + awk
Useful when need to find match and quickly open in code editor
```console
foo@bar:~$ grep -HEn 'main' src/main.cpp | awk -F: '{print $1":"$2" "$3}'
src/main.cpp:3 int      main(int ac, char **av)
```

### Perl[^8]
```console
foo@bar:~$ perl -ne 'print if /^SRCS/' Makefile
SRCS := ft_strlen.cpp
```

## Search and replace

### Vim
```bash
:%s/<match>/<replace>/g
Backreference: \0 or &
```

## References
[Pure sh bible](https://github.com/dylanaraps/pure-sh-bible)

[Pure bash bible](https://github.com/dylanaraps/pure-bash-bible)

[Bash handbook](https://github.com/denysdovhan/bash-handbook)

[Bash Pitfalls](http://mywiki.wooledge.org/BashPitfalls)

[TDD Bash](https://github.com/gerhard/bash)

[The Bash Hackers Wiki](https://wiki.bash-hackers.org/)

[Quick tutorial](https://www.panix.com/~elflord/unix/bash-tute.html)

[Shell Scripting Tutorial](https://www.shellscript.sh/)

[Idempotent Bash Scripts](https://arslan.io/2019/07/03/how-to-write-idempotent-bash-scripts/)

[^1]: https://superuser.com/questions/951905/is-there-a-way-to-echo-a-blackslash-followed-by-newline-in-bash

[^2]: https://stackoverflow.com/questions/27658675/how-to-remove-last-n-characters-from-a-string-in-bash

[^3]: https://stackoverflow.com/questions/30993056/get-full-path-to-file-from-argument

[^4]: https://askubuntu.com/questions/1400937/how-can-i-get-the-path-of-directory-in-which-the-command-is-running

[^5]: https://gist.github.com/steinwaywhw/a4cd19cda655b8249d908261a62687f8

[^6]: https://unix.stackexchange.com/questions/4681/how-do-you-sort-du-output-by-size

[^7]: https://stackoverflow.com/questions/8105685/show-filename-and-line-number-in-grep-output

[^8]: https://www.rexegg.com/regex-perl-one-liners.html
