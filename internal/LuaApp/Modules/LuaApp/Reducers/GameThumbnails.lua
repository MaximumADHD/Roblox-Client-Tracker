--[[
	A separate reducer for game thumbnails,setting
	it to a separate table. We are using the placeId rightNow
]]
local Modules = game:GetService("CoreGui").RobloxGui.Modules
local Immutable = require(Modules.Common.Immutable)
local SetGameThumbnails = require(Modules.LuaApp.Actions.SetGameThumbnails)

return function(state, action)
	state = state or {}

	if action.type == SetGameThumbnails.name then
		local tmpTable = {}
		for universeId, thumbnailData in pairs(action.thumbnails) do
			tmpTable[universeId] = thumbnailData.url
		end
		state = Immutable.JoinDictionaries(state, tmpTable)
	end

	return state
end