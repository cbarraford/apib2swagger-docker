# apib2swagger-docker
[apib2swagger](https://github.com/kminami/apib2swagger) running in a Docker container.

# How to use

Convert [API Blueprint][] to [Swagger][] specification.

```bash
$ docker run -it --rm -v $(pwd):/docs cbarraford/apib2swagger -i blueprint.apib -o swagger.json
```

[API Blueprint]: https://apiblueprint.org/ "API Blueprint"
[Swagger]: http://swagger.io/ "Swagger"
