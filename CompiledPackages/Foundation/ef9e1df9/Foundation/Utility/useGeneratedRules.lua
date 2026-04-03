local Foundation = script:FindFirstAncestor("Foundation")
local Packages = Foundation.Parent
local React = require(Packages.React)

local Device = require(Foundation.Enums.Device)
local Theme = require(Foundation.Enums.Theme)
local getGeneratedRules = require(Foundation.Utility.getGeneratedRules)
type Theme = Theme.Theme
type Device = Device.Device

local function useGeneratedRules(theme: Theme, device: Device)
	return React.useMemo(function(): any
		return getGeneratedRules(theme, device)
	end, { theme, device } :: { unknown })
end

return useGeneratedRules
