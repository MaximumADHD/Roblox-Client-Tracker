--!strict

local getFFlagContactImporterEnabledForDev = require(script.Parent.getFFlagContactImporterEnabledForDev)

game:DefineFastFlag("ContactImporterNavigation2", false)

return function()
	return getFFlagContactImporterEnabledForDev() or game:GetFastFlag("ContactImporterNavigation2")
end
