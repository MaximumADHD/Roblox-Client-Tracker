local Plugin = script.Parent.Parent.Parent

local Libs = Plugin.Libs
local Util = require(Libs.Framework.Util)
local Action = Util.Action

return Action(script.Name, function(tabName, fieldName, hasError)
	return {
		tabName = tabName,
		fieldName = fieldName,
		hasError = hasError,
	}
end)
