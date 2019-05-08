--[[
	Get game owner name (we only have ID) and thumbnail. We have to make this
	request separately from access permission endpoints since they don't explicitly
	return anything for the owner.
]]

local HttpService = game:GetService("HttpService")

local Plugin = script.Parent.Parent.Parent.Parent
local Promise = require(Plugin.Promise)
local Http = require(Plugin.Src.Networking.Http)

local GROUPS_URL = "v1/groups/%d"
local GROUPS_REQUEST_TYPE = "groups"

local USERS_URL = "users/%d"
local USERS_REQUEST_TYPE = "api"

-- We can't use rbxcdn assets returned by thumbnails.roblox.com, and won't be able to any time soon 
-- TODO (awarwick) 4/25/2019 Replace in CLISTUDIO-18914
function DEBUG_GetOwnerThumbnail()
	if game.CreatorType == Enum.CreatorType.Group then
		return game:GetService("GroupService"):GetGroupInfoAsync(game.CreatorId).EmblemUrl
	else
		-- Higher UI scale at OS level makes GuiObject size a lie and they're rendered larger
		-- Using a larger thumbnail than the GuiObject size so it doesn't look blurry when that happens
		-- Maybe use GuiService:GetResolutionScale() instead of a naive approach in final implementation?
		return game:GetService("Players"):GetUserThumbnailAsync(game.CreatorId, Enum.ThumbnailType.HeadShot, Enum.ThumbnailSize.Size150x150)
	end
end

local OwnerMetadata = {}

function OwnerMetadata.Get(universeId, DEBUG_loggedInUserId)
	local nameResponseField
	local nameRequestInfo
	
	if game.CreatorType == Enum.CreatorType.Group then
		nameResponseField = "name"
		nameRequestInfo = {
			Url = Http.BuildRobloxUrl(GROUPS_REQUEST_TYPE, GROUPS_URL, game.CreatorId),
			Method = "GET",
		}
	else
		nameResponseField = "Username"
		nameRequestInfo = {
			Url = Http.BuildRobloxUrl(USERS_REQUEST_TYPE, USERS_URL, game.CreatorId),
			Method = "GET",
		}
	end

	return Http.Request(nameRequestInfo):andThen(function(jsonResult)
		local result = HttpService:JSONDecode(jsonResult)
		local ownerName = result[nameResponseField]
		local groupOwnerUserId = game.CreatorType == Enum.CreatorType.Group and result.owner.userId or nil

		return Promise.new(function(resolve, reject)
			-- Prevent yielding
			spawn(function()
				resolve(DEBUG_GetOwnerThumbnail())
			end)
		end):andThen(function(thumbnail)
			return {
				ownerName = ownerName,
				ownerThumbnail = thumbnail,
				groupOwnerUserId = groupOwnerUserId,
			}
		end)
	end)
end

return OwnerMetadata