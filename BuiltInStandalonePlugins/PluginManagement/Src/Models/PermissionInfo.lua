--[[
	Model for permission data, which is obtained through the PermissionsService.

	Structure
		boolean allowed: Whether or not the user has allowed the permission.
		table data: Contains data specific to a permission type.
			string domain: The URL domain of an HTTPService-type permission.
		number index: The original index of the permission within the permission array of a given assetId.
		Constants.PERMISSION_TYPES type: The permission's type.
]]
local PermissionInfo = {}

PermissionInfo.new = function()
	return {
		data = {},
		allowed = false,
		type = nil,
	}
end

PermissionInfo.mock = function()
	local result = PermissionInfo.new()
	result.allowed = true
	result.data = {
		domain = "a",
	}
	return result
end

PermissionInfo.fromUserData = function(data, index)
	local permission = PermissionInfo.new()
	permission.type = data.Type
	permission.index = index

	if data.Data then
		permission.allowed = data.Data.Allowed
		permission.data = {
			domain = data.Data.Domain,
		}
	end
	return permission
end

return PermissionInfo