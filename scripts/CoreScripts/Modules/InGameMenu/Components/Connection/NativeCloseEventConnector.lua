local GuiService = game:GetService("GuiService")
local AppStorageService = game:GetService("AppStorageService")
local RbxAnalyticsService = game:GetService("RbxAnalyticsService")
local CorePackages = game:GetService("CorePackages")

local InGameMenuDependencies = require(CorePackages.InGameMenuDependencies)
local Roact = InGameMenuDependencies.Roact
local RoactRodux = InGameMenuDependencies.RoactRodux
local t = InGameMenuDependencies.t

local InGameMenu = script.Parent.Parent.Parent
local OpenNativeClosePrompt = require(InGameMenu.Actions.OpenNativeClosePrompt)
local ExternalEventConnection = require(InGameMenu.Utility.ExternalEventConnection)
local InGameMenuPolicy = require(InGameMenu.InGameMenuPolicy)

local LOCAL_STORAGE_KEY_NATIVE_CLOSE = "NativeCloseLuaPromptDisplayCount"
local notificationTypes = GuiService:GetNotificationTypeList()

local NativeCloseEventConnector = Roact.PureComponent:extend("NativeCloseEventConnector")

NativeCloseEventConnector.validateProps = t.strictInterface({
	openNativeClosePrompt = t.callback,
	isEducationalPopupEnabled = t.boolean,
	maxDisplayCount = t.integer,
})

function NativeCloseEventConnector:init()
	local function getDisplayCount()
		return tonumber(AppStorageService:GetItem(LOCAL_STORAGE_KEY_NATIVE_CLOSE)) or 0
	end

	local function setDisplayCount(number)
		AppStorageService:SetItem(LOCAL_STORAGE_KEY_NATIVE_CLOSE, tostring(number))
		AppStorageService:flush()
	end

	self.onNativeCloseConnect = function()
		if self.props.isEducationalPopupEnabled then
			RbxAnalyticsService:ReportCounter("LeaveGame_NativeClose", 1)

			local displayCount = getDisplayCount()
			local maxDisplayCount = self.props.maxDisplayCount

			if displayCount >= maxDisplayCount then
				GuiService:BroadcastNotification("", notificationTypes.NATIVE_EXIT)
			else
				self.props.openNativeClosePrompt()
				setDisplayCount(displayCount + 1)
			end
		end
	end
end

function NativeCloseEventConnector:render()
	return Roact.createElement(ExternalEventConnection, {
		event = GuiService.NativeClose,
		callback = self.onNativeCloseConnect,
	})
end

NativeCloseEventConnector = InGameMenuPolicy.connect(function(appPolicy, props)
	return {
		isEducationalPopupEnabled = appPolicy.enableEducationalPopup(),
		maxDisplayCount = appPolicy.educationalPopupMaxDisplayCount(),
	}
end)(NativeCloseEventConnector)

return RoactRodux.UNSTABLE_connect2(nil, function(dispatch)
	return {
		openNativeClosePrompt = function()
			return dispatch(OpenNativeClosePrompt())
		end,
	}
end)(NativeCloseEventConnector)
