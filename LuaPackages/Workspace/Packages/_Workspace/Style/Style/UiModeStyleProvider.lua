--[[
	This is a thin wrapper around AppStyleProvider to provide device type information
	to UIBlox in order to receive the correct design tokens for the device
	This will probably be UiMode rather than DeviceType in the future.

	./AppStyleProvider.lua should effectively be considered deprecated in favor of this
	provider as it's presently just re-exports the default UIBlox AppStyleProvider implementation
]]

local Root = script:FindFirstAncestor("Style")
local Packages = Root.Parent
local Cryo = require(Packages.Cryo)
local React = require(Packages.React)
local dependencyArray = require(Packages.RoactUtils).Hooks.dependencyArray
local useDeviceType = require(Packages.RobloxAppHooks).useDeviceType
local AppStyleProvider = require(Packages.UIBlox).App.Style.AppStyleProvider

type Style = {
	themeName: string,
	fontName: string,
	deviceType: string?,
}

type Props = {
	style: Style,
	children: any,
}

local function UiModeStyleProvider(props: Props)
	local deviceType = useDeviceType()
	local style = props.style
	local appStyle = React.useMemo(function()
		return Cryo.Dictionary.join({
			deviceType = style.deviceType or deviceType,
		}, style)
	end, dependencyArray(style, deviceType))

	return React.createElement(AppStyleProvider, {
		style = appStyle,
	}, props.children)
end

return UiModeStyleProvider
