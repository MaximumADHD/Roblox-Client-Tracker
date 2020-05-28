local Page = script.Parent.Parent

local DeserializeFromRequest = require(Page.Util.DeserializeFromRequest)
local SerializeForRequest = require(Page.Util.SerializeForRequest)
local PermissionsConstants = require(Page.Util.PermissionsConstants)

-- The endpoints may start to fail above this amount
local MAX_CHANGES = 60

local GamePermissionsController = {}
GamePermissionsController.__index = GamePermissionsController

function GamePermissionsController.new(networking)
	local self = {}

	self.__networking = networking

	return setmetatable(self, GamePermissionsController)
end

function GamePermissionsController:universesV1GET(gameId)
	local networking = self.__networking

	return networking:get("develop", "/v1/universes/"..gameId)
end

function GamePermissionsController:universesActivateV1POST(gameId)
	local networking = self.__networking

	return networking:post("develop", "/v1/universes/"..gameId.."/activate", {
		Body = {},
	})
end

function GamePermissionsController:universesDeactivateV1POST(gameId)
	local networking = self.__networking

	return networking:post("develop", "/v1/universes/"..gameId.."/deactivate", {
		Body = {},
	})
end

function GamePermissionsController:configurationV2GET(gameId)
	local networking = self.__networking

	return networking:get("develop", "/v2/universes/"..gameId.."/configuration")
end

function GamePermissionsController:configurationV2PATCH(gameId, configuration)
	local networking = self.__networking

	return networking:patch("develop", "/v2/universes/"..gameId.."/configuration", {
		Body = configuration
	})
end

function GamePermissionsController:permissionsV2GET(gameId)
	local networking = self.__networking

	return networking:get("develop", "/v2/universes/"..gameId.."/permissions")
end

function GamePermissionsController:permissionsBatchedV2POST(gameId, adds)
	local networking = self.__networking

	return networking:post("develop", "/v2/universes/"..gameId.."/permissions_batched", {
		Body = adds,
	})
end

function GamePermissionsController:permissionsBatchedV2DELETE(gameId, deletes)
	local networking = self.__networking

	return networking:delete("develop", "/v2/universes/"..gameId.."/permissions_batched", {
		Body = deletes,
	})
end

function GamePermissionsController:wwwSearchUsers(searchTerm)
	local networking = self.__networking

	return networking:get("www", "/search/users/results", {
		Params = {
			keyword = searchTerm,
			maxRows = PermissionsConstants.MaxSearchResultsPerSubjectType,
		}
	})
end

function GamePermissionsController:apiGetByUsernameV1GET(username)
	local networking = self.__networking

	return networking:get("api", "/users/get-by-username", {
		Params = {
			username = username,
		}
	})
end

function GamePermissionsController:isFriendsOnly(gameId)
	local response = self:configurationV2GET(gameId):await()

	return response.responseBody.isFriendsOnly
end

function GamePermissionsController:setFriendsOnly(gameId, isFriendsOnly)
	self:configurationV2PATCH(gameId, {isFriendsOnly = isFriendsOnly}):await()
end

function GamePermissionsController:isActive(gameId)
	local response = self:universesV1GET(gameId):await()

	return response.responseBody.isActive
end

function GamePermissionsController:setActive(gameId, active)
	if active then
		self:universesActivateV1POST(gameId):await()
	else
		self:universesDeactivateV1POST(gameId):await()
	end
end

function GamePermissionsController:getPermissions(gameId, ownerName, ownerId, ownerType)
	local response = self:permissionsV2GET(gameId):await()
	local permissions = response.responseBody.data

	return DeserializeFromRequest.DeserializePermissions(permissions, ownerName, ownerId, ownerType)
end

function GamePermissionsController:setPermissions(gameId, oldPermissions, newPermissions, groupMetadata)
	local adds, deletes = SerializeForRequest.SerializePermissions(oldPermissions, newPermissions, groupMetadata)
	local numChanges = #adds + #deletes

	if (numChanges > MAX_CHANGES) then
		error("Too many changes ("..numChanges..") to permissions. Maximum at once is "+MAX_CHANGES)
	end

	if #adds > 0 then
		self:permissionsBatchedV2POST(gameId, adds):await()
	end
	if #deletes > 0 then
		self:permissionsBatchedV2DELETE(gameId, deletes):await()
	end
end

function GamePermissionsController:searchUsers(searchTerm)
	local webResults = self:wwwSearchUsers(searchTerm):await()
	local matches = webResults.responseBody.UserSearchResults

	if matches then
		local users = {}

		for _,webItem in pairs(matches) do
			table.insert(users, {
				[PermissionsConstants.SubjectNameKey] = webItem.Name,
				[PermissionsConstants.SubjectIdKey] = webItem.UserId,
			})
		end

		return {[PermissionsConstants.UserSubjectKey] = users}
	else
		-- The filter has a propensity for false positives, so allow lookup by exact match if search fails
		local result = self:apiGetByUsernameV1GET(searchTerm):await()
		local responseBody = result.responseBody
		if responseBody.success == false then
			local errorMessage = responseBody.errorMessage
			if errorMessage ~= "User not found" then
				return error("Failed to find user: "..tostring(errorMessage))
			else
				return {[PermissionsConstants.UserSubjectKey] = {}}
			end
		else
			return {
				[PermissionsConstants.UserSubjectKey] = {
					{
						[PermissionsConstants.SubjectNameKey] = responseBody.Username,
						[PermissionsConstants.SubjectIdKey] = responseBody.Id,
					}
				}
			}
		end
	end
end

return GamePermissionsController