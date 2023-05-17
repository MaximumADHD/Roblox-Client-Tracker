--!nonstrict
--[[
	BottomBar quick access menu
	Roblox VR 2022, @MetaVars
]]--

local AnalyticsService = game:GetService("RbxAnalyticsService")
local CorePackages = game:GetService("CorePackages")
local CoreGui = game:GetService("CoreGui")
local GuiService = game:GetService("GuiService")
local Players = game:GetService("Players")
local RunService = game:GetService("RunService")
local StarterGui = game:GetService("StarterGui")
local VRService = game:GetService("VRService")

local Cryo = require(CorePackages.Cryo)
local Otter = require(CorePackages.Otter)
local React = require(CorePackages.Packages.React)
local Roact = require(CorePackages.Roact)
local RoactRodux = require(CorePackages.RoactRodux)
local UIBlox = require(CorePackages.UIBlox)
local SystemBar = UIBlox.App.Navigation.SystemBar
local Placement = UIBlox.App.Navigation.Enum.Placement
local Panel3D = UIBlox.Core.VR.Panel3D
local VRConstants = UIBlox.Core.VR.Constants

local RobloxGui = CoreGui:WaitForChild("RobloxGui")
local VRHub = require(RobloxGui.Modules.VR.VRHub)
local VRUtil = require(RobloxGui.Modules.VR.VRUtil)

local ExternalEventConnection = require(CorePackages.Workspace.Packages.RoactUtils).ExternalEventConnection

-- accessors
local InGameMenuConstants = require(RobloxGui.Modules.InGameMenuConstants)
local GameSettings = UserSettings().GameSettings
local InGameMenu = require(RobloxGui.Modules.InGameMenuInit)
local ChatSelector = require(RobloxGui.Modules.ChatSelector)

local VRBottomBar = Roact.PureComponent:extend("TopBarApp")
local VRBarSeparator = require(script.Parent.VRBarSeparator)
local VRBarVoiceIcon = require(script.Parent.VRBarVoiceIcon)

local EmotesMenuMaster = require(RobloxGui.Modules.EmotesMenu.EmotesMenuMaster)
local BackpackScript = require(RobloxGui.Modules.BackpackScript)
local PlayerListMaster = require(RobloxGui.Modules.PlayerList.PlayerListManager)
local StarterPlayer = game:GetService("StarterPlayer")

local SafetyBubbleEnabled = require(RobloxGui.Modules.Flags.FFlagSafetyBubbleEnabled)

local EngineFeatureEnableVRBottomBarWorksBehindObjects = game:GetEngineFeature("EnableVRBottomBarWorksBehindObjects")

local FFlagUserVRPlaySeatedStanding = require(RobloxGui.Modules.Flags.FFlagUserVRPlaySeatedStanding)
local GetFFlagUIBloxVRAlignPanel3DUnderInGamePanel =
	require(CorePackages.Workspace.Packages.SharedFlags).UIBlox.GetFFlagUIBloxVRAlignPanel3DUnderInGamePanel
local FFlagVRMoveVoiceIndicatorToBottomBar = require(RobloxGui.Modules.Flags.FFlagVRMoveVoiceIndicatorToBottomBar)

-- This can be useful in cases where a flag configuration issue causes requiring a CoreScript to fail
local function safeRequire(moduleScript)
	local success, ret = pcall(require, moduleScript)
	if success then
		return ret
	else
		warn("Failure to Start CoreScript module " .. moduleScript.Name .. ".\n" .. ret)
	end
end

local LOOKAWAY_Y_THRESHOLD = -0.2

local SpringOptions = {
	Default = {
		dampingRatio = 1,
		frequency = 4.5,
	},
	Slower = {
		dampingRatio = 1,
		frequency = 0.66,
	},
}

-- each individual icon can either be definied as a table entry with icon and onActivate, or as a item component
local MainMenu =
{
	iconOn = "rbxasset://textures/ui/MenuBar/icon_menu.png",
	iconOff = "rbxasset://textures/ui/MenuBar/icon_menu.png",
	onActivated = function()
		VRHub:SetShowTopBar(true)
		if not InGameMenu.getOpen() then
			InGameMenu.openInGameMenu(InGameMenuConstants.MainPagePageKey)
		else
			InGameMenu.closeInGameMenu()
		end

		AnalyticsService:ReportCounter("VR-BottomBar-MainMenu")
	end,
}

local ToggleGui =
{
	iconOn = "rbxasset://textures/ui/MenuBar/icon_maximize.png",
	iconOff = "rbxasset://textures/ui/MenuBar/icon_minimize.png",
	onActivated = function()
		if not VRHub.ShowTopBar then
			VRHub:SetShowTopBar(false)
			VRHub:SetShowTopBar(true)
		else
			VRHub:SetShowTopBar(false)
			InGameMenu.closeInGameMenu()
		end

		AnalyticsService:ReportCounter("VR-BottomBar-ToggleGui")
	end,
}

local BackpackIcon =
{
	iconOn = "rbxasset://textures/ui/MenuBar/icon__backpack.png",
	iconOff = "rbxasset://textures/ui/MenuBar/icon__backpack.png",
	onActivated = function()
		if not VRHub.ShowTopBar then
			-- Expand UI and open backpack
			VRHub:SetShowTopBar(true)
			if not BackpackScript.IsOpen then
				BackpackScript.OpenClose()
			end
		else
			BackpackScript.OpenClose()
		end

		AnalyticsService:ReportCounter("VR-BottomBar-Backpack")
	end,
}

local PlayerList =
{
	iconOn = "rbxasset://textures/ui/MenuBar/icon_leaderboard.png",
	iconOff = "rbxasset://textures/ui/MenuBar/icon_leaderboard.png",
	onActivated = function()
		if not VRHub.ShowTopBar then
			-- Expand UI and show playerList
			VRHub:SetShowTopBar(true)
			if not PlayerListMaster:GetSetVisible() then
				PlayerListMaster:SetVisibility(true)
			end
		else
			PlayerListMaster:SetVisibility(not PlayerListMaster:GetSetVisible())
		end

		AnalyticsService:ReportCounter("VR-BottomBar-PlayerList")
	end,
}

local Emotes =
{
	iconOn = "rbxasset://textures/ui/MenuBar/icon_emote.png",
	iconOff = "rbxasset://textures/ui/MenuBar/icon_emote.png",
	onActivated = function()
		if not VRHub.ShowTopBar then
			-- Expand UI and show emotesMenu
			VRHub:SetShowTopBar(true)
			if not EmotesMenuMaster:isOpen() then
				EmotesMenuMaster:open()
			end
		else
			if EmotesMenuMaster:isOpen() then
				EmotesMenuMaster:close()
			else
				EmotesMenuMaster:open()
			end
		end

		AnalyticsService:ReportCounter("VR-BottomBar-Emotes")
	end,
}

local Chat =
{
	iconOn = "rbxasset://textures/ui/MenuBar/icon_chat.png",
	iconOff = "rbxasset://textures/ui/MenuBar/icon_chat.png",
	onActivated = function()
		if not VRHub.ShowTopBar then
			-- Expand UI and show chat
			VRHub:SetShowTopBar(true)
			if not ChatSelector:GetVisibility() then
				ChatSelector:ToggleVisibility()
				GameSettings.ChatVisible = ChatSelector:GetVisibility()
			end
		else
			ChatSelector:ToggleVisibility()
			GameSettings.ChatVisible = ChatSelector:GetVisibility()
		end

		AnalyticsService:ReportCounter("VR-BottomBar-Chat")
	end,
}

local Seated
local Standing
if FFlagUserVRPlaySeatedStanding then
	local changeVRPlayMode = function()
		if GameSettings.VRPlayMode == Enum.VRPlayMode.Seated then
			GameSettings.VRPlayMode = Enum.VRPlayMode.Standing
		else
			GameSettings.VRPlayMode = Enum.VRPlayMode.Seated
		end

		AnalyticsService:ReportCounter("VR-BottomBar-VRPlayMode")
	end

	Standing =
	{
		iconOn = "rbxasset://textures/ui/MenuBar/icon_standing.png",
		iconOff = "rbxasset://textures/ui/MenuBar/icon_standing.png",
		onActivated = changeVRPlayMode,
	}

	Seated =
	{
		iconOn = "rbxasset://textures/ui/MenuBar/icon_seated.png",
		iconOff = "rbxasset://textures/ui/MenuBar/icon_seated.png",
		onActivated = changeVRPlayMode,
	}
end

local SafetyOn = 
{
	iconOn = "rbxasset://textures/ui/MenuBar/icon_safety_on.png",
	iconOff = "rbxasset://textures/ui/MenuBar/icon_safety_on.png",
	onActivated = function()
		VRHub:ToggleSafetyBubble()

		AnalyticsService:ReportCounter("VR-BottomBar-Safety")
	end,
}

local SafetyOff = 
{
	iconOn = "rbxasset://textures/ui/MenuBar/icon_safety_off.png",
	iconOff = "rbxasset://textures/ui/MenuBar/icon_safety_off.png",
	onActivated = function()
		VRHub:ToggleSafetyBubble()

		AnalyticsService:ReportCounter("VR-BottomBar-Safety")
	end,
}

local LeaveGame = 
{
	iconOn = "rbxasset://textures/ui/MenuBar/icon_leave.png",
	iconOff = "rbxasset://textures/ui/MenuBar/icon_leave.png",
	onActivated = function()
		VRHub:SetShowTopBar(true)
		if InGameMenu then
			-- Should open root menu to trigger InGameMenu open event before open GameLeave page
			if not InGameMenu.getOpen() then
				InGameMenu.openInGameMenu(InGameMenuConstants.MainPagePageKey)
			end
			InGameMenu.openGameLeavePage()
		end

		AnalyticsService:ReportCounter("VR-BottomBar-LeaveGame")
	end,
}

local SeparatorIcon =
{
	iconComponent = VRBarSeparator,
	itemSize = UDim2.new(0, 28, 0, 44),
}

-- default bar init
function VRBottomBar:init()
	self:setState({
		vrMenuOpen = true,
		lookAway = false, -- whether player looks away from VRBottomBar
		userGui = VRService.VREnabled and safeRequire(RobloxGui.Modules.VR.UserGui) or Roact.None
	})
	
	self.backpackHasItems = false
	self.emotesLoaded = false

	self.getVoiceIcon = function()
		return {
			iconImageComponent = function(props)
				return React.createElement(VRBarVoiceIcon, Cryo.Dictionary.join(props, {
					userId = tostring((Players.LocalPlayer :: Player).UserId),
					iconStyle = "MicLight",
				}))
			end,
			onActivated = function()
				-- Make sure VoiceChatState exists since it's not available in the test runner
				if self.props.voiceState == (Enum::any).VoiceChatState.Failed then
					self.props.voiceChatServiceManager:RejoinPreviousChannel()
				else
					self.props.voiceChatServiceManager:ToggleMic()
				end
			end,
		}
	end

	self:setState({
		itemList = { MainMenu, SeparatorIcon, ToggleGui, SeparatorIcon, LeaveGame }
	})

	self.onShowTopBarChanged = function()
		self:setState({
			vrMenuOpen = VRHub.ShowTopBar,
		})
	end
	
	self.updateItemListState = function()
		local activeItems = self:updateItems()
		self:setState({
			itemList = activeItems
		})
	end

	self.onBackpackItemAdded = function()
		if not self.backpackHasItems then
			self.backpackHasItems = true
			self.updateItemListState()
		end
	end

	self.onBackpackEmpty = function()
		if self.backpackHasItems then
			self.backpackHasItems = false
			self.updateItemListState()
		end
	end

	self.onEmotesLoaded = function(emotesLoaded)
		if emotesLoaded ~= self.emotesLoaded then
			self.emotesLoaded = emotesLoaded
			self.updateItemListState()
		end
	end

	self.onVREnabledChanged = function()
		self:setState({
			userGui = VRService.VREnabled and safeRequire(RobloxGui.Modules.VR.UserGui) or Roact.None
		})
	end

	self.onRenderStepped = function()
		local currentCamera = workspace.CurrentCamera :: Camera
		local cameraCF = currentCamera.CFrame
		local userHeadCameraCF = VRUtil.GetUserCFrameWorldSpace(Enum.UserCFrame.Head)
		local lookAway = userHeadCameraCF.LookVector.Y > LOOKAWAY_Y_THRESHOLD
		if self.state.lookAway ~= lookAway then
			self:setState({
				lookAway = lookAway,
			})
		end
	end

	self.fadeTransparency, self.setFadeTransparency = Roact.createBinding(0)
	self.fadeTransparencyMotor = Otter.createSingleMotor(self.fadeTransparency:getValue())
	self.fadeTransparencyMotor:onStep(self.setFadeTransparency)
	self.fadeTransparencyMotor:setGoal(Otter.spring(0, SpringOptions.Default))
end

function VRBottomBar:didMount()
	self.emotesLoaded = EmotesMenuMaster:isEmotesLoaded()
	self.backpackHasItems = BackpackScript.IsInventoryEmpty()
	self.updateItemListState()
end

-- the bottombar itemlist automatically tracks feature updates and scales on demand
function VRBottomBar:updateItems()
	local backpackEnabled = StarterGui:GetCoreGuiEnabled(Enum.CoreGuiType.Backpack)
	local emotesEnabled = StarterGui:GetCoreGuiEnabled(Enum.CoreGuiType.EmotesMenu)
	local chatEnabled = StarterGui:GetCoreGuiEnabled(Enum.CoreGuiType.Chat)
	local playerListEnabled = StarterGui:GetCoreGuiEnabled(Enum.CoreGuiType.PlayerList)
	
	local enabledItems = { MainMenu, SeparatorIcon, ToggleGui }
	if emotesEnabled and not (StarterPlayer.UserEmotesEnabled and self.emotesLoaded == false) then
		table.insert(enabledItems, Emotes)
	end
	if backpackEnabled and self.backpackHasItems then
		table.insert(enabledItems, BackpackIcon)
	end
	if chatEnabled then
		table.insert(enabledItems, Chat)
	end
	if playerListEnabled then
		table.insert(enabledItems, PlayerList)
	end

	if FFlagUserVRPlaySeatedStanding then
		if GameSettings.VRPlayMode == Enum.VRPlayMode.Seated then
			table.insert(enabledItems, Seated)
		else
			table.insert(enabledItems, Standing)
		end
	end

	if FFlagVRMoveVoiceIndicatorToBottomBar and self.props.voiceEnabled then
		table.insert(enabledItems, self.getVoiceIcon())
	end

	table.insert(enabledItems, SeparatorIcon)

	if SafetyBubbleEnabled then
		if VRHub.SafetyBubble and VRHub.SafetyBubble.enabled then
			table.insert(enabledItems, SafetyOn)
		else
			table.insert(enabledItems, SafetyOff)
		end
	end

	table.insert(enabledItems, LeaveGame)

	return enabledItems
end

-- VRBottomBar implements two UIBlox components
function VRBottomBar:render()
	local basePartSize = GetFFlagUIBloxVRAlignPanel3DUnderInGamePanel() and 0.2 or 0.15

	return Roact.createElement(Panel3D,  {
		alignedPanel = if self.state.userGui then self.state.userGui:getPanel() else nil,
		panelName = "BottomBar",
		partSize = Vector2.new((#self.state.itemList - 1) * basePartSize, basePartSize),
		virtualScreenSize = Vector2.new((#self.state.itemList - 1) * 50, 50),
		offset = self.state.vrMenuOpen and CFrame.new(0, -1.5, 0) or CFrame.new(0, -2, 0),
		lerp = true,
		tilt = 0,
		anchoring = VRConstants.AnchoringTypes.Head,
		faceCamera = true,
		alwaysOnTop = EngineFeatureEnableVRBottomBarWorksBehindObjects and true or nil,
		parent = EngineFeatureEnableVRBottomBarWorksBehindObjects and GuiService.CoreGuiFolder or nil,
	}, {
		CanvasGroup = Roact.createElement("CanvasGroup", {
			BackgroundTransparency =  1,
			BorderSizePixel = 0,
			GroupTransparency = self.fadeTransparency,
			Size = UDim2.new(1, 0, 1, 0),
		}, {
			SystemBar = Roact.createElement(SystemBar, {
				itemList = self.state.itemList,
				selection = self.state.vrMenuOpen and 1 or 3,
				placement = Placement.Bottom,
				hidden = false,
				onSafeAreaChanged = function() end,
				size = UDim2.new(1, 0, 1, 0),
				position = UDim2.new(),
				layoutOrder = 1,
				roundCorners = true,
				buttonStroke = true,
				bgTransparency = 0,
				sortOrder = Enum.SortOrder.LayoutOrder,
			}),
		}),

		ShowTopBarChanged = Roact.createElement(ExternalEventConnection, {
			event = VRHub.ShowTopBarChanged.Event,
			callback = self.onShowTopBarChanged,
		}),
		CoreGuiChanged = Roact.createElement(ExternalEventConnection, {
			event = StarterGui.CoreGuiChangedSignal,
			callback = self.updateItemListState,
		}),
		VRPlayModeChanged = FFlagUserVRPlaySeatedStanding and Roact.createElement(ExternalEventConnection, {
			event = GameSettings:GetPropertyChangedSignal("VRPlayMode"),
			callback = self.updateItemListState,
		}),
		SafetyBubbleToggled = SafetyBubbleEnabled and VRHub.SafetyBubble and Roact.createElement(ExternalEventConnection, {
			event = VRHub.SafetyBubble.Toggled.Event,
			callback = self.updateItemListState,
		}),
		BackpackItemAdded = Roact.createElement(ExternalEventConnection, {
			event = BackpackScript.BackpackItemAdded.Event,
			callback = self.onBackpackItemAdded,
		}),
		BackpackEmpty = Roact.createElement(ExternalEventConnection, {
			event = BackpackScript.BackpackEmpty.Event,
			callback = self.onBackpackEmpty,
		}),
		EmotesLoaded = Roact.createElement(ExternalEventConnection, {
			event = EmotesMenuMaster.EmotesLoaded.Event,
			callback = self.onEmotesLoaded,
		}),
		RenderStepped = Roact.createElement(ExternalEventConnection, {
			event = RunService.RenderStepped,
			callback = self.onRenderStepped,
		}),
		VREnabled = Roact.createElement(ExternalEventConnection, {
			event = VRService:GetPropertyChangedSignal("VREnabled"),
			callback = self.onVREnabledChanged,
		}),
	})
end

function VRBottomBar:didUpdate(prevProps, prevState)
	if prevState.lookAway ~= self.state.lookAway or prevState.vrMenuOpen ~= self.state.vrMenuOpen then
		local fadeOut = not self.state.vrMenuOpen and self.state.lookAway
		if fadeOut then
			self.fadeTransparencyMotor:setGoal(Otter.spring(1, SpringOptions.Slower))
		else
			self.fadeTransparencyMotor:setGoal(Otter.spring(0, SpringOptions.Default))
		end
	end

	if FFlagVRMoveVoiceIndicatorToBottomBar and prevProps.voiceEnabled ~= self.props.voiceEnabled then
		self.updateItemListState()
	end
end

function VRBottomBar:willUnmount()
	self.fadeTransparencyMotor:stop()
end

return RoactRodux.UNSTABLE_connect2(nil, nil)(VRBottomBar)
