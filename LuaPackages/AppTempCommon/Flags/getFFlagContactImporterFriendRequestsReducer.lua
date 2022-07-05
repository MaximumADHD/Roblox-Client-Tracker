--!strict

local getFFlagContactImporterEnabledForDev = require(script.Parent.getFFlagContactImporterEnabledForDev)

game:DefineFastFlag("ContactImporterFriendRequestsReducer", false)

return function()
	return getFFlagContactImporterEnabledForDev() or game:GetFastFlag("ContactImporterFriendRequestsReducer")
end
