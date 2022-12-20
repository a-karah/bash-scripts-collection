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
