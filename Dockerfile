FROM alpine:3

# set timezone
ENV TZ=Asia/Shanghai
RUN ln -snf /usr/share/zoneinfo/$TZ /etc/localtime && echo $TZ > /etc/timezone

# Install inotify-tools rsync
RUN apk update && apk add inotify-tools rsync

# Create workspace.
RUN mkdir -p /app/sourcedir; mkdir -p /app/backupdir

WORKDIR "/app/"

# Create workspace.
ADD script.sh /app/script.sh
RUN chmod 755 /app/script.sh

CMD ["/app/script.sh"]
