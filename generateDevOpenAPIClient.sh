rm -r Clean.Architecture.Api.Client
docker run -it --rm --user="$(id -u)" -v "${PWD}:/openapi" \
       openapitools/openapi-generator-cli \
       generate \
       -i /openapi/Clean.Architecture.ApiSpec.yml \
       -g csharp-netcore \
       -o /openapi/ \
       -c /openapi/openAPIClientGeneratorConfig.yml
