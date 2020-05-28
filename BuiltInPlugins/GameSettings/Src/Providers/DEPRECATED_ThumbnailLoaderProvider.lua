--TODO (mwang) DEPRECATD, remove with FFlagStudioConvertGameSettingsToDevFramework
local ContentProvider = game:GetService("ContentProvider")
local GroupService = game:GetService("GroupService")
local Players = game:GetService("Players")

local Plugin = script.Parent.Parent.Parent
local Roact = require(Plugin.Roact)
local AddLoadedThumbnail = require(Plugin.Src.Actions.DEPRECATED_AddLoadedThumbnail)

local PermissionsConstants = require(Plugin.Src.Components.Permissions.PermissionsConstants)

local thumbnailLoaderKey = require(Plugin.Src.Keys.thumbnailLoaderKey)

local ThumbnailLoaderProvider = Roact.Component:extend("ThumbnailLoaderProvider")

function ThumbnailLoaderProvider:init()
	local store = self.props.store

	if store == nil then
		error("Error initializing ThumbnailLoaderProvider. Expected a `store` prop.")
	end

	local pendingPreloads = {[PermissionsConstants.UserSubjectKey] = {}, [PermissionsConstants.GroupSubjectKey] = {}}

	-- TODO (awarwick) 5/14/2019  We will have separate silhouettes for groups/users when design
	-- gets us assets, so make this forwards-compatible with silhouettes per subjectType
	local function getSilhouette(subjectType)
		return "rbxassetid://924320031"
	end

	local function fetchThumbnailAsync(subjectType, subjectId)
		-- This will be called multiple times (e.g. first time UI renders, it calls this for all thumbnails;
		-- then after one loads, it redraws UI and fetches other thumbnails again). So skip fetching if one
		-- is already in-progress
		if pendingPreloads[subjectType][subjectId] then return end
		pendingPreloads[subjectType][subjectId] = true

		spawn(function()
			local asset

			-- There are no web endpoints we can use to get thumbnails that Lua can use. We have to use these
			-- APIs that are subject to throttling/etc until we can. ThumbnailSize for headshots can stay
			-- hardcoded until then too.
			if subjectType == PermissionsConstants.UserSubjectKey then
				asset = Players:GetUserThumbnailAsync(subjectId, Enum.ThumbnailType.HeadShot, Enum.ThumbnailSize.Size60x60)
			elseif subjectType == PermissionsConstants.GroupSubjectKey then
				asset = GroupService:GetGroupInfoAsync(subjectId).EmblemUrl
			end

			ContentProvider:PreloadAsync({asset})
			pendingPreloads[subjectType][subjectId] = nil

			store:dispatch(AddLoadedThumbnail(subjectType, asset, subjectId))
		end)
	end

	self._context[thumbnailLoaderKey] = {
		getThumbnail = function(subjectType, subjectId)
			local state = store:getState()
			local thumbnailCache = state.Thumbnails
			
			if thumbnailCache[subjectType][subjectId] then
				return thumbnailCache[subjectType][subjectId]
			end

			fetchThumbnailAsync(subjectType, subjectId)

			return getSilhouette(subjectType)
		end
	}
end

function ThumbnailLoaderProvider:render()
	return Roact.oneChild(self.props[Roact.Children])
end

return ThumbnailLoaderProvider