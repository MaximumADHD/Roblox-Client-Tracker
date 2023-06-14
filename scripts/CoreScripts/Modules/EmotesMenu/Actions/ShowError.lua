local CorePackages = game:GetService("CorePackages")

local Action = require(CorePackages.Rodux).makeActionCreator

return Action(script.Name, function(errorText)
    return {
        errorText = errorText,
    }
end)
