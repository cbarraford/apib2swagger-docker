# apib2swagger-docker
apib2swagger running in a Docker container.

# How to use

Convert to a Swagger specification

```bash
$ docker run -it --rm -v $(pwd):/docs cbarraford/apib2swagger -i blueprint.apib -o swagger.json
```
