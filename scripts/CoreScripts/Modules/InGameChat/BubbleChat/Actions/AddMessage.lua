local CorePackages = game:GetService("CorePackages")

local Action = require(CorePackages.AppTempCommon.Common.Action)
local maybeAssert = require(script.Parent.Parent.Helpers.maybeAssert)
local Types = require(script.Parent.Parent.Types)

return Action(script.Name, function(message)
	maybeAssert(Types.IMessage(message))

	return {
		message = message,
	}
end)
