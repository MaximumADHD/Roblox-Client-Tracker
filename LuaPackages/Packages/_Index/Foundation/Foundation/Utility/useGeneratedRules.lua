local Foundation = script:FindFirstAncestor("Foundation")
local Packages = Foundation.Parent
local React = require(Packages.React)

local ColorMode = require(Foundation.Enums.ColorMode)
local Device = require(Foundation.Enums.Device)
local getGeneratedRules = require(Foundation.Utility.getGeneratedRules)
type ColorMode = ColorMode.ColorMode
type Device = Device.Device

local function useGeneratedRules(colorMode: ColorMode, device: Device)
	return React.useMemo(function(): any
		return getGeneratedRules(colorMode, device)
	end, { colorMode, device } :: { unknown })
end

return useGeneratedRules
