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

## References
[Why backslash followed by newline doesn't escape newline](https://superuser.com/questions/951905/is-there-a-way-to-echo-a-blackslash-followed-by-newline-in-bash)

[Remove last n characters from string](https://stackoverflow.com/questions/27658675/how-to-remove-last-n-characters-from-a-string-in-bash)
