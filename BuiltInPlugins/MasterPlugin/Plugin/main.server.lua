
local CorePackages
repeat
	wait()
	CorePackages = game:FindService("CorePackages")
until CorePackages

if settings():GetFFlag("StudioEnableGameLocalizationTableTools") then
	require(CorePackages.LocalizationTools.Main)(plugin, settings().Studio)
else
	local LocalizationPlugin = require(CorePackages.LocalizationMenuOnly.Main)
	LocalizationPlugin(plugin)
end
