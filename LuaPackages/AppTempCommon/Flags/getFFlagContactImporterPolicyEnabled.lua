--!strict

local getFFlagContactImporterEnabledForDev = require(script.Parent.getFFlagContactImporterEnabledForDev)

game:DefineFastFlag("ContactImporterPolicyEnabled", false)

return function()
	return getFFlagContactImporterEnabledForDev() or game:GetFastFlag("ContactImporterPolicyEnabled")
end
