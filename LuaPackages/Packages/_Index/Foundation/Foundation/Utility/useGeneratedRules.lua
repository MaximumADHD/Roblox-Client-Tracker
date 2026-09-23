local Foundation = script:FindFirstAncestor("Foundation")
local Packages = Foundation.Parent
local React = require(Packages.React)

local ColorMode = require(Foundation.Enums.ColorMode)
local Device = require(Foundation.Enums.Device)
local ThemeName = require(Foundation.Enums.ThemeName)
local getGeneratedRules = require(Foundation.Utility.getGeneratedRules)

type ColorMode = ColorMode.ColorMode
type Device = Device.Device
type ThemeName = ThemeName.ThemeName

local function useGeneratedRules(themeName: ThemeName?, colorMode: ColorMode, device: Device)
	return React.useMemo(function(): any
		return getGeneratedRules(themeName, colorMode, device)
	end, { themeName, colorMode, device } :: { unknown })
end

return useGeneratedRules
