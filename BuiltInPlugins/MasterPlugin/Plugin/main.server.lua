
local CorePackages
repeat
	wait()
	CorePackages = game:FindService("CorePackages")
until CorePackages

if settings():GetFFlag("StudioLocalizationPluginV2") then
	require(CorePackages.LocalizationTools.Main)(plugin, settings().Studio)
else
	require(CorePackages.LocalizationTools_DEPRECATED.Main)(plugin, settings().Studio)
end
