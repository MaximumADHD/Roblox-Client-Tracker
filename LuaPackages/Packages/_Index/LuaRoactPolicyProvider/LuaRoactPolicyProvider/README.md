<h1 align="center">PolicyProvider</h1>
<div align="center">
	To be used with GUAC, PolicyService, or any other feature flagging mechanism.
</div>

<div>&nbsp;</div>

PolicyProvider may be used with Roact components that need to be aware of feature-specific policies.

## Installation

### Filesystem
* Add this repository as a Rotriever package
```toml
[dependencies]
PolicyProvider = { git = "https://github.com/Roblox/lua-roact-policy-provider", rev = "master" }
```

## Documentation
Documentation for PolicyProvider is available [within the repository](docs/index.md).

## Publish Package For lua-apps
1. Bump version of LuaRoactPolicyProvider package in the `rotriever.toml` file
2. Go to the [actions tab](https://github.com/Roblox/lua-roact-policy-provider/actions)
3. Go to `Publish Rotriever Package` on the left hand side
4. Click `run workflow`