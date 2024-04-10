# self-hosted

This repository includes all my self-hosted applications. This cover a wide range of applications like DNS, HTTP, VPN, etc.

All the applications are running in Docker containers and are managed by Docker Compose. You are free to use only some part of this repository or the whole repository.

## Installation

To install the applications, you need to clone this repository and run the following command:

```bash
git clone https://github.com/iverly/self-hosted.git
cd self-hosted
```

The repository is organized by categories. Each category has its own applications. Each application has its own directory with a `docker-compose.yml` file.

But before installing the applications, you need to run the `docker-compose.yml` file in the root directory to create all networks needed:

```bash
docker-compose up -d
```

If you want to serve your applications with a reverse proxy, I'm using Traefik and you have to generate a root certificate authority and a certificate for the domain of your choice. You can generate them with the following command:

```bash
cd scripts/certificate
nano server.cnf # change the DNS.1 and DNS.2 to your domain (eg. DNS.1 = "example.com", DNS.2 = "*.example.com")
./generate.sh
```

Then, you can go to the directory of the application you want to install and run the `docker-compose.yml` file:

```bash
cd <category>/<application>
docker-compose up -d
```

## Categories

- [DNS](dns/README.md)
- [HTTP](http/README.md)
- [VPN](vpn/README.md)

# Contributing

Contributions are welcome. Please follow the standard Git workflow - fork, branch, and pull request.

# License

This project is licensed under the Apache 2.0 - see the `LICENSE` file for details.
