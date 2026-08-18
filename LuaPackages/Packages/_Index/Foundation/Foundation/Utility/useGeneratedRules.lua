local Foundation = script:FindFirstAncestor("Foundation")
local Packages = Foundation.Parent
local React = require(Packages.React)

local ColorMode = require(Foundation.Enums.ColorMode)
local Device = require(Foundation.Enums.Device)
local Flags = require(Foundation.Utility.Flags)
local ThemeName = require(Foundation.Enums.ThemeName)
local getGeneratedRules = require(Foundation.Utility.getGeneratedRules)

type ColorMode = ColorMode.ColorMode
type Device = Device.Device
type ThemeName = ThemeName.ThemeName

local function useGeneratedRules(themeName: ThemeName?, colorMode: ColorMode, device: Device)
	return React.useMemo(function(): any
		return getGeneratedRules(if Flags.FoundationThemeName then themeName else nil, colorMode, device)
	end, { if Flags.FoundationThemeName then themeName else nil, colorMode, device } :: { unknown })
end

return useGeneratedRules
