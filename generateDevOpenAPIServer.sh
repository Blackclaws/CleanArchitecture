rm -r Clean.Architecture.Api.Server.Base
docker run -it --rm --user="$(id -u)" -v "${PWD}:/openapi" \
       openapitools/openapi-generator-cli \
       generate \
       -i /openapi/Clean.Architecture.ApiSpec.yml \
       -g aspnetcore \
       -o /openapi/ \
       -c /openapi/openAPIServerGeneratorConfig.yml
