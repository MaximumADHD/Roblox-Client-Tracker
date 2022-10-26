local CorePackages = game:GetService("CorePackages")

local Action = require(CorePackages.AppTempCommon.Common.Action)

return Action(script.Name, function(toastTitle, toastSubtitle)
	return {
		toastTitle = toastTitle,
		toastSubtitle = toastSubtitle,
	}
end)
