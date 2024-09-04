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
local BaseMenu = UIBlox.App.Menu.BaseMenu
local SystemBar = UIBlox.App.Navigation.SystemBar
local Placement = UIBlox.App.Navigation.Enum.Placement
local Panel3D = UIBlox.Core.VR.Panel3D
local VRConstants = UIBlox.Core.VR.Constants
local ImageSetLabel = UIBlox.Core.ImageSet.ImageSetLabel
local withStyle = UIBlox.Core.Style.withStyle

local RobloxGui = CoreGui:WaitForChild("RobloxGui")
local RobloxTranslator = require(RobloxGui.Modules.RobloxTranslator)
local VRHub = require(RobloxGui.Modules.VR.VRHub)
local VRUtil = require(CorePackages.Workspace.Packages.VrCommon).VRUtil

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

local EngineFeatureEnableVRBottomBarWorksBehindObjects = game:GetEngineFeature("EnableVRBottomBarWorksBehindObjects")

local FFlagVRMoveVoiceIndicatorToBottomBar = require(RobloxGui.Modules.Flags.FFlagVRMoveVoiceIndicatorToBottomBar)
local FFlagVRBottomBarDebugPositionConfig = require(RobloxGui.Modules.Flags.FFlagVRBottomBarDebugPositionConfig)
local FIntVRBottomBarPositionOffsetVerticalNumber = require(RobloxGui.Modules.Flags.FIntVRBottomBarPositionOffsetVerticalNumber)
local FIntVRBottomBarPositionOffsetDepthNumber = require(RobloxGui.Modules.Flags.FIntVRBottomBarPositionOffsetDepthNumber)
local FFlagVRBottomBarHighlightedLeaveGameIcon = require(RobloxGui.Modules.Flags.FFlagVRBottomBarHighlightedLeaveGameIcon)
local FFlagVRBottomBarNoCurvature = game:DefineFastFlag("VRBottomBarNoCurvature", false)

local SplashScreenManager = require(CorePackages.Workspace.Packages.SplashScreenManager).SplashScreenManager

-- this var moves the gui and bottom bar together
local GetFIntVRScaleGuiDistance = require(RobloxGui.Modules.Flags.GetFIntVRScaleGuiDistance) or 100
local scaleGuiDistance = GetFIntVRScaleGuiDistance() * 0.01

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
	Y = FIntVRBottomBarPositionOffsetVerticalNumber/100,
	Z = FIntVRBottomBarPositionOffsetDepthNumber/100
}

local BASE_PART_SIZE = 0.2 + OFFSET.Z/10

local PANEL3D_SIZE_Z = 0.05 -- Defined in Panel3D

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
			VRHub:SetShowMoreMenu(false)
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
		VRHub:SetShowMoreMenu(false)
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

local LeaveGameHighlighted =
{
	iconOn = "rbxasset://textures/ui/MenuBar/icon_leave_highlighted.png",
	iconOff = "rbxasset://textures/ui/MenuBar/icon_leave_highlighted.png",
	onActivated = LeaveGame.onActivated,
}

local MoreButton =
{
	iconOn = "rbxasset://textures/ui/MenuBar/icon_more.png",
	iconOff = "rbxasset://textures/ui/MenuBar/icon_more.png",
	onActivated = function()
		VRHub:SetShowTopBar(true)
		VRHub:SetShowMoreMenu(not VRHub.ShowMoreMenu)
		AnalyticsService:ReportCounter("VR-BottomBar-More")
	end,
}

local SeparatorIcon =
{
	iconComponent = VRBarSeparator,
	itemSize = UDim2.new(0, 28, 0, 44),
}

local MoreEmotes =
{
	icon = "rbxasset://textures/ui/MenuBar/icon_emote.png",
	text = RobloxTranslator:FormatByKey("CoreScripts.TopBar.Emotes"),
	onActivated = function()
		Emotes.onActivated()
		AnalyticsService:ReportCounter("VR-BottomBar-MoreMenu-Emotes")
	end,
}

local MoreLeaderboard =
{
	icon = "rbxasset://textures/ui/MenuBar/icon_leaderboard.png",
	text = RobloxTranslator:FormatByKey("CoreScripts.TopBar.Leaderboard"),
	onActivated = function()
		PlayerList.onActivated()
		AnalyticsService:ReportCounter("VR-BottomBar-MoreMenu-PlayerList")
	end,
}

local MoreInventory =
{
	icon = "rbxasset://textures/ui/MenuBar/icon__backpack.png",
	text = RobloxTranslator:FormatByKey("CoreScripts.TopBar.Inventory"),
	onActivated = function()
		BackpackIcon.onActivated()
		AnalyticsService:ReportCounter("VR-BottomBar-MoreMenu-Backpack")
	end,
}

-- Remove when remove FFlagVRBottomBarDebugPositionConfig
local function roundOffset(x)
	return x >= 0 and math.floor(x * 10 + 0.5)/10 or math.ceil(x * 10 - 0.5)/10
end

-- default bar init
function VRBottomBar:init()
	self:setState({
		yOffset = OFFSET.Y * scaleGuiDistance, -- Remove when remove FFlagVRBottomBarDebugPositionConfig
		zOffset = OFFSET.Z * scaleGuiDistance, -- Remove when remove FFlagVRBottomBarDebugPositionConfig
		moreMenuOpen = false,
		vrMenuOpen = true,
		lookAway = false, -- whether player looks away from VRBottomBar
		userGui = VRService.VREnabled and safeRequire(RobloxGui.Modules.VR.UserGui) or Roact.None,
		hidden = not SplashScreenManager.isFPSAtTarget(),
	})

	self.backpackHasItems = false
	self.emotesLoaded = false

	self.onTargetFPSSTateChange = function(isFPSAtTarget)
		self:setState({hidden = not isFPSAtTarget})
	end
	SplashScreenManager.addStatusChangeListener(self.onTargetFPSSTateChange)

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
					self.props.voiceChatServiceManager:ToggleMic("VRBottomBar")
				end

				AnalyticsService:ReportCounter("VR-BottomBar-Voice")
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
		itemList = { MainMenu, SeparatorIcon, ToggleGui, SeparatorIcon, LeaveGame},
		moreItemList = {},
	})

	self.onShowTopBarChanged = function()
		if not VRHub.ShowTopBar then
			VRHub:SetShowMoreMenu(false)
		end
		self:setState({
			vrMenuOpen = VRHub.ShowTopBar,
		})
	end

	self.onShowMoreMenuChanged = function()
		self:setState({
			moreMenuOpen = VRHub.ShowMoreMenu,
		})
	end

	self.updateItemListState = function()
		local activeItems, moreItems = self:updateItems()
		self:setState({
			itemList = activeItems,
			moreItemList = moreItems
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

	self.moreMenuPanelOffsetCallback = function(args)
		local finalPosition = args.finalPosition
		local cameraHeadScale = args.cameraHeadScale
		local userGuiPanelPart = self.getAlignedPanelPart()
		if userGuiPanelPart then
			-- Move an offset relative to bottom bar
			local bottomBarPosition = self.bottomBarPanelOffsetCallback(args)
			local userHeadCameraCF = VRUtil.GetUserCFrameWorldSpace(Enum.UserCFrame.Head)
			local bottomBarCFrame = CFrame.new(bottomBarPosition, userHeadCameraCF.Position)

			local basePartSize = 0.2 + self.state.zOffset / 10 -- Use constant when remove FFlagVRBottomBarDebugPositionConfig
			basePartSize = basePartSize * scaleGuiDistance

			local xOffset = FFlagVRBottomBarDebugPositionConfig and (#self.state.itemList - 3) / 2 * basePartSize
				or (#self.state.itemList - 2.5) / 2 * basePartSize
			local bottomBarOffsetCFrame = CFrame.new(-xOffset * cameraHeadScale, basePartSize/2 * cameraHeadScale, -PANEL3D_SIZE_Z/2)
			local panelCFrame = bottomBarCFrame:ToWorldSpace(bottomBarOffsetCFrame) -- Move in bottomBar object space

			panelCFrame = CFrame.new(panelCFrame.Position) * userGuiPanelPart.CFrame.Rotation
			local moreMenuOffsetCFrame = CFrame.new(0, #self.state.moreItemList * basePartSize/2 * cameraHeadScale, PANEL3D_SIZE_Z/2)
			panelCFrame = panelCFrame:ToWorldSpace(moreMenuOffsetCFrame) -- Move in moreMenu object space
			finalPosition = panelCFrame.Position
		end

		return finalPosition
	end

	self.moreMenuPanelTiltCallback = function(args)
		local panelCFrame = args.panelCFrame
		local userGuiPanelPart = self.getAlignedPanelPart()

		if userGuiPanelPart then
			panelCFrame = CFrame.new(panelCFrame.Position) * userGuiPanelPart.CFrame.Rotation
		end
		return panelCFrame
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

	local showEmotesIcon = emotesEnabled and not (StarterPlayer.UserEmotesEnabled and self.emotesLoaded == false)
	local showBackpackIcon = backpackEnabled and self.backpackHasItems

	if chatEnabled then
		table.insert(enabledItems, Chat)
	end

	if FFlagVRMoveVoiceIndicatorToBottomBar and self.props.voiceEnabled then
		table.insert(enabledItems, self.getVoiceIcon())
	end

	table.insert(enabledItems, SeparatorIcon)

	if VRHub.SafetyBubble and VRHub.SafetyBubble.enabled then
		table.insert(enabledItems, SafetyOn)
	else
		table.insert(enabledItems, SafetyOff)
	end

	if FFlagVRBottomBarHighlightedLeaveGameIcon then
		if VRHub.ShowHighlightedLeaveGameIcon then
			table.insert(enabledItems, LeaveGameHighlighted)
		else
			table.insert(enabledItems, LeaveGame)
		end
	else
		table.insert(enabledItems, LeaveGame)
	end

	local enabledMoreItems = {}
	if showEmotesIcon then
		table.insert(enabledMoreItems, MoreEmotes)
	end
	if playerListEnabled then
		table.insert(enabledMoreItems, MoreLeaderboard)
	end
	if showBackpackIcon then
		table.insert(enabledMoreItems, MoreInventory)
	end
	if #enabledMoreItems > 0 then
		table.insert(enabledItems, MoreButton)
	end

	return enabledItems, enabledMoreItems
end

-- VRBottomBar implements two UIBlox components
function VRBottomBar:renderWithStyle(style)
	local basePartSize = 0.2 + self.state.zOffset/10  -- Use constant when remove FFlagVRBottomBarDebugPositionConfig
	basePartSize = basePartSize * scaleGuiDistance

	local itemList = self.state.itemList
	local moreItemList = self.state.moreItemList

	local selection = FFlagVRBottomBarDebugPositionConfig and 7 or 1
	if not self.state.vrMenuOpen then
		selection = FFlagVRBottomBarDebugPositionConfig and 9 or 3
	elseif self.state.moreMenuOpen and #moreItemList > 0 then
		selection = #itemList
	end

	return Roact.createFragment({
		BottomBarPanel3D = Roact.createElement(Panel3D, {
			panelName = "BottomBar",
			partSize = Vector2.new((#itemList - 1) * basePartSize, basePartSize),
			virtualScreenSize = Vector2.new((#itemList - 1) * 50, 50),
			offset = self.state.vrMenuOpen and CFrame.new(0, 0, 0) or CFrame.new(0, -0.5, 0),
			offsetCallback = self.bottomBarPanelOffsetCallback,
			lerp = true,
			tilt = 0,
			anchoring = VRConstants.AnchoringTypes.Head,
			faceCamera = true,
			curvature = if FFlagVRBottomBarNoCurvature or game:GetEngineFeature("EnableMaquettesSupport") then 0 else nil,
			alwaysOnTop = EngineFeatureEnableVRBottomBarWorksBehindObjects and true or nil,
			parent = EngineFeatureEnableVRBottomBarWorksBehindObjects and GuiService.CoreGuiFolder or nil,
			zOffset = 1,
		}, {
			CanvasGroup = Roact.createElement("CanvasGroup", {
				BackgroundTransparency =  1,
				BorderSizePixel = 0,
				GroupTransparency = self.fadeTransparency,
				Size = UDim2.new(1, 0, 1, 0),
			}, {
				SystemBar = Roact.createElement(SystemBar, {
					itemList = itemList,
					selection = selection,
					placement = Placement.Bottom,
					hidden = self.state.hidden,
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
		MoreMenuPanel3D = self.state.moreMenuOpen and Roact.createElement(Panel3D, {
			panelName = "MoreMenu",
			partSize = Vector2.new(5 * basePartSize, #moreItemList * basePartSize),
			virtualScreenSize = Vector2.new(250, (#moreItemList * 56 + 8)),
			offset = self.state.vrMenuOpen and CFrame.new(0, 0, 0) or CFrame.new(0, -0.5, 0),
			offsetCallback = self.moreMenuPanelOffsetCallback,
			lerp = true,
			tilt = 0,
			tiltCallback = self.moreMenuPanelTiltCallback,
			anchoring = VRConstants.AnchoringTypes.Head,
			faceCamera = true,
			alwaysOnTop = EngineFeatureEnableVRBottomBarWorksBehindObjects and true or nil,
			parent = EngineFeatureEnableVRBottomBarWorksBehindObjects and GuiService.CoreGuiFolder or nil,
			zOffset = 2,
		}, {
			Content = Roact.createElement("Frame", {
				BackgroundTransparency = 1,
				Size = UDim2.new(1, 0, 1, 0),
			}, {
				MoreMenu = Roact.createElement(BaseMenu, {
					anchorPoint = Vector2.new(0.5, 1),
					buttonProps = moreItemList,
					position = UDim2.new(0.5, 0, 1, -8),
					background = style.Theme.BackgroundContrast,
				}),
				Caret = Roact.createElement(ImageSetLabel, {
					AnchorPoint = Vector2.new(0.5, 1),
					BackgroundTransparency = 1,
					Image = "rbxasset://textures/ui/MenuBar/dropdown-arrow.png",
					ImageColor3 = Color3.fromRGB(25, 27, 29),
					Position = UDim2.new(0.5, 0, 1, 0),
					Size = UDim2.new(0, 24, 0, 10),
				}),
			})
		}),

		ShowHighlightedLeaveGameIconToggled = FFlagVRBottomBarHighlightedLeaveGameIcon and Roact.createElement(ExternalEventConnection, {
			event = VRHub.ShowHighlightedLeaveGameIconToggled.Event,
			callback = self.updateItemListState,
		}),
		ShowTopBarChanged = Roact.createElement(ExternalEventConnection, {
			event = VRHub.ShowTopBarChanged.Event,
			callback = self.onShowTopBarChanged,
		}),
		ShowMoreMenuChanged = Roact.createElement(ExternalEventConnection, {
			event = VRHub.ShowMoreMenuChanged.Event,
			callback = self.onShowMoreMenuChanged,
		}),
		CoreGuiChanged = Roact.createElement(ExternalEventConnection, {
			event = StarterGui.CoreGuiChangedSignal,
			callback = self.updateItemListState,
		}),
		SafetyBubbleToggled = VRHub.SafetyBubble and Roact.createElement(ExternalEventConnection, {
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

function VRBottomBar:render()
	return withStyle(function(style)
		return self:renderWithStyle(style)
	end)
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

	if self.state.moreMenuOpen and #self.state.moreItemList == 0 then
		VRHub:SetShowMoreMenu(false)
	end

	if FFlagVRMoveVoiceIndicatorToBottomBar and prevProps.voiceEnabled ~= self.props.voiceEnabled then
		self.updateItemListState()
	elseif prevState.yOffset ~= self.state.yOffset or prevState.zOffset ~= self.state.zOffset then
		-- Remove state.yOffset and state.zOffset when remove FFlagVRBottomBarDebugPositionConfig
		self.updateItemListState()
	end
end

function VRBottomBar:willUnmount()
	self.fadeTransparencyMotor:stop()
end

return RoactRodux.UNSTABLE_connect2(nil, nil)(VRBottomBar)
