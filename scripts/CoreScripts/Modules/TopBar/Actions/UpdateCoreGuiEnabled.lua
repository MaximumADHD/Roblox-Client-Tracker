-- Remove with FFlagTopBarDeprecateCoreGuiRodux
local CorePackages = game:GetService("CorePackages")

local TopBar = script.Parent.Parent
local FFlagTopBarDeprecateCoreGuiRodux = require(TopBar.Flags.FFlagTopBarDeprecateCoreGuiRodux)

local Action = require(CorePackages.Packages.Rodux).makeActionCreator

return if FFlagTopBarDeprecateCoreGuiRodux
	then nil :: never
	else Action(script.Name, function(coreGuiType, enabled)
		return {
			coreGuiType = coreGuiType,
			enabled = enabled,
		}
	end)
