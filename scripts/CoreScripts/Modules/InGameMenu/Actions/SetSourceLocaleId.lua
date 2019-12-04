local CorePackages = game:GetService("CorePackages")

local Action = require(CorePackages.AppTempCommon.Common.Action)

return Action("SET_SOURCE_LOCALE_ID", function(localeId)
	return {
		localeId = localeId,
	}
end)