local ContactImporter = script.Parent.Parent
local DiagEvents = require(ContactImporter.Analytics.DiagEvents)
local EventNames = require(ContactImporter.Analytics.Enums.EventNames)

return function(name: any)
	assert(EventNames.isEnumValue(name), "Invalid event name")

	local event = DiagEvents[name]
	return event.name, event.count or 1
end
