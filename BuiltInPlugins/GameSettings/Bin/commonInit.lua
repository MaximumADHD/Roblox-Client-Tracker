local commonInitCalled = false

return function()
	if commonInitCalled then
		return
	end
	commonInitCalled = true

	local Plugin = script.Parent.Parent

	local FFlagEnableGameSettingsStylizer = game:GetFastFlag("EnableGameSettingsStylizer")
	local RefactorFlags = require(Plugin.Packages._Index.DeveloperFramework.DeveloperFramework.Util.RefactorFlags)
	RefactorFlags.THEME_REFACTOR = FFlagEnableGameSettingsStylizer

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
