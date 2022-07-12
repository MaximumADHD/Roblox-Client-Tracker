local GameMetadataController = {}
GameMetadataController.__index = GameMetadataController

function GameMetadataController.new(networking)
	local self = {}

	self.__networking = networking
	self.__metadataCache = {
		--[[
		[gameId] = {
			rootPlaceId = 123456789,
			creatorId = 12345678,
			creatorName = "builderman",
			creatorType = Enum.CreatorType.User,
		}
		]]
	}

	return setmetatable(self, GameMetadataController)
end

function GameMetadataController:universesV1GET(gameId)
	local networking = self.__networking

	return networking:get("develop", "/v1/universes/"..gameId)
end

function GameMetadataController:getUniverseMetadata(gameId)
	if not self.__metadataCache[gameId] then
		local response = self:universesV1GET(gameId):await()

		-- If metadata was coalesced we could have already written to the cache
		if not self.__metadataCache[gameId] then
			local metadata = response.responseBody
			self.__metadataCache[gameId] = {
				rootPlaceId = metadata.rootPlaceId,
				creatorId = metadata.creatorTargetId,
				creatorName = metadata.creatorName,
				creatorType = Enum.CreatorType[metadata.creatorType]
			}
		end
	end

	return self.__metadataCache[gameId]
end

function GameMetadataController:getRootPlace(gameId)
	local universeMetadata = self:getUniverseMetadata(gameId)

	return universeMetadata.rootPlaceId
end

function GameMetadataController:getCreatorId(gameId)
	local universeMetadata = self:getUniverseMetadata(gameId)

	return universeMetadata.creatorId
end

function GameMetadataController:getCreatorName(gameId)
	local universeMetadata = self:getUniverseMetadata(gameId)

	return universeMetadata.creatorName
end

function GameMetadataController:getCreatorType(gameId)
	local universeMetadata = self:getUniverseMetadata(gameId)

	return universeMetadata.creatorType
end

return GameMetadataController