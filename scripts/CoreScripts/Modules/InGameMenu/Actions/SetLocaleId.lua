local CorePackages = game:GetService("CorePackages")

local Action = require(CorePackages.Rodux).makeActionCreator

return Action("SET_LOCALE_ID", function(localeId)
	return {
		newLocaleId = localeId,
	}
end)
