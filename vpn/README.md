# The VPN section

In this section, we will cover the VPN (Virtual Private Network) and how do I have configured it in my home network.

## Basic concepts

A VPN is a secure connection between your device and the internet. When you connect to a VPN server, your device creates an encrypted tunnel to the server. All your internet traffic goes through this tunnel, so your ISP the unencrypted traffic.

Why is this important? Because it protects your privacy and security. When you connect to a public Wi-Fi network, anyone can see your internet traffic. If you use a VPN, your internet traffic is encrypted and secure.

## VPN server (WireGuard)

I have configured a VPN server in my home network to protect my privacy and security. I use [WireGuard](https://www.wireguard.com/) as my VPN server. WireGuard is a modern VPN protocol that is faster and more secure than other VPN protocols like OpenVPN.

WireGuard is very easy to install and configure on any devices (Linux, Windows, macOS, Android, iOS). You can find the installation instructions on the [WireGuard website](https://www.wireguard.com/).

By default, the `docker-compose.yaml` will generate 2 peers (clients) and put the configuration files in the `data` directory.

## Conclusion

The VPN is a very important tool to protect your privacy and security. I have configured a VPN server in my home network to protect my privacy and security. I use WireGuard as my VPN server because it is faster and more secure than other VPN protocols like OpenVPN. With WireGuard, I can connect to my home network from anywhere in the world and access my devices securely. I can also use it to protect my privacy when I connect to a public Wi-Fi network.
