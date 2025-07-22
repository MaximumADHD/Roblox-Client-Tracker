-- Remove with FFlagTopBarSignalizeHealthBar
local CorePackages = game:GetService("CorePackages")

local TopBar = script.Parent.Parent
local FFlagTopBarSignalizeHealthBar = require(TopBar.Flags.FFlagTopBarSignalizeHealthBar)

local Action = require(CorePackages.Packages.Rodux).makeActionCreator

return if FFlagTopBarSignalizeHealthBar then nil :: never else Action(script.Name, function(isDead)
	return {
		isDead = isDead,
	}
end)
