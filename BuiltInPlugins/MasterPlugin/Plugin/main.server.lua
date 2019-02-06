
local CorePackages
repeat
	wait()
	CorePackages = game:FindService("CorePackages")
until CorePackages

require(CorePackages.LocalizationTools.Main)(plugin, settings().Studio)
