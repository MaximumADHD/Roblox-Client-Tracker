local StudioService = game:GetService("StudioService")

local Plugin = script.Parent.Parent.Parent
local DraggerContext_PluginImpl = require(Plugin.Packages.DraggerFramework.Implementation.DraggerContext_PluginImpl)

local DraggerContext = {}

function DraggerContext.new(...)
	local context = DraggerContext_PluginImpl.new(...)
	function context:shouldSnapPivotToGeometry()
		return StudioService.PivotSnapToGeometry
	end
	return context
end

return DraggerContext