local Foundation = script:FindFirstAncestor("Foundation")
local Packages = Foundation.Parent
local ColorMode = require(Foundation.Enums.ColorMode)
local Device = require(Foundation.Enums.Device)
local Flags = require(Foundation.Utility.Flags)
local React = require(Packages.React)
local ThemeName = require(Foundation.Enums.ThemeName)
local Tokens = require(Foundation.Providers.Style.Tokens)

local styleSheetRegistry = require(Foundation.StyleSheet.StyleSheetRegistry)

type ColorMode = ColorMode.ColorMode
type Device = Device.Device
type ThemeName = ThemeName.ThemeName
type TokenOverrides = Tokens.TokenOverrides

local function useRegistryStyleSheet(
	themeName: ThemeName?,
	colorMode: ColorMode,
	device: Device,
	scale: number,
	tokenOverrides: TokenOverrides?
): (StyleSheet, ({ string }) -> ())
	local requestedRegistryTagsRef = React.useRef({} :: { [string]: boolean })
	-- Resolve without acquiring at render time; the layout effect below acquires on
	-- commit so discarded/StrictMode renders can't leak references.
	local registryStyleSheet = React.useMemo(function()
		return styleSheetRegistry.resolveStyleSheet(colorMode, device, scale, tokenOverrides, themeName)
	end, { themeName, colorMode, device, scale, tokenOverrides } :: { unknown })
	local registryStyleSheetRef = React.useRef(registryStyleSheet)
	registryStyleSheetRef.current = registryStyleSheet

	local addStyleTags = React.useCallback(function(tags)
		for _, tag in tags do
			requestedRegistryTagsRef.current[tag] = true
		end
		styleSheetRegistry.addStyleTags(registryStyleSheetRef.current, tags)
	end, {})

	React.useLayoutEffect(function()
		local requestedTags = {}
		for tag in requestedRegistryTagsRef.current do
			table.insert(requestedTags, tag)
		end
		styleSheetRegistry.addStyleTags(registryStyleSheet, requestedTags)

		if not Flags.FoundationStyleSheetRefCounting then
			return
		end

		-- Ref counting frees registry sheets for combinations no longer mounted.
		styleSheetRegistry.acquireStyleSheet(registryStyleSheet)
		return function()
			styleSheetRegistry.releaseStyleSheet(registryStyleSheet)
		end
	end, { registryStyleSheet })

	return registryStyleSheet, addStyleTags
end

return useRegistryStyleSheet
