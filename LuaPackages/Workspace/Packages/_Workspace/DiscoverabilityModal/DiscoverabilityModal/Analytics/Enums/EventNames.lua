local DiscoverabilityModal = script.Parent.Parent.Parent
local dependencies = require(DiscoverabilityModal.dependencies)
local enumerate = dependencies.enumerate

return enumerate(script.Name, {
	DiscoverabilityModalLoad = "discoverabilityModalLoad",
	DiscoverabilityModalContinue = "discoverabilityModalDiscoverableContinue",
	DiscoverabilityModalClose = "discoverabilityModalDiscoverableClose",
	DiscoverabilityModalRadioButtonClick = "discoverabilityModalRadioButtonClick",
})
