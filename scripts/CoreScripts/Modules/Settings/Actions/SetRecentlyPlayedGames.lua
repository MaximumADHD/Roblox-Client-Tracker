local CorePackages = game:GetService("CorePackages")
--TODO: Currently Under Migration to CorePackages
local Action = require(CorePackages.AppTempCommon.Common.Action)
--

return Action("SetRecentlyPlayedGames", function(gameSortData)
	return {
		gameSortData = gameSortData,
	}
end)
