local Plugin = script.Parent.Parent.Parent

local Packages = Plugin.Packages
local Util = require(Packages.Framework).Util
local Action = Util.Action

return Action(script.Name, function(tabName, fieldName, hasError)
	return {
		tabName = tabName,
		fieldName = fieldName,
		hasError = hasError,
	}
end)
