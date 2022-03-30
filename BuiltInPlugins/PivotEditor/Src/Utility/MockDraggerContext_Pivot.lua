local Plugin = script.Parent.Parent.Parent

local DraggerFramework = Plugin.Packages.DraggerFramework
local DraggerContext_FixtureImpl = require(DraggerFramework.Implementation.DraggerContext_FixtureImpl)

local DraggerContext = {}

function DraggerContext.new(...)
	local context = DraggerContext_FixtureImpl.new(...)
	function context:shouldSnapPivotToGeometry()
		return true
	end
	return context
end

return DraggerContext
