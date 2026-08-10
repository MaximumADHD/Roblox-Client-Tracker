local Foundation = script:FindFirstAncestor("Foundation")
local Packages = Foundation.Parent
local ColorMode = require(Foundation.Enums.ColorMode)
local Device = require(Foundation.Enums.Device)
local React = require(Packages.React)
local Tokens = require(Foundation.Providers.Style.Tokens)

local styleSheetRegistry = require(Foundation.StyleSheet.StyleSheetRegistry)

type ColorMode = ColorMode.ColorMode
type Device = Device.Device
type TokenOverrides = Tokens.TokenOverrides

local function useRegistryStyleSheet(
	colorMode: ColorMode,
	device: Device,
	scale: number,
	tokenOverrides: TokenOverrides?
): (StyleSheet, ({ string }) -> ())
	local requestedRegistryTagsRef = React.useRef({} :: { [string]: boolean })
	local registryStyleSheet = React.useMemo(function()
		return styleSheetRegistry.getStyleSheet(colorMode, device, scale, tokenOverrides)
	end, { colorMode, device, scale, tokenOverrides } :: { unknown })
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
	end, { registryStyleSheet })

	return registryStyleSheet, addStyleTags
end

return useRegistryStyleSheet
