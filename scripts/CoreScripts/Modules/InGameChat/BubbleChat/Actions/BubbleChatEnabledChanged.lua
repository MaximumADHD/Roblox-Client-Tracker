local CorePackages = game:GetService("CorePackages")

local Action = require(CorePackages.AppTempCommon.Common.Action)
local t = require(CorePackages.Packages.t)
local maybeAssert = require(script.Parent.Parent.Helpers.maybeAssert)

return Action(script.Name, function(enabled)
	maybeAssert(t.boolean(enabled))

	return {
        enabled = enabled,
	}
end)
