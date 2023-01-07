local FriendsCarousel = script.Parent.Parent
local DiagActionList = require(FriendsCarousel.Analytics.DiagActionList)
local EventNames = require(FriendsCarousel.Analytics.EventNames)

return function(name: any)
	assert(EventNames.isEnumValue(name), "Invalid event name")

	local event = DiagActionList[name]
	return event.name, event.count or 1
end
