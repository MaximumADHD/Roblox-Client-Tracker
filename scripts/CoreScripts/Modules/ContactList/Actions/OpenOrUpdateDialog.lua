local CorePackages = game:GetService("CorePackages")

local Action = require(CorePackages.Rodux).makeActionCreator

return Action(script.Name, function(title, bodyText)
	return {
		title = title,
		bodyText = bodyText,
	}
end)
