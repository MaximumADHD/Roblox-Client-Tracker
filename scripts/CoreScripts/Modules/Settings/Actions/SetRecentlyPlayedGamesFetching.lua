local CorePackages = game:GetService("CorePackages")
--TODO: Currently Under Migration to CorePackages
local Action = require(CorePackages.AppTempCommon.Common.Action)
--
return Action("SetRecentlyPlayedGamesFetching", function(fetching)
	return {
		fetching = fetching,
	}
end)
