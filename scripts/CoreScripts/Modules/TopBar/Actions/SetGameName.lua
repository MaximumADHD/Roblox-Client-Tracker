-- Remove with FFlagTopBarDeprecateGameInfoRodux
local CorePackages = game:GetService("CorePackages")

local TopBar = script.Parent.Parent
local FFlagTopBarDeprecateGameInfoRodux = require(TopBar.Flags.FFlagTopBarDeprecateGameInfoRodux)

local Action = require(CorePackages.Packages.Rodux).makeActionCreator

return if FFlagTopBarDeprecateGameInfoRodux
	then nil :: never
	else  Action(script.Name, function(gameName)
		return {
			gameName = gameName,
		}
	end)
