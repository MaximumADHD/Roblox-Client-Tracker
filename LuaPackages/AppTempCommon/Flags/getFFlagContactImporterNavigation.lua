--!strict

local getFFlagContactImporterEnabledForDev = require(script.Parent.getFFlagContactImporterEnabledForDev)

game:DefineFastFlag("ContactImporterNavigation", false)

return function()
	return getFFlagContactImporterEnabledForDev() or game:GetFastFlag("ContactImporterNavigation")
end
