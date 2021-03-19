/usr/local/bin/docker-entrypoint.sh \
generate \
    -i ${PWD}/Clean.Architecture.ApiSpec.yaml \
    -g aspnetcore \
    -o ${PWD}/ \
    -c ${PWD}/openAPIServerGeneratorConfig.yml

/usr/local/bin/docker-entrypoint.sh \
generate \
    -i ${PWD}/Clean.Architecture.ApiSpec.yaml \
    -g csharp-netcore \
    -o ${PWD}/ \
    -c ${PWD}/openAPIClientGeneratorConfig.yml
