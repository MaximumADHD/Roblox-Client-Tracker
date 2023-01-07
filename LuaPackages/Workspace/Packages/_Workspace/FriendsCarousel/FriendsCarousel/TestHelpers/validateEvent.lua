local FriendsCarousel = script.Parent.Parent
local dependencies = require(FriendsCarousel.dependencies)
local EventStreamActionList = require(FriendsCarousel.Analytics.EventStreamActionList)
local EventNames = require(FriendsCarousel.Analytics.EventNames)
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
