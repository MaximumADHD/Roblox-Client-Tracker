# SafeFlags

[![CI Status](https://github.com/Roblox/safe-flags-internal/actions/workflows/ci.yml/badge.svg)](https://github.com/Roblox/safe-flags-internal/actions/workflows/ci.yml)

SafeFlags makes it possible to use the internal flagging API in all Script contexts. The main use case is to allow our public packages to be flagged while also safe to consumer in user-level Scripts.

"Safe" in this context simply means that flags can be used without throwing errors in lower security contexts, while also returning sensible defaults in those cases.

## Installation

### Rotriever (Recommended)

SafeFlags can be installed with Rotriever by including it as a dependency in your `rotriever.toml` file.

```toml
[dependencies]
SafeFlags = "github.com/Roblox/safe-flags-internal@x.x.x"
```

### Roblox Studio

Download a copy of the rbxm from the [latest release](https://github.com/Roblox/safe-flags-internal/releases/latest) under the Assets section, then drag and drop the file into Roblox Studio to add it to your experience.

## API 

The API members are safe wrappers around the flagging API that will fail gracefully in cases where the current security level cannot access flags.

Each API member returns a function to get the current value during runtime, which is a pattern commonly used to ensure flagged changes can be tested with `game:SetFastFlagForTesting`.

### createGetFFlag

`createGetFFlag(name: string, value: boolean?): (() -> boolean)`

Safe wrapper around `game:DefineFastFlag` and `game:GetFastFlag`.

`value` is set to false by default since that is the most common default flag value. In most cases flags are written with the intention of enabling new behavior, rather than disabling behavior.

This default value is returned in security contexts that cannot access the flagging API.

Usage:

```luau
local getFFlagEnableNewBehavior = SafeFlags.createGetFFlag("EnableNewBehavior")

local function doSomething()
	if getFFlagEnableNewBehavior() then
		print("new")
	else
		print("old")
	end
end

return doSomething
```

### createGetFInt

`createGetFInt(name: string, value: number): (() -> number)`

Safe wrapper around `game:DefineFastInt` and `game:GetFastInt`.

The default value is returned in security contexts that cannot access the flagging API.

```luau
local getFIntCooldownSeconds = SafeFlags.createGetFInt("CooldownSeconds", 10)
local lastRequestTime: number?

local function hitEndpoint()
	if not lastRequestTime or lastRequestTime - os.time() >= getFIntCooldownSeconds() then
		request("https://example.com")
		lastRequestTime = os.time()
	end
end

return hitEndpoint
```

### createGetFString

`createGetFString(name: string, value: string): (() -> string)`

Safe wrapper around `game:DefineFastString` and `game:GetFastString`.

This default value is returned in security contexts that cannot access the flagging API.

```luau
local getFStringUpsellUrl = SafeFlags.createGetFString("UpsellUrl", "https://create.roblox.com/store/models")

local function upsell()
	return `Discover development assets on the Creator Store: {getFStringUpsellUrl()}`
end

return upsell
```

## License

See [LICENSE](LICENSE)
