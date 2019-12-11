local CorePackages = game:GetService("CorePackages")

local ThrottleUserId = require(CorePackages.AppTempCommon.LuaApp.Utils.ThrottleUserId)

local FIntAvatarEditorNewCatalogButton = settings():GetFVariable("AvatarEditorNewCatalogButton2")

return function(userId)
	if tonumber(userId) then
		local throttleNumber = tonumber(FIntAvatarEditorNewCatalogButton)
		local id = tonumber(userId)
		return ThrottleUserId(throttleNumber, id)
	else
		return false
	end
end