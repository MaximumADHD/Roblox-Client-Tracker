-- Remove with FFlagTopBarDeprecateMoreMenuRodux
local CorePackages = game:GetService("CorePackages")

local TopBar = script.Parent.Parent
local FFlagTopBarDeprecateMoreMenuRodux = require(TopBar.Flags.FFlagTopBarDeprecateMoreMenuRodux)

local Action = require(CorePackages.Packages.Rodux).makeActionCreator

return if FFlagTopBarDeprecateMoreMenuRodux
	then nil :: never
	else Action(script.Name, function(enabled)
		return {
			enabled = enabled,
		}
	end)
