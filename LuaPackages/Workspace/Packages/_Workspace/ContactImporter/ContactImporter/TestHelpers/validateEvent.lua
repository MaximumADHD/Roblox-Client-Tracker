local ContactImporter = script.Parent.Parent
local dependencies = require(ContactImporter.dependencies)
local AnalyticsEvents = require(ContactImporter.Analytics.AnalyticsEvents)
local EventNames = require(ContactImporter.Analytics.Enums.EventNames)
local llama = dependencies.llama

return function(name: any, additionalInfo)
	assert(EventNames.isEnumValue(name), "Invalid event name")

	local event = AnalyticsEvents[name]
	return event.context.rawValue(),
		event.eventType.rawValue(),
		llama.Dictionary.join(event.additionalInfo, {
			btn = if event.additionalInfo and event.additionalInfo.btn
				then event.additionalInfo.btn.rawValue()
				else nil,
		}, additionalInfo)
end
