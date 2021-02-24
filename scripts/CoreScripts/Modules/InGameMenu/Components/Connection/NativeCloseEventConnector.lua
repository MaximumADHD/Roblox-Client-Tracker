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
local OpenEducationalPopup = require(InGameMenu.Thunks.OpenEducationalPopup)
local ExternalEventConnection = require(InGameMenu.Utility.ExternalEventConnection)
local InGameMenuPolicy = require(InGameMenu.InGameMenuPolicy)
local UserLocalStore = require(InGameMenu.Utility.UserLocalStore)

local GetFFlagPlayerSpecificPopupCounter = require(InGameMenu.Flags.GetFFlagPlayerSpecificPopupCounter)
local FFlagInGameMenuUseOpenEduPopupThunk = game:DefineFastFlag("InGameMenuUseOpenEduPopupThunk", false)

local LOCAL_STORAGE_KEY_NATIVE_CLOSE = "NativeCloseLuaPromptDisplayCount"
local notificationTypes = GuiService:GetNotificationTypeList()

local NativeCloseEventConnector = Roact.PureComponent:extend("NativeCloseEventConnector")

NativeCloseEventConnector.validateProps = t.strictInterface({
	openNativeClosePrompt = t.callback,	-- Remove with FFlagInGameMenuUseOpenEduPopupThunk
	isEducationalPopupEnabled = t.boolean,
	maxDisplayCount = t.integer,
	isClosingApp = t.optional(t.boolean), -- Remove with FFlagInGameMenuUseOpenEduPopupThunk
	openEducationalPopup = t.optional(t.callback),
})

function NativeCloseEventConnector:init()
	-- Remove with FFlagInGameMenuUseOpenEduPopupThunk
	local function getDisplayCount()
		local localStore = AppStorageService
		if GetFFlagPlayerSpecificPopupCounter() then
			localStore = UserLocalStore.new()
		end
		return tonumber(localStore:GetItem(LOCAL_STORAGE_KEY_NATIVE_CLOSE)) or 0
	end

	-- Remove with FFlagInGameMenuUseOpenEduPopupThunk
	local function setDisplayCount(number)
		local localStore = AppStorageService
		if GetFFlagPlayerSpecificPopupCounter() then
			localStore = UserLocalStore.new()
		end
		localStore:SetItem(LOCAL_STORAGE_KEY_NATIVE_CLOSE, tostring(number))
		localStore:flush()
	end

	self.onNativeCloseConnect = function()
		if self.props.isEducationalPopupEnabled then
			RbxAnalyticsService:ReportCounter("LeaveGame_NativeClose", 1)

			if FFlagInGameMenuUseOpenEduPopupThunk then
				local localStore = AppStorageService
				if GetFFlagPlayerSpecificPopupCounter() then
					localStore = UserLocalStore.new()
				end
				self.props.openEducationalPopup(GuiService, localStore, self.props.maxDisplayCount)
			else
				if self.props.isClosingApp then
					GuiService:BroadcastNotification("", notificationTypes.NATIVE_EXIT)
					return
				end

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

return RoactRodux.UNSTABLE_connect2(
	function(state, props)
		return {
			-- Remove with FFlagInGameMenuUseOpenEduPopupThunk
			isClosingApp = state.nativeClosePrompt.closingApp,
		}
	end,
	function(dispatch)
		return {
			-- Remove with FFlagInGameMenuUseOpenEduPopupThunk
			openNativeClosePrompt = function()
				return dispatch(OpenNativeClosePrompt())
			end,
			openEducationalPopup = function(guiService, appStorageService, maxCount)
				return dispatch(OpenEducationalPopup(guiService, appStorageService, maxCount))
			end,
		}
	end
)(NativeCloseEventConnector)
