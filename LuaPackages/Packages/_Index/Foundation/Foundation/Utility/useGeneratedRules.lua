local Foundation = script:FindFirstAncestor("Foundation")
local Packages = Foundation.Parent
local React = require(Packages.React)

local Theme = require(Foundation.Enums.Theme)
local Device = require(Foundation.Enums.Device)
type Theme = Theme.Theme
type Device = Device.Device

local function useGeneratedRules(theme: Theme, device: Device, colorUpdate: boolean)
	return React.useMemo(function(): any
		if colorUpdate then
			if theme == Theme.Dark then
				if device == Device.Console then
					return require(Foundation.Generated.StyleRules["Console-Dark-Foundation"])
				else
					return require(Foundation.Generated.StyleRules["Desktop-Dark-Foundation"])
				end
			elseif theme == Theme.Light then
				if device == Device.Console then
					return require(Foundation.Generated.StyleRules["Console-Light-Foundation"])
				else
					return require(Foundation.Generated.StyleRules["Desktop-Light-Foundation"])
				end
			end
		else
			if theme == Theme.Dark then
				if device == Device.Console then
					return require(Foundation.Generated.StyleRules["Console-Dark-UIBlox"])
				else
					return require(Foundation.Generated.StyleRules["Desktop-Dark-UIBlox"])
				end
			elseif theme == Theme.Light then
				if device == Device.Console then
					return require(Foundation.Generated.StyleRules["Console-Light-UIBlox"])
				else
					return require(Foundation.Generated.StyleRules["Desktop-Light-UIBlox"])
				end
			end
		end
		return {}
	end, { theme :: any, device, colorUpdate })
end

return useGeneratedRules
