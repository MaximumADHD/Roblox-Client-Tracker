local CorePackages = game:GetService("CorePackages")

local Action = require(CorePackages.AppTempCommon.Common.Action)

return Action("SET_PLACE_INFO", function(placeName, placeDescription)
	return {
		placeName = placeName,
		placeDescription = placeDescription,
	}
end)