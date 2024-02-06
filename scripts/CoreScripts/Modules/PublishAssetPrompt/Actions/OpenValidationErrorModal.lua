-- Action to open the ValidationErrorModal that appears over a prompt if validation Error occurred
local CorePackages = game:GetService("CorePackages")
local Action = require(CorePackages.Rodux).makeActionCreator

return Action(script.Name, function(errorMessage)
	return {
		errorMessage = errorMessage,
	}
end)
