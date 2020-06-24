--[[
	Listens to desktop window close event and then displays a confirmation dialog
]]

local GuiService = game:GetService("GuiService")
local AppStorageService = game:GetService("AppStorageService")
local CoreGui = game:GetService("CoreGui")
local RbxAnalyticsService = game:GetService("RbxAnalyticsService")
local RobloxGui = CoreGui:WaitForChild("RobloxGui")

local GetFIntEducationalPopupDisplayMaxCount = require(RobloxGui.Modules.Flags.GetFIntEducationalPopupDisplayMaxCount)
local InGameMenu = require(RobloxGui.Modules.InGameMenu)

local notificationTypes = GuiService:GetNotificationTypeList()

local LocalStorageKey = "NativeCloseLuaPromptDisplayCount"

local function getDisplayCount()
	return tonumber(AppStorageService:GetItem(LocalStorageKey)) or 0
end

local function setDisplayCount(number)
	AppStorageService:SetItem(LocalStorageKey, tostring(number))
	AppStorageService:flush()
end

GuiService.NativeClose:Connect(function()
	RbxAnalyticsService:ReportCounter("EducationalPopup_NativeClose", 1)

	local displayCount = getDisplayCount()
	local maxDisplayCount = GetFIntEducationalPopupDisplayMaxCount()

	if displayCount >= maxDisplayCount then
		GuiService:BroadcastNotification("", notificationTypes.NATIVE_EXIT)
	else
		InGameMenu.openNativeClosePrompt()
		setDisplayCount(displayCount + 1)
	end
end)
