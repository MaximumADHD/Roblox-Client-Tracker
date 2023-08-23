local AnalyticsService = game:GetService("RbxAnalyticsService")

return function(eventName, eventTable: { [string]: string }?)
	if not eventTable then
		eventTable = {}
	end

	assert(eventTable ~= nil, "eventTable must not be nil")

	eventTable["gameId"] = tostring(game.GameId)
	eventTable["placeId"] = tostring(game.PlaceId)

	AnalyticsService:SendEventDeferred("rcc", "lua_chat_system", eventName, eventTable)
end
