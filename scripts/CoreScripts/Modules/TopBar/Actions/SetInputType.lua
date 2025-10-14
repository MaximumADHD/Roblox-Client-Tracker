-- Remove with FFlagTopBarDeprecateDisplayOptionsRodux

local CorePackages = game:GetService("CorePackages")

local TopBar = script.Parent.Parent
local FFlagTopBarDeprecateDisplayOptionsRodux = require(TopBar.Flags.FFlagTopBarDeprecateDisplayOptionsRodux)

local Action = require(CorePackages.Packages.Rodux).makeActionCreator

return if FFlagTopBarDeprecateDisplayOptionsRodux
	then nil :: never 
	else Action(script.Name, function(inputType)
	return {
		inputType = inputType,
	}
end)
