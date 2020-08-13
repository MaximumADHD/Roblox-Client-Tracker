local CorePackages = game:GetService("CorePackages")

local Action = require(CorePackages.AppTempCommon.Common.Action)
local t = require(CorePackages.Packages.t)
local maybeAssert = require(script.Parent.Parent.Helpers.maybeAssert)

-- The `settings` table overwrites the table returned from `settings.lua`. It's
-- a way for users to map over existing settings.

return Action(script.Name, function(settings)
	maybeAssert(t.table(settings))

	return {
		settings = settings,
	}
end)
