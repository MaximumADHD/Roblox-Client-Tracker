local VirtualEvents = script:FindFirstAncestor("VirtualEvents")
local enums = require(VirtualEvents.enums)

return function(virtualEvent)
	if
		virtualEvent.userRsvpStatus == enums.RsvpStatus.Going
		or virtualEvent.userRsvpStatus == enums.RsvpStatus.MaybeGoing
	then
		return true
	else
		return false
	end
end
