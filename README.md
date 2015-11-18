To build:

`# docker build .`

To set up host system with volume:

```
# mkdir -p /storage
# chown nobody:nogroup /storage`
# chmod a+rw /storage`
```

To run:

`# docker run -d -p 137-139:137-139/tcp -p 137-139:137-139/udp -v /storage:/storage --restart always --name storage <image id>`
