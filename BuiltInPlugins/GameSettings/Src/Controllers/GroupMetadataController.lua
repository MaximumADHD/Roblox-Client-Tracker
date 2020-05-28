local Plugin = script.Parent.Parent.Parent
local Util = require(Plugin.Framework.Util)

local FileUtils = require(Plugin.Src.Util.FileUtils)

local Promise = Util.Promise

local GroupMetadataController = {}
GroupMetadataController.__index = GroupMetadataController

function GroupMetadataController.new(networking)
	local self = {}

	self.__networking = networking
	self.__metadataCache = {
		--[[
		[groupId] = {
			name = "Super Epic Building Group",
			ownerId = 12345678,
			ownerName = "builderman",
			memberCount = 12345678,
			isSequestered = false,
		}
		]]
	}
	self.__rolesetCache = {
		--[[
		[groupId] = {
			[rolesetId] = {
				rank = 255,
				name = "Owner of group",
				memberCount = 1,
			},
		}
		]]
	}

	return setmetatable(self, GroupMetadataController)
end

function GroupMetadataController:groupsV1GET(groupId)
	local networking = self.__networking

	return networking:get("groups", "/v1/groups/"..groupId)
end

function GroupMetadataController:groupsRolesV1GET(groupId)
	local networking = self.__networking

	return networking:get("groups", "/v1/groups/"..groupId.."/roles")
end

function GroupMetadataController:getGroupMetadata(groupId)
	if not self.__metadataCache[groupId] then
		local response = self:groupsV1GET(groupId):await()

		-- If metadata was coalesced we could have already written to the cache
		if not self.__metadataCache[groupId] then
			local metadata = response.responseBody
			self.__metadataCache[groupId] = {
				name = metadata.name,
				ownerId = metadata.owner.userId,
				ownerName = metadata.owner.username,
				memberCount = metadata.memberCount,
				isSequestered = metadata.isLocked,
			}
		end
	end

	return self.__metadataCache[groupId]
end

function GroupMetadataController:getRolesetMetadata(groupId)
	if not self.__rolesetCache[groupId] then
		local response = self:groupsRolesV1GET(groupId):await()

		-- If metadata was coalesced we could have already written to the cache
		if not self.__rolesetCache[groupId] then
			local metadata = response.responseBody
			local cacheEntry = {}

			for _,roleset in ipairs(metadata.roles) do
				cacheEntry[roleset.id] = {
					name = roleset.name,
					rank = roleset.rank,
					memberCount = roleset.memberCount,
				}
			end

			self.__rolesetCache[groupId] = cacheEntry
		end
	end

	return self.__rolesetCache[groupId]
end

function GroupMetadataController:getName(groupId)
	local groupMetadata = self:getGroupMetadata(groupId)

	return groupMetadata.name
end

function GroupMetadataController:getOwnerName(groupId)
	local groupMetadata = self:getGroupMetadata(groupId)

	return groupMetadata.ownerName
end

function GroupMetadataController:getOwnerId(groupId)
	local groupMetadata = self:getGroupMetadata(groupId)

	return groupMetadata.ownerId
end

function GroupMetadataController:getNumMembers(groupId)
	local groupMetadata = self:getGroupMetadata(groupId)

	return groupMetadata.memberCount
end

function GroupMetadataController:isSequestered(groupId)
	local groupMetadata = self:getGroupMetadata(groupId)

	return groupMetadata.isSequestered
end

function GroupMetadataController:getRolesets(groupId)
	local rolesetMetadata = self:getRolesetMetadata(groupId)

	return rolesetMetadata
end

return GroupMetadataController