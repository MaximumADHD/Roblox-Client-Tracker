local CorePackages = game:GetService("CorePackages")
local GetFFlagRemoveABTestServiceWaitStartup = require(CorePackages.AppTempCommon.Flags.GetFFlagRemoveABTestServiceWaitStartup)

game:DefineFastFlag("RemoveABTestServiceInitAndCleanup", false)

return function()
	return game:GetFastFlag("RemoveABTestServiceInitAndCleanup") and GetFFlagRemoveABTestServiceWaitStartup()
end
