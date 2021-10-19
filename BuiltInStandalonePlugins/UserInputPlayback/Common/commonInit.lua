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
	local DebugFlags = require(Plugin.Src.Util.DebugFlags)

	local RefactorFlags = require(Plugin.Packages._Index.DeveloperFramework.DeveloperFramework.Util.RefactorFlags)
	RefactorFlags.THEME_REFACTOR = true

	-- New Plugin Setup: Encouraged to turn on roact configs when developing and off when releasing.
	-- Tools like the Roact Inspector need element tracing for some functionality to work.
	if DebugFlags.EnableRoactConfigs() then
		local Roact = require(Plugin.Packages.Roact)
		Roact.setGlobalConfig({
			elementTracing = true,
			propValidation = true,
			typeChecks = true
		})
	end
end
