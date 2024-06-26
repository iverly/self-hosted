# The HTTP section

In this section, we will cover the HTTP (Hypertext Transfer Protocol) and how do I have configured it in my home network.

## Basic concepts

The HTTP is a protocol that allows the transfer of hypertext (text with hyperlinks) between a client and a server. It is the foundation of data communication on the World Wide Web. When you type a URL in your browser, the browser sends an HTTP request to the server and the server sends back an HTTP response with the content of the website.

## Web server (Traefik)

I have configured a web server in my home network to serve my websites. I use [Traefik](https://traefik.io/) as my web server. Traefik is a modern HTTP reverse proxy and load balancer that makes deploying services easy. It is a great tool to manage all your web services in one place.

I've decided to use Traefik because it is very easy to configure through a docker compose file with the labels and automatically generates all the configuration files for you. It also supports Let's Encrypt out of the box, so you can have HTTPS on all your websites without any effort.

If you are interested to host production-ready websites, I recommend you to use another web server like [Nginx](https://www.nginx.com/) since Traefik is not really good for scaling.

## Uptime (uptime-kuma)

I use [uptime-kuma](https://github.com/louislam/uptime-kuma) to monitor the uptime of my websites. Uptime-kuma is a fancy self-hosted monitoring tool that allows you to monitor the uptime of your websites and services. It is very easy to install and configure and provides a nice dashboard to see the uptime of your websites.

## Google Photo (immich)

I use [immich](https://immich.app) to share my photos with my family and friends. Immich is a self-hosted web application that allows you to share your photos with your family and friends. It provides a nice interface to browse and have tons of features like albums, tags, search and face recognition.

## Drive (filebrowser)

I use [filebrowser](https://filebrowser.org) to store and share my files with my family and friends. Filebrowser is a self-hosted web application that allows you to manage your files with a nice interface. It provides a file manager, a file uploader, a file editor and a file viewer.

## Temporary docker registry (ttl.sh)

I use [ttl.sh](https://ttl.sh) to store my docker images temporarily. Ttl.sh is a self-hosted web application that allows you to store your docker images temporarily.

In order to run it, you have to build the ttl.sh images in your local machine (because they don't ship it).

The instructions are on the [GitHub repository](https://github.com/replicatedhq/ttl.sh).

## Conclusion

The HTTP is a very important protocol for the internet. It allows the transfer of hypertext between a client and a server. I have configured a web server in my home network to serve my websites. I use Traefik as my web server because it is very easy to configure and supports Let's Encrypt out of the box. This way, I can have HTTPS on all my websites without any effort.
