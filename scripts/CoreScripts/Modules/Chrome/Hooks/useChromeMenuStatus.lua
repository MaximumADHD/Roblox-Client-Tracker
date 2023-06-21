local ChromeService = require(script.Parent.Parent.Service)
local useObservableValue = require(script.Parent.useObservableValue)

return function()
	return useObservableValue(ChromeService:status())
end
