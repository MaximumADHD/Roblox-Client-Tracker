-- A delegate to offload Settings/IEC ui related logics from SettingsHub, preventing the monolith from
-- growing much more bigger and making it possible to be simplified in the future.
local CoreGui = game:GetService("CoreGui")
local RobloxGui = CoreGui:WaitForChild("RobloxGui")
local CorePackages = game:GetService("CorePackages")
local Observable = require(CorePackages.Workspace.Packages.Observable)
local VrSpatialUi = require(CorePackages.Workspace.Packages.VrSpatialUi)
local PanelType = VrSpatialUi.Constants.PanelType
local UIManager = VrSpatialUi.UIManager
local Theme = require(script.Parent.Theme)
local Create = require(CorePackages.Workspace.Packages.AppCommonLib).Create
local UIBlox = require(CorePackages.Packages.UIBlox)
local GetStyleTokens = require(RobloxGui.Modules.Chrome.ChromeShared.Utility.GetStyleTokens)

local ChatSelector = require(RobloxGui.Modules.ChatSelector)

local CoreScriptVersionEnabled = game:GetEngineFeature("CoreScriptVersionEnabled")
local FIntSpatialUIDarkenBackgroundTransparency = game:DefineFastInt("SpatialUIDarkenBackgroundTransparency", 0)
local FIntSpatialUIScaledVersionTextSize = game:DefineFastInt("SpatialUIVersionTextSizeScaled", 1400)

local InExperienceUIVRIXP = require(CorePackages.Workspace.Packages.SharedExperimentDefinition).InExperienceUIVRIXP
local FFlagSpatialUIFixMenuPanelChatExclusive = require(RobloxGui.Modules.Settings.Flags.FFlagSpatialUIFixMenuPanelChatExclusive)
local FFlagSpatialUIFixGameInviteChatExclusive = game:DefineFastFlag("SpatialUIFixGameInviteChatExclusive", false)

type ThemeItem = UIBlox.ThemeItem

local UI_CONFIG_DEFAULT = {
	HUB_BAR_WIDTH = 800,
	ASPECT_RATIO = 800 / 600,
}

local UI_CONFIG_VR = {
	BOTTOM_BUTTON_MAX_SIZE_IN_PIXEL = 233,
}

local StyleTokens = nil
local loadStyleTokens = function()
	if StyleTokens == nil then
		StyleTokens = GetStyleTokens()
	end
	return StyleTokens
end

local function setFieldWithBackup(
	instance: { [string]: any },
	infoForRestore: { [string]: any }?,
	key: string,
	newValue: any?
)
	if infoForRestore ~= nil then
		local original = instance[key]
		infoForRestore[key] = original
		instance[key] = newValue
	end
end

local function restoreFieldFromBackup(instance: { [string]: any }, infoForRestore: { [string]: any }?, key: string)
	if infoForRestore ~= nil then
		instance[key] = infoForRestore[key]
	end
end

local SettingsUIDelegate = {}
SettingsUIDelegate.__index = SettingsUIDelegate

function SettingsUIDelegate.new(settingsHub)
	local self = {
		_settingsHub = settingsHub,
		_originalShieldConfig = nil,
		_backgroundUICorner = nil,
		_vrEnabled = false,
		_surfaceGuiEnabledConnection = nil,
		_topBarConnection = nil,
		_userGui = nil,
		_windowsVisibilityValues = {},
		_windowsDisconnectCallbacks = {},
		_openVRMenuHandler = nil,
		_originalVersionTextSizes = {},
	}
	setmetatable(self, SettingsUIDelegate)
	return self
end

function SettingsUIDelegate.enableVR(self)
	local panelProps = {
		panelType = PanelType.MoreMenu,
		screenGuiProps = {
			Name = "MoreMenu",
			ResetOnSpawn = false,
			DisplayOrder = -1,
			ZIndexBehavior = Enum.ZIndexBehavior.Sibling,
		},
	}
	local uiCreationResult = UIManager.getInstance():createUI(panelProps)
	if uiCreationResult == nil then
		return
	end
	local surfaceGui = uiCreationResult.panelObject :: SurfaceGui
	local settingsHubVisibilityValue = Observable.ObservableValue.new(self._settingsHub.Visible)
	self._surfaceGuiEnabledConnection = settingsHubVisibilityValue:connect(function()
		surfaceGui.Enabled = settingsHubVisibilityValue:get()
	end)
	self:connectWindowsVisibility(settingsHubVisibilityValue)
	UIManager.getInstance():connectPanelVisibility(PanelType.MoreMenu, settingsHubVisibilityValue)
	self._originalShieldConfig = {}
	setFieldWithBackup(self._settingsHub.ClippingShield, self._originalShieldConfig, "Parent", surfaceGui)
	setFieldWithBackup(self._settingsHub.ClippingShield, self._originalShieldConfig, "Size", UDim2.new(1, 0, 1, 0))
	setFieldWithBackup(self._settingsHub.ClippingShield, self._originalShieldConfig, "Position", UDim2.new(0, 0, 0, 0))
	if self._settingsHub.DarkenBackground then
		self._backgroundUICorner = Create("UICorner")({
			CornerRadius = Theme.MenuContainerCornerRadius,
			Parent = self._settingsHub.DarkenBackground,
		})
	end

	self._vrEnabled = true
	if self._topBarConnection == nil then
		-- TopBar will be always present, so we only init the connection once
		local VRHub = require(RobloxGui.Modules.VR.VRHub)
		local topBarVisibilityObservable = Observable.ObservableValue.new(VRHub.ShowTopBar)
		self._topBarConnection = VRHub.ShowTopBarChanged.Event:connect(function()
			topBarVisibilityObservable:set(VRHub.ShowTopBar)
		end)
		UIManager.getInstance():connectTopBarVisibility(topBarVisibilityObservable)

		local Chrome = RobloxGui.Modules.Chrome
		local ChromeService = require(Chrome.ChromeShared.Service)
		ChromeService:onTriggerVRToggleButton():connect(function(showTopBar)
			VRHub:SetShowTopBar(showTopBar)
		end)
		ChromeService:connectTopBarVisibility(topBarVisibilityObservable :: any)
	end
	self:setVersionTextSize()
end

function SettingsUIDelegate.isInputEventNeededBySettings(self, actionName, inputState, inputObject)
	if self._vrEnabled then
		if self._userGui == nil then
			self._userGui = require(RobloxGui.Modules.VR.UserGui)
		end
		if self._userGui:isInputNeededForOpenVRMenu(inputObject) then
			if self._openVRMenuHandler == nil then
				self._openVRMenuHandler = self._userGui:getOpenVRMenuHandler()
			end
			local handleOpenVRMenuIfNeeded = self._openVRMenuHandler
			handleOpenVRMenuIfNeeded(actionName, inputState, inputObject)
			return false
		end
		-- Needed by scrolling frame with right stick
		if inputObject.KeyCode == Enum.KeyCode.Thumbstick2 then
			return true
		end
	end
	return false
end

function SettingsUIDelegate.disableVR(self)
	if not self._vrEnabled then
		return
	end
	restoreFieldFromBackup(self._settingsHub.ClippingShield, self._originalShieldConfig, "Parent")
	restoreFieldFromBackup(self._settingsHub.ClippingShield, self._originalShieldConfig, "Size")
	restoreFieldFromBackup(self._settingsHub.ClippingShield, self._originalShieldConfig, "Position")
	self._originalShieldConfig = nil :: any
	if self._backgroundUICorner then
		self._backgroundUICorner.Parent = nil
		self._backgroundUICorner = nil :: any
	end
	if self._surfaceGuiEnabledConnection ~= nil then
		self._surfaceGuiEnabledConnection:disconnect()
	end
	self._openVRMenuHandler = nil
	self:disconnectWindowsVisibility()
	UIManager.getInstance():disconnectPanelVisibility(PanelType.MoreMenu)
	self:restoreVersionTextSize()
	self._vrEnabled = false
end

function SettingsUIDelegate.getAspectRatio(self)
	if self._vrEnabled then
		local panelSize = UIManager.getInstance():getPanelSizeInPixel(PanelType.MoreMenu)
		return (panelSize.X :: number) / (panelSize.Y :: number)
	else
		return UI_CONFIG_DEFAULT.ASPECT_RATIO
	end
end

function SettingsUIDelegate.getHubBarSize(self)
	if self._vrEnabled then
		local hudPadding = Theme.HubPadding()
		local horizontalPadding = 0
		if hudPadding and hudPadding.PaddingLeft then
			horizontalPadding = horizontalPadding + hudPadding.PaddingLeft.Offset
		end
		if hudPadding and hudPadding.PaddingRight then
			horizontalPadding = horizontalPadding + hudPadding.PaddingRight.Offset
		end
		local panelSize = UIManager.getInstance():getPanelSizeInPixel(PanelType.MoreMenu)
		return panelSize.X - horizontalPadding
	else
		return UI_CONFIG_DEFAULT.HUB_BAR_WIDTH
	end
end

function SettingsUIDelegate.getMenuContainerPositionOverride(self): any
	if self._vrEnabled then
		return {
			AnchorPoint = Vector2.new(0.5, 0.5),
			Position = UDim2.new(0.5, 0, 0.5, 0),
			Size = UDim2.new(0, 0, 1, 0),
			AutomaticSize = Enum.AutomaticSize.X,
		}
	else
		return nil :: any
	end
end

function SettingsUIDelegate.getFullScreenSize(self): any
	if self._vrEnabled then
		local panelSize = UIManager.getInstance():getPanelSizeInPixel(PanelType.MoreMenu)
		return panelSize.Y
	else
		return (RobloxGui :: any).AbsoluteSize.y
	end
end

function SettingsUIDelegate.getDarkBackgroundTheme(self): ThemeItem
	if self._vrEnabled then
		local styleTokens = loadStyleTokens()
		return {
			Color = styleTokens.Color.OverMedia.OverMedia_100.Color3,
			Transparency = math.min(math.max(FIntSpatialUIDarkenBackgroundTransparency, 0), 100) / 100,
		} :: ThemeItem
	else
		return {
			Color = Theme.color("DarkenBackground"),
			Transparency = Theme.transparency("DarkenBackground"),
		} :: ThemeItem
	end
end


function SettingsUIDelegate.getBottomButtonSize(self, currentMaxWidth)
	if self._vrEnabled then
		return math.min(currentMaxWidth, UI_CONFIG_VR.BOTTOM_BUTTON_MAX_SIZE_IN_PIXEL)
	else
		return currentMaxWidth
	end
end

function SettingsUIDelegate.updatePanelVisibility(self, panelVisibilityValue)
	for _, visible in self._windowsVisibilityValues do
		if visible then
			if InExperienceUIVRIXP:isMovePanelToCenter() and FFlagSpatialUIFixMenuPanelChatExclusive then
				ChatSelector:HideTemp(PanelType.MoreMenu, true)
			end
			panelVisibilityValue:set(true)
			return
		end
	end

	if InExperienceUIVRIXP:isMovePanelToCenter() and FFlagSpatialUIFixMenuPanelChatExclusive then
		ChatSelector:HideTemp(PanelType.MoreMenu, false)
	end
	panelVisibilityValue:set(false)
end

local connectGameInviteVisibility = function(connectCallback)
	local GameInviteModalManager = require(CorePackages.Workspace.Packages.GameInvite).GameInviteModalManager

	local connection: RBXScriptConnection? = GameInviteModalManager.ToggleGameInviteModalEvent.Event:Connect(function(isModalOpen)
		connectCallback("GameInvite", isModalOpen :: boolean)

		if InExperienceUIVRIXP:isMovePanelToCenter() and FFlagSpatialUIFixGameInviteChatExclusive then
			if isModalOpen then
				ChatSelector:HideTemp("SettingsMenu", true)
			else
				ChatSelector:HideTemp("SettingsMenu", false)
			end
		end	
	end)

	return function()
		if connection then
			connection:Disconnect()
			connection = nil
		end
	end
end

local connectInspectAndBuyVisibility = function(connectCallback)
	local GuiService = game:GetService("GuiService")

	local openConnection: RBXScriptConnection? = GuiService.InspectPlayerFromUserIdWithCtxRequest:Connect(function()
		connectCallback("InspectAndBuy", true)
	end)
	local closeConnection: RBXScriptConnection? = GuiService.CloseInspectMenuRequest:Connect(function()
		connectCallback("InspectAndBuy", false)
	end)
	local enableConnection: RBXScriptConnection? = GuiService.InspectMenuEnabledChangedSignal:Connect(function(enabled)
		if not enabled then
			connectCallback("InspectAndBuy", false)
		end
	end)

	return function()
		if openConnection then
			openConnection:Disconnect()
			openConnection = nil
		end
		if closeConnection then
			closeConnection:Disconnect()
			closeConnection = nil
		end
		if enableConnection then
			enableConnection:Disconnect()
			enableConnection = nil
		end
	end
end

function SettingsUIDelegate.connectWindowsVisibility(self, panelVisibilityValue)
	local visibleConnectCallback = function(windowName: string, visible: boolean)
		self._windowsVisibilityValues[windowName] = visible
		self:updatePanelVisibility(panelVisibilityValue)
	end

	local connectSettingsHubVisibility = function(connectCallback)
		local connection: any = self._settingsHub.SettingsShowSignal:connect(function(visible)
			connectCallback("SettingsHub", visible :: boolean)
		end)

		return function()
			if connection then
				connection:Disconnect()
				connection = nil
			end
		end
	end

	local windowsVisibilityConnects = {
		connectSettingsHubVisibility,
		connectGameInviteVisibility,
		connectInspectAndBuyVisibility,
	}

	for _, connect in windowsVisibilityConnects do
		local disconnectCallback = connect(visibleConnectCallback)
		table.insert(self._windowsDisconnectCallbacks, disconnectCallback)
	end
end

function SettingsUIDelegate.disconnectWindowsVisibility(self)
	for _, disconnectCallback in self._windowsDisconnectCallbacks do
		disconnectCallback()
	end
	self._windowsDisconnectCallbacks = {}
	self._windowsVisibilityValues = {}
end

function SettingsUIDelegate.isOpenCloseAnimationAllowed(self): boolean
	if self._vrEnabled then
		return false
	else
		return true
	end
end

function SettingsUIDelegate.getMenuContainerExtraSpace(self): number
	if self._vrEnabled then
		local padding: UIPadding = self._settingsHub.MenuContainerPadding
		return padding.PaddingTop.Offset + padding.PaddingBottom.Offset
	else
		return 0
	end
end

local function refreshVersionTextLabelSize(label: TextLabel)
	local marginSize = 6
	local defaultSize = UDim2.new(0.2, -6, 1, 0)
	label.Size = if CoreScriptVersionEnabled then UDim2.new(0, label.TextBounds.X + marginSize, 1, 0) else defaultSize
end

function SettingsUIDelegate.setVersionTextSize(self)
	local children = (self._settingsHub.VersionContainer :: GuiObject):GetChildren()
	for _, c in children do
		if c:IsA("TextLabel") then
			self._originalVersionTextSizes[c] = c.TextSize
			c.TextSize = Theme.textSize(FIntSpatialUIScaledVersionTextSize / 100)
			refreshVersionTextLabelSize(c)
		end
	end
end

function SettingsUIDelegate.restoreVersionTextSize(self)
	local children = (self._settingsHub.VersionContainer :: GuiObject):GetChildren()
	for _, c in children do
		if c:IsA("TextLabel") and self._originalVersionTextSizes[c] then
			c.TextSize = self._originalVersionTextSizes[c]
			refreshVersionTextLabelSize(c)
			self._originalVersionTextSizes[c] = nil
		end
	end
	self._originalVersionTextSizes = {}
end

return SettingsUIDelegate
