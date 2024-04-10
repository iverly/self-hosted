# The DNS section

In this section, we will cover the DNS (Domain Name System) and how do I have configured it in my home network.

## Basic concepts

The DNS is a system that translates domain names (eg. google.com) to IP addresses (eg. 62.192.38.29). It is like a phone book for the internet. When you type a domain name in your browser, the DNS server translates it to an IP address and then the browser can connect to the server.

Why is this important? Because it is easier to remember a domain name than an IP address. Imagine if you had to remember the IP address of all the websites you visit. It would be a nightmare.

In order to use the DNS, you need a DNS server. Your FIA (Internet Service Provider) usually provides you with a DNS server but they have to record every request to make sure you are not visiting any illegal websites and apply some restrictions. . While DNS is not encrypted, your ISP can see every website you visit even if you are using HTTPS.

## DNS server (Pi-hole)

I have configured a DNS server in my home network to avoid using the DNS server provided by my ISP. I use [Pi-hole](https://pi-hole.net/) as my DNS server. Pi-hole is a DNS sinkhole that blocks ads and trackers. It is a great tool to protect your privacy and speed up your browsing experience.

Pi-hole is very easy to install and configure. You just need a Raspberry Pi or any other Linux machine. You can find the installation instructions on the [Pi-hole website](https://pi-hole.net/).

Pi-hole also provides a web interface where you can see the statistics of your DNS server. You can see how many requests have been blocked, which domains have been blocked, etc.

## DNS over HTTPS (dnscrypt-proxy)

While Pi-hole is a great tool to block ads and trackers, it does not encrypt your DNS requests. Your ISP can still see every website you visit. To solve this problem, I use [dnscrypt-proxy](https://www.dnscrypt.org) to encrypt my DNS requests over HTTPS.

The default DNS server provided by dnscrypt-proxy is Cloudflare (which is for the moment privacy-friendly) but you can choose any other DNS server that supports DNS over HTTPS and configure it in the dnscrypt-proxy configuration file.

Since the configuration of Pi-hole is made from the web interface, you need to configure it to use dnscrypt-proxy as its upstream DNS server. You can find the instructions on the [Pi-hole website](https://pi-hole.net/). The IP address of the dnscrypt-proxy server is `10.42.20.100`.

## Conclusion

The DNS is a very important part of the internet. It is like a phone book for the internet. I have configured a DNS server in my home network to avoid using the DNS server provided by my ISP. I use Pi-hole as my DNS server to block ads and trackers. I also use dnscrypt-proxy to encrypt my DNS requests over HTTPS. This way, my ISP cannot see every website I visit and I can block ads and trackers natively from all my devices without installing any ad blocker.
