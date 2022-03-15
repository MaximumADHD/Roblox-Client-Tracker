local CorePackages = game:GetService("CorePackages")

local Action = require(CorePackages.AppTempCommon.Common.Action)

return Action("SET_CURRENT_PAGE", function(pageKey)
	return {
		newPage = pageKey,
	}
end)