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
local FFlagVRBottomBarUsePositionConfig = require(RobloxGui.Modules.Flags.FFlagVRBottomBarUsePositionConfig)
local FFlagVRBottomBarDebugPositionConfig = require(RobloxGui.Modules.Flags.FFlagVRBottomBarDebugPositionConfig)
local FIntVRBottomBarPositionOffsetVerticalNumber = require(RobloxGui.Modules.Flags.FIntVRBottomBarPositionOffsetVerticalNumber)
local FIntVRBottomBarPositionOffsetDepthNumber = require(RobloxGui.Modules.Flags.FIntVRBottomBarPositionOffsetDepthNumber)

local UsePositionConfig = FFlagVRBottomBarUsePositionConfig or FFlagVRBottomBarDebugPositionConfig

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

local OFFSET = {
	Y = UsePositionConfig and FIntVRBottomBarPositionOffsetVerticalNumber/100 or -1.7,
	Z = UsePositionConfig and FIntVRBottomBarPositionOffsetDepthNumber/100 or -0.2
}

local BASE_PART_SIZE = 0.2 + OFFSET.Z/10

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

-- Remove when remove FFlagVRBottomBarDebugPositionConfig
local function roundOffset(x)
	return x >= 0 and math.floor(x * 10 + 0.5)/10 or math.ceil(x * 10 - 0.5)/10
end

-- default bar init
function VRBottomBar:init()
	self:setState({
		yOffset = OFFSET.Y, -- Remove when remove FFlagVRBottomBarDebugPositionConfig
		zOffset = OFFSET.Z, -- Remove when remove FFlagVRBottomBarDebugPositionConfig
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

	-- Remove when remove FFlagVRBottomBarDebugPositionConfig
	self.getDebugYOffsetUp = function()
		return {
			iconOn = "rbxasset://textures/ui/MenuBar/arrow_up.png",
			iconOff = "rbxasset://textures/ui/MenuBar/arrow_up.png",
			onActivated = function()
				self:setState({
					yOffset = self.state.yOffset + 0.1,
				})
			end,
		}
	end

	-- Remove when remove FFlagVRBottomBarDebugPositionConfig
	self.getDebugYOffsetDown = function()
		return {
			iconOn = "rbxasset://textures/ui/MenuBar/arrow_down.png",
			iconOff = "rbxasset://textures/ui/MenuBar/arrow_down.png",
			onActivated = function()
				self:setState({
					yOffset = self.state.yOffset - 0.1,
				})
			end,
		}
	end

	-- Remove when remove FFlagVRBottomBarDebugPositionConfig
	self.getDebugZOffsetUp = function()
		return {
			iconOn = "rbxasset://textures/ui/MenuBar/arrow_left.png",
			iconOff = "rbxasset://textures/ui/MenuBar/arrow_left.png",
			onActivated = function()
				self:setState({
					zOffset = self.state.zOffset + 0.1,
				})
			end,
		}
	end

	-- Remove when remove FFlagVRBottomBarDebugPositionConfig
	self.getDebugZOffsetDown = function()
		return {
			iconOn = "rbxasset://textures/ui/MenuBar/arrow_right.png",
			iconOff = "rbxasset://textures/ui/MenuBar/arrow_right.png",
			onActivated = function()
				self:setState({
					zOffset = self.state.zOffset - 0.1,
				})
			end,
		}
	end

	-- Remove when remove FFlagVRBottomBarDebugPositionConfig
	self.getDebugTextLabel = function()
		return {
			iconComponent = function(props)
				local yOffset = roundOffset(self.state.yOffset)
				local zOffset = roundOffset(self.state.zOffset)
				local text = "Y "..yOffset..", Z "..zOffset
				return Roact.createElement("TextLabel", {
					BackgroundTransparency = 1,
					Text = text,
					TextColor3 = Color3.new(1, 1, 1),
					TextWrapped = true,
					TextScaled = true,
					Size = UDim2.fromScale(1,1),
					[Roact.Children] = props[Roact.Children],
				})
			end,
			itemSize = UDim2.new(0, 44, 0, 44),
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

	self.getAlignedPanelPart = function()
		local userGuiPanel = if self.state.userGui then self.state.userGui:getPanel() else nil
		local userGuiPanelPart = userGuiPanel and userGuiPanel:GetPart()
		local shouldAlignToPanel = userGuiPanelPart
			and userGuiPanel:IsPositionLockedType()
			and (userGuiPanel:IsVisible() or userGuiPanel.alwaysUpdatePosition)
		if shouldAlignToPanel then
			return userGuiPanelPart
		end
	end

	self.bottomBarPanelOffsetCallback = function(args)
		-- Called in RenderStepped each frame to align position inside bottom bar Panel3D
		local finalPosition = args.finalPosition
		local cameraHeadScale = args.cameraHeadScale
		local userGuiPanelPart = self.getAlignedPanelPart()
		
		if userGuiPanelPart then
			local yOffset = self.state.yOffset -- Use constant when remove FFlagVRBottomBarDebugPositionConfig
			local zOffset = self.state.zOffset -- Use constant when remove FFlagVRBottomBarDebugPositionConfig
			-- finalPosition should be calculated according to userGuiPanelPart's position and camera height
			local userHeadCameraCF = VRUtil.GetUserCFrameWorldSpace(Enum.UserCFrame.Head)
			local zOffsetCFrame = CFrame.new(0, 0, zOffset * cameraHeadScale - userGuiPanelPart.Size.Z * 0.5)
			local shiftedCFrame = userGuiPanelPart.CFrame:ToWorldSpace(zOffsetCFrame)
			-- Use userGuiPanelPart.Position.Y to calculate finalPosition will cause issue in UI collapsing/expanding animation
			finalPosition = Vector3.new(
				shiftedCFrame.Position.X,
				userHeadCameraCF.Position.Y + yOffset * cameraHeadScale,
				shiftedCFrame.Position.Z
			)
		end
		return finalPosition
	end
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
	
	if FFlagVRBottomBarDebugPositionConfig then
		enabledItems = {
			self.getDebugYOffsetUp(),
			self.getDebugYOffsetDown(),
			self.getDebugZOffsetUp(),
			self.getDebugZOffsetDown(),
			self.getDebugTextLabel(),
			SeparatorIcon,
			MainMenu,
			SeparatorIcon,
			ToggleGui
		}
	end

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
	if UsePositionConfig then
		basePartSize = 0.2 + self.state.zOffset/10  -- Use constant when remove FFlagVRBottomBarDebugPositionConfig
	end

	local itemList = self.state.itemList

	return Roact.createFragment({
		BottomBarPanel3D = Roact.createElement(Panel3D,  {
			alignedPanel = if self.state.userGui and not UsePositionConfig then self.state.userGui:getPanel() else nil,
			panelName = "BottomBar",
			partSize = Vector2.new((#itemList - 1) * basePartSize, basePartSize),
			virtualScreenSize = Vector2.new((#itemList - 1) * 50, 50),
			offset = self.state.vrMenuOpen and CFrame.new(0, UsePositionConfig and 0 or -1.5, 0) or CFrame.new(0, UsePositionConfig and -0.5 or -2, 0),
			offsetCallback = UsePositionConfig and self.bottomBarPanelOffsetCallback or nil,
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
					itemList = itemList,
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
	elseif UsePositionConfig and (prevState.yOffset ~= self.state.yOffset or prevState.zOffset ~= self.state.zOffset) then
		-- Remove state.yOffset and state.zOffset when remove FFlagVRBottomBarDebugPositionConfig
		self.updateItemListState()
	end
end

function VRBottomBar:willUnmount()
	self.fadeTransparencyMotor:stop()
end

return RoactRodux.UNSTABLE_connect2(nil, nil)(VRBottomBar)
