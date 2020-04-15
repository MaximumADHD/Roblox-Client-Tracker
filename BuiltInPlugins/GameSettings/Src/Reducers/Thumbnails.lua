--[[
	Reducer for loaded thumbnails.
	Stores a CurrentStatus defining what the current status of the app is.
]]

local Plugin = script.Parent.Parent.Parent
local Cryo = require(Plugin.Cryo)
local PermissionsConstants = require(Plugin.Src.Components.Permissions.PermissionsConstants)

local AddLoadedThumbnail = require(Plugin.Src.Actions.AddLoadedThumbnail)

local function Thumbnails(state, action)
	state = state or {[PermissionsConstants.UserSubjectKey] = {}, [PermissionsConstants.GroupSubjectKey] = {}}

	if action.type == AddLoadedThumbnail.name then
		local thumbnailType = action.thumbnailType
		local thumbnail = action.thumbnail
		local key = action.key

		return Cryo.Dictionary.join(state, {
			[thumbnailType] = Cryo.Dictionary.join(state[thumbnailType], {
				[key] = thumbnail
			})
		})
	end

	return state
end

return Thumbnails