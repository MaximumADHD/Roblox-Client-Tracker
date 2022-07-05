--!strict

game:DefineFastFlag("ContactsAppReducerEnabled_v1", false)

local getFFlagContactImporterEnabledForDev = require(script.Parent.getFFlagContactImporterEnabledForDev)

return function()
	return getFFlagContactImporterEnabledForDev() or game:GetFastFlag("ContactsAppReducerEnabled_v1")
end
