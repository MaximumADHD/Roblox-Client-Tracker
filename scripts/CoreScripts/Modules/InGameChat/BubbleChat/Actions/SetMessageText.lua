local CorePackages = game:GetService("CorePackages")

local Action = require(CorePackages.AppTempCommon.Common.Action)
local t = require(CorePackages.Packages.t)
local maybeAssert = require(script.Parent.Parent.Helpers.maybeAssert)

local check = t.tuple(t.string, t.string)

return Action(script.Name, function(messageId, newText)
	maybeAssert(check(messageId, newText))

	return {
		messageId = messageId,
		newText = newText,
	}
end)
