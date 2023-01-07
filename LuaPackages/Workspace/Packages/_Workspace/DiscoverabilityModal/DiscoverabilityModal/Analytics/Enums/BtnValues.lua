local DiscoverabilityModal = script.Parent.Parent.Parent
local dependencies = require(DiscoverabilityModal.dependencies)
local enumerate = dependencies.enumerate

return enumerate(script.Name, {
	ContactImporter = "contactImporter",
	Close = "closeX",
})
