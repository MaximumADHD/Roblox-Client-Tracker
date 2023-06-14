local CorePackages = game:GetService("CorePackages")

local Action = require(CorePackages.Rodux).makeActionCreator

return Action(script.Name, function(toastTitle, toastSubtitle)
	return {
		toastTitle = toastTitle,
		toastSubtitle = toastSubtitle,
	}
end)
