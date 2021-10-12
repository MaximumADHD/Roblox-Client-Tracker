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
	local RefactorFlags = require(Plugin.Packages._Index.DeveloperFramework.DeveloperFramework.Util.RefactorFlags)
	RefactorFlags.THEME_REFACTOR = true

	-- New Plugin Setup: Encouraged to turn on roact configs when developing and off when releasing.
	-- Tools like the Roact Inspector need element tracing for some functionality to work.
	local enableRoactConfigs = false
	if enableRoactConfigs then
		local Roact = require(Plugin.Packages.Roact)
		Roact.setGlobalConfig({
			elementTracing = true,
			propValidation = true,
			typeChecks = true
		})
	end
end
