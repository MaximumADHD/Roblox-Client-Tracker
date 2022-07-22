--!strict

local getFFlagContactImporterEnabledForDev = require(script.Parent.getFFlagContactImporterEnabledForDev)

game:DefineFastFlag("ContactImporterPolicyEnabledV1", false)

return function()
	return getFFlagContactImporterEnabledForDev() or game:GetFastFlag("ContactImporterPolicyEnabledV1")
end
