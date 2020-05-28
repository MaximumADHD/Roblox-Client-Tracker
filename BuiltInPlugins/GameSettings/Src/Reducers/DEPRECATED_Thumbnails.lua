--[[
	Reducer for loaded thumbnails.
	Stores a CurrentStatus defining what the current status of the app is.
]]

-- TODO (awarwick) 5/17/2020 Remove with FFlagGameSettingsNetworkRefactor

local Plugin = script.Parent.Parent.Parent
local Cryo = require(Plugin.Cryo)
local Rodux = require(Plugin.Rodux)

local PermissionsConstants = require(Plugin.Src.Components.Permissions.PermissionsConstants)

local DEFAULT_STATE = {[PermissionsConstants.UserSubjectKey] = {}, [PermissionsConstants.GroupSubjectKey] = {}}

if game:GetFastFlag("StudioGameSettingsResetStoreAction2") then
	return Rodux.createReducer(DEFAULT_STATE, {
		ResetStore = function(state, action)
			return DEFAULT_STATE
		end,

		DEPRECATED_AddLoadedThumbnail = function(state, action)
			local thumbnailType = action.thumbnailType
			local thumbnail = action.thumbnail
			local key = action.key

			return Cryo.Dictionary.join(state, {
				[thumbnailType] = Cryo.Dictionary.join(state[thumbnailType], {
					[key] = thumbnail
				})
			})
		end,
	})
else
	local AddLoadedThumbnail = require(Plugin.Src.Actions.DEPRECATED_AddLoadedThumbnail)

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
end