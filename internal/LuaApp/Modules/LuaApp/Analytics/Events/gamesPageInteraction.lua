local PlayerService = game:GetService("Players")

-- gamesPageInteraction : sent when a user interacts with the games page
-- eventContext : (string) the location or context in which the event is occurring.
-- actionType : (string) the specific action performed by the user.
-- actionValue : (string) the id associated with the eventContext.
-- selectedIndex : (number) the index of the interacted object.
return function(eventStreamImpl, eventContext, actionType, actionValue, selectedIndex)
	assert(type(eventContext) == "string", "Expected eventContext to be a string")
	assert(type(actionType) == "string", "Expected actionType to be a string")
	assert(type(actionValue) == "string", "Expected actionValue to be a string")
	assert(type(selectedIndex) == "number", "Expected selectedIndex to be a number")

	local eventName = "gamesPageInteraction"
	local userId = tostring(PlayerService.LocalPlayer.UserId)

	eventStreamImpl:setRBXEventStream(eventContext, eventName, {
		aType = actionType,
		aValue = actionValue,
		pos = selectedIndex,
		uid = userId,
	})
end

--[[
	This event is super shitty and encapsulates too many things.
	Here's some possible values. Choose a row :
	------------------------------------------------------------------
	| actionType | eventContext  | actionValue     | selectedIndex   |
	------------------------------------------------------------------
	| click      |  TFMenu       | <timeFilterID>  | <index in menu> |
	------------------------------------------------------------------
	|            |  GFMenu       | <genreFilterID> | <index in menu> |
	------------------------------------------------------------------
	|            |  SFMenu       | <sortID>        | <index in menu> |
	------------------------------------------------------------------
	|            |  SeeAll       | <sortID>        | <index on page> |
	------------------------------------------------------------------

	The web is only used to seeing actionType be "click", "focus", and "offFocus".
	This does not cover mobile interactions, so "touch" is an acceptable alternative.
]]--