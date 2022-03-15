local LOCAL_STORAGE_KEY_NATIVE_CLOSE = "NativeCloseLuaPromptDisplayCount"

local InGameMenu = script.Parent.Parent
local OpenNativeClosePrompt = require(InGameMenu.Actions.OpenNativeClosePrompt)

return function(guiService, appStorageService, maxCount)
	local function getDisplayCount()
		return tonumber(appStorageService:GetItem(LOCAL_STORAGE_KEY_NATIVE_CLOSE)) or 0
	end

	local function setDisplayCount(number)
		appStorageService:SetItem(LOCAL_STORAGE_KEY_NATIVE_CLOSE, tostring(number))
		appStorageService:flush()
	end

	local notificationTypes = guiService:GetNotificationTypeList()

	return function(store)
		local isClosingApp = store:getState().nativeClosePrompt.closingApp
		local currentCount = getDisplayCount()

		if isClosingApp or currentCount >= maxCount then
			guiService:BroadcastNotification("", notificationTypes.NATIVE_EXIT)
		else
			store:dispatch(OpenNativeClosePrompt())
			setDisplayCount(currentCount + 1)
		end
	end
end
