local CorePackages = game:GetService("CorePackages")

local Action = require(CorePackages.AppTempCommon.Common.Action)

return Action("SET_LOCALE_ID", function(localeId)
	return {
		newLocaleId = localeId,
	}
end)