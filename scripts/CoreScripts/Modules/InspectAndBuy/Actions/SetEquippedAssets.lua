local CorePackages = game:GetService("CorePackages")
local Action = require(CorePackages.Packages.Rodux).makeActionCreator

return Action(script.Name, function(equippedAssets)
	return {
		equippedAssets = equippedAssets,
	}
end)
