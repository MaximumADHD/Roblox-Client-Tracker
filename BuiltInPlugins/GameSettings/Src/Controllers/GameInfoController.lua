local Plugin = script.Parent.Parent.Parent
local Util = require(Plugin.Framework.Util)

local FileUtils = require(Plugin.Src.Util.FileUtils)

local Promise = Util.Promise
local Symbol = Util.Symbol

local FFlagStudioAllowNullDescriptions = game:DefineFastFlag("StudioAllowNullDescriptions", false)

local GameInfoController = {}
GameInfoController.__index = GameInfoController

GameInfoController.NameModerated = Symbol.named("NameModerated")
-- TODO this is unused because the endpoint returns the name was moderated whenever the description is blocked
GameInfoController.DescriptionModerated = Symbol.named("DescriptionModerated")

function GameInfoController.new(networking)
	local self = {}

	self.__networking = networking

	return setmetatable(self, GameInfoController)
end

function GameInfoController:configurationV2GET(gameId)
	local networking = self.__networking

	return networking:get("develop", "/v2/universes/"..gameId.."/configuration")
end

function GameInfoController:iconV1GET(gameId)
	local networking = self.__networking

	return networking:get("develop", "/v1/universes/"..gameId.."/icon")
end

function GameInfoController:thumbnailsV2GET(gameId)
	local networking = self.__networking

	return networking:get("games", "/v1/games/"..gameId.."/media")
end

function GameInfoController:configurationV2PATCH(gameId, configuration)
	local networking = self.__networking

	return networking:patch("develop", "/v2/universes/"..gameId.."/configuration", {
		Body = configuration
	})
end

function GameInfoController:iconV1POST(gameId, icon)
	local networking = self.__networking

	local options = FileUtils.GetAssetPublishRequestInfo(icon)
	options.Method = nil

	return networking:post("publish", "/v1/games/"..gameId.."/icon", options)
end

function GameInfoController:thumbnailV1POST(gameId, thumbnail)
	local networking = self.__networking

	local options = FileUtils.GetAssetPublishRequestInfo(thumbnail)
	options.Method = nil

	return networking:post("publish", "/v1/games/"..gameId.."/thumbnail/image", options)
end

function GameInfoController:thumbnailV1DELETE(gameId, thumbnailId)
	local networking = self.__networking

	return networking:delete("develop", "/v1/universes/"..gameId.."/thumbnails/"..thumbnailId)
end

function GameInfoController:thumbnailOrderV1POST(gameId, thumbnailsOrder)
	local networking = self.__networking

	return networking:post("develop", "/v1/universes/"..gameId.."/thumbnails/order", {
		Body = {
			thumbnailIds = thumbnailsOrder,
		},
	})
end

function GameInfoController:getName(gameId)
	local response = self:configurationV2GET(gameId):await()
	return response.responseBody.name
end

function GameInfoController:setName(gameId, name)
	local returnError
	self:configurationV2PATCH(gameId, {name = name}):catch(function(response)
		if response.responseCode == 400 then
			for _,err in ipairs(response.responseBody.errors) do
				if err.code == 7 then
					returnError = GameInfoController.NameModerated
				end
			end
		end
	end):await()

	if returnError then
		error(returnError)
	end
end

function GameInfoController:getDescription(gameId)
	local response = self:configurationV2GET(gameId):await()
	return FFlagStudioAllowNullDescriptions and (response.responseBody.description or "") or response.responseBody.description
end

function GameInfoController:setDescription(gameId, description)
	self:configurationV2PATCH(gameId, {description = description}):await()
end

function GameInfoController:getGenre(gameId)
	local response = self:configurationV2GET(gameId):await()
	return response.responseBody.genre
end

function GameInfoController:setGenre(gameId, genre)
	self:configurationV2PATCH(gameId, {genre = genre}):await()
end

function GameInfoController:getSupportedDevices(gameId)
	local response = self:configurationV2GET(gameId):await()
	local devices = response.responseBody.playableDevices

	return devices
end

function GameInfoController:setSupportedDevices(gameId, supportedDevices)
	self:configurationV2PATCH(gameId, {playableDevices = supportedDevices}):await()
end

function GameInfoController:getThumbnails(gameId)
	local response = self:thumbnailsV2GET(gameId):await()

	return response.responseBody.data
end

function GameInfoController:addThumbnails(gameId, thumbnailFiles)
	local addRequests = {}
	local newIds = {}

	for _,thumbnailFile in ipairs(thumbnailFiles) do
		table.insert(addRequests, self:thumbnailV1POST(gameId, thumbnailFile):andThen(function(response)
			local uploadedId = response.responseBody.targetId
			newIds[thumbnailFile] = uploadedId
		end))
	end

	Promise.all(addRequests):await()

	return newIds
end

function GameInfoController:removeThumbnails(gameId, thumbnailIds)
	local deleteRequests = {}
	for _,thumbnailId in ipairs(thumbnailIds) do
		table.insert(deleteRequests, self:thumbnailV1DELETE(gameId, thumbnailId))
	end

	Promise.all(deleteRequests):await()
end

function GameInfoController:setThumbnailsOrder(gameId, thumbnailsOrder)
	self:thumbnailOrderV1POST(gameId, thumbnailsOrder):await()
end

function GameInfoController:getIcon(gameId)
	local response = self:iconV1GET(gameId):await()
	local iconAssetId = response.responseBody.imageId
	local isApproved = response.responseBody.isApproved

	return iconAssetId and "rbxassetid://"..iconAssetId or nil, isApproved
end

function GameInfoController:setIcon(gameId, icon)
	self:iconV1POST(gameId, icon):await()
end

return GameInfoController