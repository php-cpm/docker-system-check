# docker-system-check

this is a tool for docker to check system and add mirror modify

[github](https://github.com/php-cpm/docker-system-check) | [gitee](https://gitee.com/zouyikb/docker-system-check)

for example:

```
RUN curl -fsSL https://raw.githubusercontent.com/php-cpm/docker-system-check/HEAD/change-mirror.sh|sh
```

```
RUN curl -fsSL https://gitee.com/zouyikb/docker-system-check/raw/main/change-mirror.sh|sh
```

for system do not have curl, such as debian in docker ,you can download shell file to local then 

```
COPY change-mirror.sh .
RUN sh ./change-mirror.sh
```