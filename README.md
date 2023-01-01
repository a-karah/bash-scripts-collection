## One-liners:

### same as prepare-c-files-for-makefile.sh
```console
ls -1 src | sed -z 's/\n/ \\\n/g'
```

Output:
```console
ft_atoi.c \
ft_bzero.c \
ft_calloc.c \
...
```

### download release builds from github using curl and wget
```console
curl -s https://api.github.com/repos/<ogranization-name>/<repo-name>/releases/latest \
| grep "browser_download_url.*zip" \
| cut -d : -f 2,3 \
| tr -d \" \
| wget -qi -
```

## References
[Why backslash followed by newline doesn't escape newline](https://superuser.com/questions/951905/is-there-a-way-to-echo-a-blackslash-followed-by-newline-in-bash)

[Remove last n characters from string](https://stackoverflow.com/questions/27658675/how-to-remove-last-n-characters-from-a-string-in-bash)

[Get full path to file from argument](https://stackoverflow.com/questions/30993056/get-full-path-to-file-from-argument)

[Get path of directory from argument](https://askubuntu.com/questions/1400937/how-can-i-get-the-path-of-directory-in-which-the-command-is-running)

[Curl release downloader](https://gist.github.com/steinwaywhw/a4cd19cda655b8249d908261a62687f8)
