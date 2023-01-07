local PYMKCarousel = script.Parent.Parent
local dependencies = require(PYMKCarousel.dependencies)
local EventStreamActionList = require(PYMKCarousel.Analytics.EventStreamActionList)
local EventNames = require(PYMKCarousel.Analytics.EventNames)
local llama = dependencies.llama

return function(name: any, additionalInfo)
	assert(EventNames.isEnumValue(name), "Invalid event name")

	local event = EventStreamActionList[name]
	return event.context.rawValue(),
		event.eventType.rawValue(),
		llama.Dictionary.join(event.additionalInfo, {
			btn = if event.additionalInfo and event.additionalInfo.btn
				then event.additionalInfo.btn.rawValue()
				else nil,
		}, additionalInfo)
end
