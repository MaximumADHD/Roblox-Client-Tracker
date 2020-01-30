local PermissionInfo = {}

PermissionInfo.new = function()
	return {
		data = {},
		enabled = false,
		type = nil,
	}
end

PermissionInfo.mock = function()
	local result = PermissionInfo.new()
	result.enabled = true
	result.data = {
		domain = "a",
	}
	return result
end

PermissionInfo.fromUserData = function(data)
	local permission = PermissionInfo.new()
	permission.type = data.PermissionType

	if data.PermissionData then
		permission.enabled = data.PermissionData.enabled
		permission.data = {
			domain = data.PermissionData.domain,
		}
	end
	return permission
end

return PermissionInfo