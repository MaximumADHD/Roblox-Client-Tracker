local PlaceInfoRodux = script:FindFirstAncestor("PlaceInfoRodux")
local Packages = PlaceInfoRodux.Parent

local Action = require(Packages.Rodux).makeActionCreator

return Action(script.Name, function(placeIds)
	return {
		placeIds = placeIds,
	}
end)
