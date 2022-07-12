local RbxAnalyticsService = game:GetService("RbxAnalyticsService")

local GroupRolePermissionsController = {}
GroupRolePermissionsController.__index = GroupRolePermissionsController

function GroupRolePermissionsController.new(networking)
	local self = {}

	self.__networking = networking
	self.__permissionsCache = {
		--[[
		[groupId] = {
			[rolesetId] = {
				groupPostsPermissions = {
					viewWall = true,
					...
				},
				groupEconomyPermissions = {
					manageGroupGames = true,
					...
				},
				...
				-- There are a whole bunch of permissions here but we will probably only ever care aboue `manageGroupGames`
			}
		}
		]]
	}

	return setmetatable(self, GroupRolePermissionsController)
end

function GroupRolePermissionsController:groupRolePermissionsV1GET(groupId)
	local networking = self.__networking

	return networking:get("groups", "/v1/groups/"..groupId.."/roles/permissions")
end

function GroupRolePermissionsController:getGroupRolePermissions(groupId)
	if not self.__permissionsCache[groupId] then
		local response = self:groupRolePermissionsV1GET(groupId):await()

		if response.responseCode ~= 200 then
			RbxAnalyticsService:reportCounter("ManageCollaboratorsPlugin.FetchRolePermsFailed", 1)
			return {}
		end

		if not self.__permissionsCache[groupId] then
			local newPermissions = {}
			for _, thisRole in ipairs(response.responseBody.data) do
				newPermissions[thisRole.role.id] = thisRole.permissions
			end
			self.__permissionsCache[groupId] = newPermissions
		end
	end

	return self.__permissionsCache[groupId]
end

function GroupRolePermissionsController:clearCache()
	self.__permissionsCache = {}
end

return GroupRolePermissionsController
