game:DefineFastFlag("ContactsAppReducerEnabled_v3", false)

local getFFlagContactImporterEnabledForDev = require(script.Parent.getFFlagContactImporterEnabledForDev)

return function()
	return getFFlagContactImporterEnabledForDev() or game:GetFastFlag("ContactsAppReducerEnabled_v3")
end
