local Foundation = script:FindFirstAncestor("Foundation")
local Packages = Foundation.Parent
local Device = require(Foundation.Enums.Device)
local React = require(Packages.React)
local Theme = require(Foundation.Enums.Theme)

local styleSheetRegistry = require(Foundation.StyleSheet.StyleSheetRegistry)

type Theme = Theme.Theme
type Device = Device.Device

local function useRegistryStyleSheet(theme: Theme, device: Device, scale: number): (StyleSheet, ({ string }) -> ())
	local requestedRegistryTagsRef = React.useRef({} :: { [string]: boolean })
	local registryStyleSheet = React.useMemo(function()
		return styleSheetRegistry.getStyleSheet(theme, device, scale)
	end, { theme, device, scale } :: { unknown })
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
