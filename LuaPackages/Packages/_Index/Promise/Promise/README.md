# Rotriever Registory Publishing Proxy

A repository for publishing arbitrary rotriever packages to the registry. This is mostly intended for one-off publishes or if publishing a package from a public repository.

## Steps

1. Create a branch for the package you want to publish
2. Clone the contents of your package (src + rotriever.toml) into the branch
    - Ensure the package verion is updated
    - Ensure the following is present in your rotriever.toml:
        ```toml
        [config]
        registry_index = true
        ```
3. Run the "Publish" workflow action on your branch
