## One-liners:

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
```

## References
[Pure sh bible](https://github.com/dylanaraps/pure-sh-bible)

[Pure bash bible](https://github.com/dylanaraps/pure-bash-bible)

[^1]: https://superuser.com/questions/951905/is-there-a-way-to-echo-a-blackslash-followed-by-newline-in-bash

[^2]: https://stackoverflow.com/questions/27658675/how-to-remove-last-n-characters-from-a-string-in-bash

[^3]: https://stackoverflow.com/questions/30993056/get-full-path-to-file-from-argument

[^4]: https://askubuntu.com/questions/1400937/how-can-i-get-the-path-of-directory-in-which-the-command-is-running

[^5]: https://gist.github.com/steinwaywhw/a4cd19cda655b8249d908261a62687f8

[^6]: https://unix.stackexchange.com/questions/4681/how-do-you-sort-du-output-by-size
