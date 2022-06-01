--[[
	Performs common initialisation for plugin at most once.
]]
local commonInitCalled = false

return function()
	if commonInitCalled then
		return
	end
	commonInitCalled = true

	local Plugin = script.Parent.Parent
	local Roact = require(Plugin.Packages.Roact)
	local DebugFlags = require(Plugin.Src.Util.DebugFlags)

	if DebugFlags.EnableRoactConfigs() then
		Roact.setGlobalConfig({
			elementTracing = true,
			propValidation = true,
			typeChecks = true
		})
	end
end
