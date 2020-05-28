-- TODO (awarwick) 5/17/2020 Remove with FFlagGameSettingsNetworkRefactor

local ContentProvider = game:GetService("ContentProvider")
local GroupService = game:GetService("GroupService")
local Players = game:GetService("Players")

local Plugin = script.Parent.Parent.Parent

local Roact = require(Plugin.Roact)
local Framework = Plugin.Framework
local ContextItem = require(Framework.ContextServices.ContextItem)
local Provider = require(Framework.ContextServices.Provider)

local AddLoadedThumbnail = require(Plugin.Src.Actions.DEPRECATED_AddLoadedThumbnail)

local PermissionsConstants = require(Plugin.Src.Components.Permissions.PermissionsConstants)

local ThumbnailLoader = ContextItem:extend("ThumbnailLoader")

function ThumbnailLoader.new(store)
    assert(store, "ThumbnailLoader.new: Expected a Rodux store.")

    local pendingPreloads = {[PermissionsConstants.UserSubjectKey] = {}, [PermissionsConstants.GroupSubjectKey] = {}}

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

    -- TODO (awarwick) 5/14/2019  We will have separate silhouettes for groups/users when design
    -- gets us assets, so make this forwards-compatible with silhouettes per subjectType
    local function getSilhouette(subjectType)
        return "rbxassetid://924320031"
    end

    local function getThumbnail(subjectType, subjectId)
        local state = store:getState()
        local thumbnailCache = state.Thumbnails

        if thumbnailCache[subjectType][subjectId] then
            return thumbnailCache[subjectType][subjectId]
        end

        fetchThumbnailAsync(subjectType, subjectId)

        return getSilhouette(subjectType)
    end

    local self = {
        store = store,

        getSilhouette = getSilhouette,

        fetchThumbnailAsync = fetchThumbnailAsync,

        getThumbnail = getThumbnail,
    }
    setmetatable(self, ThumbnailLoader)
    return self
end

function ThumbnailLoader:createProvider(root)
    return Roact.createElement(Provider, {
        ContextItem = self,
    }, {root})
end

return ThumbnailLoader