local PermissionsLoader = {}

local Plugin = script.Parent.Parent.Parent

local StudioService = game:GetService("StudioService")

local SetLoadState = require(Plugin.Src.Actions.SetLoadState)
local LoadState = require(Plugin.Src.Util.LoadState)

local SetCurrentUserPermissions = require(Plugin.Src.Actions.SetCurrentUserPermissions)
local SetCurrentGroupMetadata = require(Plugin.Src.Actions.SetCurrentGroupMetadata)
local SetCreatorType = require(Plugin.Src.Actions.SetCreatorType)
local SetCreatorName = require(Plugin.Src.Actions.SetCreatorName)
local SetCreatorId = require(Plugin.Src.Actions.SetCreatorId)
local SetCreatorFriends = require(Plugin.Src.Actions.SetCreatorFriends)
local SetGroupOwnerId = require(Plugin.Src.Actions.SetGroupOwnerId)
local SetGroupRolePermissions = require(Plugin.Src.Actions.SetGroupRolePermissions)

local FFlagManageCollaboratorsLoadRolePerms = game:GetFastFlag("ManageCollaboratorsLoadRolePerms")

function GetLoadFriendsJob(store, contextItems)
	local gameMetadataController = contextItems.gameMetadataController
	local socialController = contextItems.socialController
	local gameId = game.GameId
	
	return function()
		local ownerId = gameMetadataController:getCreatorId(gameId)
		local friends = socialController:getUserFriends(ownerId)

		store:dispatch(SetCreatorFriends(friends))
	end
end

function GetPermissionsLoadJobs(store, contextItems)
	local gameMetadataController = contextItems.gameMetadataController
	local groupMetadataController = contextItems.groupMetadataController
	local groupRolePermisionsController = contextItems.groupRolePermisionsController
	local gamePermissionsController = contextItems.gamePermissionsController

	local gameId = game.GameId
	
	local loadFriendsJob = GetLoadFriendsJob(store, contextItems)

	return {
		function()
			local ownerName = gameMetadataController:getCreatorName(gameId)
			local ownerId = gameMetadataController:getCreatorId(gameId)
			local ownerType = gameMetadataController:getCreatorType(gameId)

			local permissions, groupMetadata = gamePermissionsController:getPermissions(gameId, ownerName, ownerId, ownerType)

			store:dispatch(SetCurrentUserPermissions(permissions))
			store:dispatch(SetCurrentGroupMetadata(groupMetadata))
		end,
		function()
			local ownerType = gameMetadataController:getCreatorType(gameId)
			store:dispatch(SetCreatorType(ownerType))

			if ownerType == Enum.CreatorType.Group then
				local groupId = gameMetadataController:getCreatorId(gameId)
				local groupOwnerId = groupMetadataController:getOwnerId(groupId)

				store:dispatch(SetGroupOwnerId(groupOwnerId))

				-- We can only fetch permissions if this user is the owner
				if FFlagManageCollaboratorsLoadRolePerms and groupOwnerId == StudioService:GetUserId() then
					groupRolePermisionsController:clearCache()
					local perms = groupRolePermisionsController:getGroupRolePermissions(groupId)

					store:dispatch(SetGroupRolePermissions(perms))
				end
			elseif ownerType == Enum.CreatorType.User then
				loadFriendsJob()
			end
		end,
		function()
			local ownerName = gameMetadataController:getCreatorName(gameId)
			store:dispatch(SetCreatorName(ownerName))
		end,
		function()
			local ownerId = gameMetadataController:getCreatorId(gameId)
			store:dispatch(SetCreatorId(ownerId))
		end,
	}
end

function PermissionsLoader:LoadFriends()
	return function(store, contextItems)
		local loadFriendsJob = GetLoadFriendsJob(store, contextItems)
		
		-- coroutine here so we can make the api call asynchronously
		local job = coroutine.wrap(function()
			pcall(loadFriendsJob)
		end)

		job()
	end
end

function PermissionsLoader:LoadPermissions()
	return function(store, contextItems)
		local permissionsJobs = GetPermissionsLoadJobs(store, contextItems)

		store:dispatch(SetLoadState(LoadState.Loading))
		
		local numLoaded = 0
		local loadFailed = false
		
		for _, callback in ipairs(permissionsJobs) do
			-- Use coroutine here so we can make async API calls 
			local job = coroutine.wrap(function()
				local success,result = pcall(callback)
				if (not success) and (not loadFailed) then
					warn("Failed", result)
					loadFailed = true
					store:dispatch(SetLoadState(LoadState.LoadFailed))
				end
				
				numLoaded = numLoaded + 1
				if numLoaded == #permissionsJobs then
					if not loadFailed then
						store:dispatch(SetLoadState(LoadState.Loaded))
					end
				end
			end)
			
			job()
		end
	end
end

return PermissionsLoader
