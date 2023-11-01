local CorePackages = game:GetService("CorePackages")

local Action = require(CorePackages.Rodux).makeActionCreator

return Action(script.Name, function(title, bodyText, dismissCallback)
	return {
		title = title,
		bodyText = bodyText,
		dismissCallback = dismissCallback,
	}
end)
