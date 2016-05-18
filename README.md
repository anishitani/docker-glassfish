# README #

* Version: 1.0.0
* Base: Debian Jessie

### Description

Raw image of the Glassfish server.

### Tags

The Glassfish version availables are:
- 3.1.2.2
- 4.1
- 4.1.1

This versions also represent the tags of the docker container.

### Usage

```bash
docker build -t gf-image .
docker run --name gf-container -it -p 4848:4848 -p 8080:8080 gf-image
```

### Environment Variables
- `GF_MAJOR`: Glassfish major version
- `GF_MINOR`: Glassfish minor version
- `GF_BUILD`: Glassfish build version
- `GF_VERSION`: Glassfish version
- `GF_DIR`: Glassfish install directory
