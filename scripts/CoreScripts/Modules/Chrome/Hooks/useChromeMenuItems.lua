local ChromeService = require(script.Parent.Parent.Service)
local ChromeTypes = require(script.Parent.Parent.Service.Types)
local useObservableValue = require(script.Parent.useObservableValue)

return function()
	return (useObservableValue(ChromeService:menuList()) or {}) :: ChromeTypes.MenuList
end
