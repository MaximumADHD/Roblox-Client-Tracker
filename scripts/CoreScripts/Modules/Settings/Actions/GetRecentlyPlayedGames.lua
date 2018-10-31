local CorePackages = game:GetService("CorePackages")
--TODO: Currently Under Migration to CorePackages
local Action = require(CorePackages.AppTempCommon.Common.Action)
--
return Action("GetRecentlyPlayedGames", function()
	return {}
end)
