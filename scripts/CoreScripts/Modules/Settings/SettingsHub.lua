--[[
				Filename: SettingsHub.lua
				Written by: jeditkacheff
				Version 1.0
				Description: Controls the settings menu navigation and contains the settings pages
--]]

local CoreGui = game:GetService("CoreGui")
local RobloxGui = CoreGui:WaitForChild("RobloxGui")
local isTenFootInterface = require(RobloxGui.Modules.TenFootInterface):IsEnabled()

--[[ UTILITIES ]]
local utility = require(RobloxGui.Modules.Settings.Utility)
local VRHub = require(RobloxGui.Modules.VR.VRHub)

--[[ CONSTANTS ]]
local SETTINGS_SHIELD_COLOR = Color3.new(41/255,41/255,41/255)
local SETTINGS_SHIELD_TRANSPARENCY = 0.2
local SETTINGS_SHIELD_VR_TRANSPARENCY = 1
local SETTINGS_SHIELD_SIZE = UDim2.new(1, 0, 1, 0)
local SETTINGS_SHIELD_INACTIVE_POSITION = UDim2.new(0,0,-1,-36)
local SETTINGS_SHIELD_ACTIVE_POSITION = UDim2.new(0, 0, 0, 0)
local SETTINGS_BASE_ZINDEX = 2
local DEV_CONSOLE_ACTION_NAME = "Open Dev Console"
local QUICK_PROFILER_ACTION_NAME = "Show Quick Profiler"

local VERSION_BAR_HEIGHT = isTenFootInterface and 32 or (utility:IsSmallTouchScreen() and 24 or 26)

local success, result = pcall(function() return settings():GetFFlag('UseNotificationsLocalization') end)
local FFlagUseNotificationsLocalization = success and result

--[[ SERVICES ]]
local RobloxReplicatedStorage = game:GetService("RobloxReplicatedStorage")
local ContentProvider = game:GetService("ContentProvider")
local StarterGui = game:GetService("StarterGui")
local ContextActionService = game:GetService("ContextActionService")
local GuiService = game:GetService("GuiService")
local UserInputService = game:GetService("UserInputService")
local RunService = game:GetService("RunService")
local VRService = game:GetService("VRService")
local Settings = UserSettings()
local GameSettings = Settings.GameSettings

local getDisplayVersionFlagSuccess, getDisplayVersionFlagValue = pcall(function() return settings():GetFFlag("DisplayVersionInformation") end)
local displayVersionFlag = (getDisplayVersionFlagSuccess and getDisplayVersionFlagValue)

local enableResponsiveUIFixSuccess, enableResponsiveUIFixValue = pcall(function() return settings():GetFFlag("EnableResponsiveUIFix") end)
local enableResponsiveUI = enableResponsiveUIFixSuccess and enableResponsiveUIFixValue

--[[ REMOTES ]]
local GetServerVersionRemote = nil
if displayVersionFlag then
	spawn(function()
		GetServerVersionRemote = RobloxReplicatedStorage:WaitForChild("GetServerVersion")
	end)
end

--[[ VARIABLES ]]
local isTouchDevice = UserInputService.TouchEnabled
RobloxGui:WaitForChild("Modules"):WaitForChild("TenFootInterface")
local platform = UserInputService:GetPlatform()

local baseUrl = ContentProvider.BaseUrl
local isTestEnvironment = not string.find(baseUrl, "www.roblox.com")
local DeveloperConsoleModule = require(RobloxGui.Modules.DeveloperConsoleModule)

local lastInputChangedCon = nil
local chatWasVisible = false

local connectedServerVersion = nil

--[[ CORE MODULES ]]
local chat = require(RobloxGui.Modules.ChatSelector)

if utility:IsSmallTouchScreen() or isTenFootInterface then
	SETTINGS_SHIELD_ACTIVE_POSITION = UDim2.new(0,0,0,0)
	SETTINGS_SHIELD_SIZE = UDim2.new(1,0,1,0)
end

local function GetServerVersionBlocking()
	if connectedServerVersion then
		return connectedServerVersion
	end
	if not GetServerVersionRemote then
		repeat
			wait()
		until GetServerVersionRemote
	end
	connectedServerVersion = GetServerVersionRemote:InvokeServer()
	return connectedServerVersion
end

local function CreateSettingsHub()
	local this = {}
	this.Visible = false
	this.Active = true
	this.Pages = {CurrentPage = nil, PageTable = {}}
	this.MenuStack = {}
	this.TabHeaders = {}
	this.BottomBarButtons = {}
	this.ResizedConnection = nil
	this.TabConnection = nil
	this.LeaveGamePage = require(RobloxGui.Modules.Settings.Pages.LeaveGame)
	this.ResetCharacterPage = require(RobloxGui.Modules.Settings.Pages.ResetCharacter)
	this.SettingsShowSignal = utility:CreateSignal()
	this.OpenStateChangedCount = 0

	local pageChangeCon = nil

	local PoppedMenuEvent = Instance.new("BindableEvent")
	PoppedMenuEvent.Name = "PoppedMenu"
	this.PoppedMenu = PoppedMenuEvent.Event

	local function shouldShowBottomBar(whichPage)
		whichPage = whichPage or this.Pages.CurrentPage
		if whichPage == this.LeaveGamePage or whichPage == this.ResetCharacterPage then
			return false
		end

		if utility:IsPortrait() or utility:IsSmallTouchScreen() then
			return false
		end

		return true
	end

	local function setBottomBarBindings()
		if not this.Visible then
			return
		end
		for i = 1, #this.BottomBarButtons do
			local buttonTable = this.BottomBarButtons[i]
			local buttonName = buttonTable[1]
			local hotKeyTable = buttonTable[2]
			ContextActionService:BindCoreAction(buttonName, hotKeyTable[1], false, unpack(hotKeyTable[2]))
		end

		if this.BottomButtonFrame then
			this.BottomButtonFrame.Visible = true
		end
	end

	local function removeBottomBarBindings(delayBeforeRemoving)
		for _, hotKeyTable in pairs(this.BottomBarButtons) do
			ContextActionService:UnbindCoreAction(hotKeyTable[1])
		end

		local myOpenStateChangedCount = this.OpenStateChangedCount
		local removeBottomButtonFrame = function()
			if this.OpenStateChangedCount == myOpenStateChangedCount and this.BottomButtonFrame then
				this.BottomButtonFrame.Visible = false
			end
		end

		if delayBeforeRemoving then
			delay(delayBeforeRemoving, removeBottomButtonFrame)
		else
			removeBottomButtonFrame()
		end
	end

	local function addBottomBarButton(name, text, gamepadImage, keyboardImage, position, clickFunc, hotkeys)
		local buttonName = name .. "Button"
		local textName = name .. "Text"

		local size = UDim2.new(0,260,0,70)
		if isTenFootInterface then
			size = UDim2.new(0,320,0,120)
		end

		this[buttonName], this[textName] = utility:MakeStyledButton(name .. "Button", text, size, clickFunc, nil, this)

		this[buttonName].Position = position
		this[buttonName].Parent = this.BottomButtonFrame
		if isTenFootInterface then
			this[buttonName].ImageTransparency = 1
		end

		this[textName].FontSize = Enum.FontSize.Size24
		local hintLabel = nil

		if not isTouchDevice then
			if FFlagUseNotificationsLocalization then
				this[textName].Size = UDim2.new(0.675,0,0.67,0)
				this[textName].Position = UDim2.new(0.275,0,0.125,0)
			else
				this[textName].Size = UDim2.new(0.75,0,0.9,0)
				this[textName].Position = UDim2.new(0.25,0,0,0)
			end
			local hintNameText = name .. "HintText"
			local hintName = name .. "Hint"
			local image = ""
			if UserInputService:GetGamepadConnected(Enum.UserInputType.Gamepad1) or platform == Enum.Platform.XBoxOne then
				image = gamepadImage
			else
				image = keyboardImage
			end

			hintLabel = utility:Create'ImageLabel'
			{
				Name = hintName,
				ZIndex = this.Shield.ZIndex + 2,
				BackgroundTransparency = 1,
				Image = image,
				Parent = this[buttonName]
			};

			hintLabel.AnchorPoint = Vector2.new(0.5,0.5)
			hintLabel.Size = UDim2.new(0,50,0,50)
			hintLabel.Position = UDim2.new(0.15,0,0.475,0)

		end

		if isTenFootInterface then
			this[textName].FontSize = Enum.FontSize.Size36
		end

		UserInputService.InputBegan:connect(function(inputObject)

			if inputObject.UserInputType == Enum.UserInputType.Gamepad1 or inputObject.UserInputType == Enum.UserInputType.Gamepad2 or
			inputObject.UserInputType == Enum.UserInputType.Gamepad3 or inputObject.UserInputType == Enum.UserInputType.Gamepad4 then
				if hintLabel then
					hintLabel.Image = gamepadImage
					-- if isTenFootInterface then
					-- 	hintLabel.Size = UDim2.new(0,90,0,90)
					-- 	hintLabel.Position = UDim2.new(0,10,0.5,-45)
					-- else
					-- 	hintLabel.Size = UDim2.new(0,60,0,60)
					-- 	hintLabel.Position = UDim2.new(0,10,0,5)
					-- end
				end
			elseif inputObject.UserInputType == Enum.UserInputType.Keyboard then
				if hintLabel then
					hintLabel.Image = keyboardImage
					-- hintLabel.Size = UDim2.new(0,48,0,48)
					-- hintLabel.Position = UDim2.new(0,10,0,8)
				end
			end
		end)

		local hotKeyFunc = function(contextName, inputState, inputObject)
			if inputState == Enum.UserInputState.Begin then
				clickFunc()
			end
		end

		local hotKeyTable = {hotKeyFunc, hotkeys}
		this.BottomBarButtons[#this.BottomBarButtons + 1] = {buttonName, hotKeyTable}
	end

	local resetEnabled = true
	local function setResetEnabled(value)
		resetEnabled = value
		if this.ResetCharacterButton then
			this.ResetCharacterButton.Selectable = value
			this.ResetCharacterButton.Active = value
			this.ResetCharacterButton.Enabled.Value = value
			local resetHint = this.ResetCharacterButton:FindFirstChild("ResetCharacterHint")
			if resetHint then
				resetHint.ImageColor3 = (value and Color3.fromRGB(255, 255, 255) or Color3.fromRGB(100, 100, 100))
			end
			local resetButtonText = this.ResetCharacterButton:FindFirstChild("ResetCharacterButtonTextLabel")
			if resetButtonText then
				resetButtonText.TextColor3 = (value and Color3.fromRGB(255, 255, 255) or Color3.fromRGB(100, 100, 100))
			end
		end
	end

	StarterGui:RegisterSetCore("ResetButtonCallback", function(callback)
		local isBindableEvent = typeof(callback) == "Instance" and callback:IsA("BindableEvent")
		if isBindableEvent or type(callback) == "boolean" then
			this.ResetCharacterPage:SetResetCallback(callback)
		else
			warn("ResetButtonCallback must be set to a BindableEvent or a boolean")
		end
		if callback == false then
			setResetEnabled(false)
		elseif not resetEnabled and (isBindableEvent or callback == true) then
			setResetEnabled(true)
		end
	end)

	local function createGui()
		local PageViewSizeReducer = 0
		if utility:IsSmallTouchScreen() then
			PageViewSizeReducer = 5
		end

		this.ClippingShield = utility:Create'Frame'
		{
			Name = "SettingsShield",
			Size = SETTINGS_SHIELD_SIZE,
			Position = SETTINGS_SHIELD_ACTIVE_POSITION,
			BorderSizePixel = 0,
			ClipsDescendants = true,
			BackgroundTransparency = 1,
			Visible = true,
			ZIndex = SETTINGS_BASE_ZINDEX,
			Parent = RobloxGui
		};

		this.Shield = utility:Create'Frame'
		{
			Name = "SettingsShield",
			Size = UDim2.new(1,0,1,0),
			Position = SETTINGS_SHIELD_INACTIVE_POSITION,
			BackgroundTransparency = SETTINGS_SHIELD_TRANSPARENCY,
			BackgroundColor3 = SETTINGS_SHIELD_COLOR,
			BorderSizePixel = 0,
			Visible = false,
			Active = true,
			ZIndex = SETTINGS_BASE_ZINDEX,
			Parent = this.ClippingShield
		};
		this.VRShield = utility:Create("Frame") {
			Name = "VRBackground",
			Parent = this.Shield,

			BackgroundColor3 = SETTINGS_SHIELD_COLOR,
			BackgroundTransparency = SETTINGS_SHIELD_TRANSPARENCY,
			Position = UDim2.new(0, -4, 0, 24),
			Size = UDim2.new(1, 8, 1, -40),
			BorderSizePixel = 0,

			Visible = false
		}

		if displayVersionFlag then
			this.VersionContainer = utility:Create("Frame") {
				Name = "VersionContainer",
				Parent = this.Shield,

				BackgroundColor3 = SETTINGS_SHIELD_COLOR,
				BackgroundTransparency = SETTINGS_SHIELD_TRANSPARENCY,
				Position = UDim2.new(0, 0, 1, 0),
				Size = UDim2.new(1, 0, 0, VERSION_BAR_HEIGHT),
				AnchorPoint = Vector2.new(0,1),
				BorderSizePixel = 0,

				ZIndex = 5,

				Visible = false
			}

			this.ServerVersionLabel = utility:Create("TextLabel") {
				Name = "ServerVersionLabel",
				Parent = this.VersionContainer,
				Position = UDim2.new(0,3,0,3),
				BackgroundTransparency = 1,
				TextColor3 = Color3.new(1,1,1),
				TextSize = isTenFootInterface and 28 or (utility:IsSmallTouchScreen() and 14 or 20),
				Text = "Server Version: ...",
				Size = UDim2.new(.5,-6,1,-6),
				Font = Enum.Font.SourceSans,
				TextXAlignment = Enum.TextXAlignment.Left,
				ZIndex = 5
			}
			spawn(function()
				this.ServerVersionLabel.Text = "Server Version: "..GetServerVersionBlocking()
			end)

			this.ClientVersionLabel = utility:Create("TextLabel") {
				Name = "ClientVersionLabel",
				Parent = this.VersionContainer,
				Position = UDim2.new(0.5,3,0,3),
				BackgroundTransparency = 1,
				TextColor3 = Color3.new(1,1,1),
				TextSize = isTenFootInterface and 28 or (utility:IsSmallTouchScreen() and 14 or 20),
				Text = "Client Version: "..RunService:GetRobloxVersion(),
				Size = UDim2.new(.5,-6,1,-6),
				Font = Enum.Font.SourceSans,
				TextXAlignment = Enum.TextXAlignment.Right,
				ZIndex = 5
			}

			this.EnvironmentLabel = utility:Create("TextLabel") {
				Name = "EnvironmentLabel",
				Parent = this.VersionContainer,
				Position = UDim2.new(0.5,0,0,3),
				AnchorPoint = Vector2.new(0.5,0),
				BackgroundTransparency = 1,
				TextColor3 = Color3.new(1,1,1),
				TextSize = isTenFootInterface and 28 or (utility:IsSmallTouchScreen() and 14 or 20),
				Text = baseUrl,
				Size = UDim2.new(.5,-6,1,-6),
				Font = Enum.Font.SourceSans,
				TextXAlignment = Enum.TextXAlignment.Center,
				ZIndex = 5,
				Visible = isTestEnvironment
			}
		end
		this.Modal = utility:Create'TextButton' -- Force unlocks the mouse, really need a way to do this via UIS
		{
			Name = 'Modal',
			BackgroundTransparency = 1,
			Position = UDim2.new(0, 0, 1, -1),
			Size = UDim2.new(1, 0, 1, 0),
			Modal = true,
			Text = '',
			Parent = this.Shield,
			Selectable = false
		}

		this.MenuContainer = utility:Create'Frame'
		{
			Name = 'MenuContainer',
			ZIndex = this.Shield.ZIndex,
			BackgroundTransparency = 1,
			Position = UDim2.new(0.5, 0, 0.5, 0),
			Size = UDim2.new(0.95, 0, 0.95, 0),
			AnchorPoint = Vector2.new(0.5, 0.5),
			Parent = this.Shield
		}
		if enableResponsiveUI then
			this.MenuListLayout = utility:Create'UIListLayout'
			{
				Name = "MenuListLayout",
				FillDirection = Enum.FillDirection.Vertical,
				VerticalAlignment = Enum.VerticalAlignment.Center,
				HorizontalAlignment = Enum.HorizontalAlignment.Center,
				SortOrder = Enum.SortOrder.LayoutOrder,
				Parent = this.MenuContainer
			}
		end
		this.MenuAspectRatio = utility:Create'UIAspectRatioConstraint'
		{
			Name = 'MenuAspectRatio',
			AspectRatio = 800 / 600,
			AspectType = Enum.AspectType.ScaleWithParentSize,
			Parent = this.MenuContainer
		}

		this.HubBar = utility:Create'ImageLabel'
		{
			Name = "HubBar",
			ZIndex = this.Shield.ZIndex + 1,
			BorderSizePixel = 0,
			BackgroundColor3 = Color3.new(78/255, 84/255, 96/255),
			BackgroundTransparency = 1,
			Image = "rbxasset://textures/ui/Settings/MenuBarAssets/MenuBackground.png",
			ScaleType = Enum.ScaleType.Slice,
			SliceCenter = Rect.new(4,4,6,6),
			AnchorPoint = Vector2.new(0.5, 0),
			LayoutOrder = 0,
			Parent = this.MenuContainer
		}
		this.HubBarListLayout = utility:Create'UIListLayout'
		{
			FillDirection = Enum.FillDirection.Horizontal,
			HorizontalAlignment = Enum.HorizontalAlignment.Center,
			SortOrder = Enum.SortOrder.LayoutOrder,
			Parent = this.HubBar
		}

		if utility:IsSmallTouchScreen() then
			this.HubBar.Size = UDim2.new(1,-10,0,40)
			this.HubBar.Position = UDim2.new(0.5,0,0,6)
		elseif isTenFootInterface then
			this.HubBar.Size = UDim2.new(0,1200,0,100)
			this.HubBar.Position = UDim2.new(0.5,0,0.1,0)
		else
			this.HubBar.Size = UDim2.new(0,800,0,60)
			this.HubBar.Position = UDim2.new(0.5,0,0.1,0)
		end

		this.PageViewClipper = utility:Create'Frame'
		{
			Name = 'PageViewClipper',
			BackgroundTransparency = 1,
			Size = UDim2.new(this.HubBar.Size.X.Scale,this.HubBar.Size.X.Offset,
				1, -this.HubBar.Size.Y.Offset - this.HubBar.Position.Y.Offset - PageViewSizeReducer),
			Position = UDim2.new(this.HubBar.Position.X.Scale, this.HubBar.Position.X.Offset,
				this.HubBar.Position.Y.Scale, this.HubBar.Position.Y.Offset + this.HubBar.Size.Y.Offset + 1),
			AnchorPoint = Vector2.new(0.5, 0),
			ClipsDescendants = true,
			LayoutOrder = 1,
			Parent = this.MenuContainer,

			utility:Create'ImageButton'{
				Name = 'InputCapture',
				BackgroundTransparency = 1,
				Size = UDim2.new(1, 0, 1, 0),
				Image = ''
			}
		}

		this.PageView = utility:Create'ScrollingFrame'
		{
			Name = "PageView",
			AnchorPoint = Vector2.new(0.5, 0.5),
			Position = UDim2.new(0.5, 0, 0.5, 0),
			Size = UDim2.new(1, 0, 1, -20),
			ZIndex = this.Shield.ZIndex,
			BackgroundTransparency = 1,
			BorderSizePixel = 0,
			Selectable = false,
			Parent = this.PageViewClipper,
		};

		this.PageViewInnerFrame = utility:Create'Frame'
		{
			Name = "PageViewInnerFrame",
			Position = UDim2.new(0, 0, 0, 0),
			Size = UDim2.new(1, 0, 1, 0),
			ZIndex = this.Shield.ZIndex,
			BackgroundTransparency = 1,
			BorderSizePixel = 0,
			Selectable = false,
			Parent = this.PageView,
		};

		if UserInputService.MouseEnabled then
			this.PageViewClipper.Size = UDim2.new(this.HubBar.Size.X.Scale,this.HubBar.Size.X.Offset,
				0.5, -(this.HubBar.Position.Y.Offset - this.HubBar.Size.Y.Offset))
		end

		local bottomOffset = 0
		if isTouchDevice and not UserInputService.MouseEnabled then
			bottomOffset = 80
		end
		this.BottomButtonFrame = utility:Create'Frame'
		{
			Name = "BottomButtonFrame",
			Size = this.HubBar.Size,
			Position = UDim2.new(0.5, -this.HubBar.Size.X.Offset/2, 1-this.HubBar.Position.Y.Scale-this.HubBar.Size.Y.Scale, -this.HubBar.Position.Y.Offset-this.HubBar.Size.Y.Offset),
			ZIndex = this.Shield.ZIndex + 1,
			BackgroundTransparency = 1,
			LayoutOrder = 2,
			Parent = this.MenuContainer
		};

		local leaveGameFunc = function()
			this:AddToMenuStack(this.Pages.CurrentPage)
			this.HubBar.Visible = false
			removeBottomBarBindings()
			this:SwitchToPage(this.LeaveGamePage, nil, 1, true)
		end

		-- Xbox Only
		local inviteToGameFunc = function()
			if not RunService:IsStudio() then
				local platformService = game:GetService('PlatformService')
				if platformService then
					platformService:PopupGameInviteUI()
				end
			end
		end

		local resumeFunc = function()
			setVisibilityInternal(false)
		end

		local buttonImageAppend = ""

		if isTenFootInterface then
			buttonImageAppend = "@2x"
		end

		if UserInputService:GetPlatform() == Enum.Platform.XBoxOne then
			local function createInviteButton()
				addBottomBarButton("InviteToGame", "Send Game Invites", "rbxasset://textures/ui/Settings/Help/XButtonLight" .. buttonImageAppend .. ".png",
					"", UDim2.new(0.5,isTenFootInterface and -160 or -130,0.5,-25),
					inviteToGameFunc, {Enum.KeyCode.ButtonX}
				)
				if RunService:IsStudio() then
					this.InviteToGameButton.Selectable = false
					this.InviteToGameButton.Active = false
					this.InviteToGameButton.Enabled.Value = false
					local inviteHint = this.InviteToGameButton:FindFirstChild("InviteToGameHint")
					if inviteHint then
						inviteHint.ImageColor3 = Color3.fromRGB(100, 100, 100)
					end
					local inviteButtonText = this.InviteToGameText
					if inviteButtonText then
						inviteButtonText.TextColor3 = Color3.fromRGB(100, 100, 100)
					end
				end
			end

			-- only show invite button on non-PMP games. Some users games may not be enabled for console, so inviting to
			-- to the game session will not work.
			spawn(function()
				local PlatformService = nil
				pcall(function() PlatformService = game:GetService('PlatformService') end)
				if not PlatformService then return end

				pcall(function()
					local pmpCreatorId = PlatformService:BeginGetPMPCreatorId()
					if pmpCreatorId == 0 then
						createInviteButton()
					end
				end)
			end)
		else
			addBottomBarButton("LeaveGame", "Leave Game", "rbxasset://textures/ui/Settings/Help/XButtonLight" .. buttonImageAppend .. ".png",
				"rbxasset://textures/ui/Settings/Help/LeaveIcon.png", UDim2.new(0.5,isTenFootInterface and -160 or -130,0.5,-25),
				leaveGameFunc, {Enum.KeyCode.L, Enum.KeyCode.ButtonX}
			)
		end

		local resetCharFunc = function()
			if resetEnabled then
				this:AddToMenuStack(this.Pages.CurrentPage)
				this.HubBar.Visible = false
				removeBottomBarBindings()
				this:SwitchToPage(this.ResetCharacterPage, nil, 1, true)
			end
		end

		addBottomBarButton("ResetCharacter", "Reset Character", "rbxasset://textures/ui/Settings/Help/YButtonLight" .. buttonImageAppend .. ".png",
			"rbxasset://textures/ui/Settings/Help/ResetIcon.png", UDim2.new(0.5,isTenFootInterface and -550 or -400,0.5,-25),
			resetCharFunc, {Enum.KeyCode.R, Enum.KeyCode.ButtonY}
		)
		addBottomBarButton("Resume", "Resume Game", "rbxasset://textures/ui/Settings/Help/BButtonLight" .. buttonImageAppend .. ".png",
			"rbxasset://textures/ui/Settings/Help/EscapeIcon.png", UDim2.new(0.5,isTenFootInterface and 200 or 140,0.5,-25),
			resumeFunc, {Enum.KeyCode.ButtonB, Enum.KeyCode.ButtonStart}
		)

 		local function cameraViewportChanged()
			utility:FireOnResized()
  		end

		local viewportSizeChangedConn = nil
  		local function onWorkspaceChanged(prop)
  			if prop == "CurrentCamera" then
				cameraViewportChanged()
				if viewportSizeChangedConn then viewportSizeChangedConn:disconnect() end
				viewportSizeChangedConn = workspace.CurrentCamera:GetPropertyChangedSignal("ViewportSize"):connect(cameraViewportChanged)
  			end
  		end
		onWorkspaceChanged("CurrentCamera")
		workspace.Changed:connect(onWorkspaceChanged)
	end

	local function onScreenSizeChanged()
		
		local largestPageSize = 600
		local fullScreenSize = RobloxGui.AbsoluteSize.y
		local bufferSize = (1-0.95) * fullScreenSize
		local isPortrait = utility:IsPortrait()

		if isTenFootInterface then
			largestPageSize = 800
			bufferSize = 0.07 * fullScreenSize
			this.MenuContainer.Size = UDim2.new(0.95, 0, 0.95, 0)
		elseif utility:IsSmallTouchScreen() then
			bufferSize = math.min(10, (1-0.99) * fullScreenSize)
			this.MenuContainer.Size = UDim2.new(1, 0, 0.99, 0)
		else
			this.MenuContainer.Size = UDim2.new(0.95, 0, 0.95, 0)
		end
		local barSize = this.HubBar.Size.Y.Offset
		local extraSpace = bufferSize*2+barSize*2

		if isPortrait then
			this.MenuContainer.Size = UDim2.new(1, 0, 1, 0)
			this.MenuAspectRatio.Parent = nil
			this.HubBar.Position = UDim2.new(0.5, 0, 0, 10)
			this.HubBar.Size = UDim2.new(1, -20, 0, 40)
		else
			if isTenFootInterface then
				this.HubBar.Size = UDim2.new(0, 1200, 0, 100)
				this.MenuAspectRatio.Parent = this.MenuContainer
			elseif utility:IsSmallTouchScreen() then
				this.HubBar.Size = UDim2.new(1, -10, 0, 40)
				this.MenuAspectRatio.Parent = nil
			else
				this.HubBar.Size = UDim2.new(0, 800, 0, 60)
				this.MenuAspectRatio.Parent = this.MenuContainer
			end
		end

		--We need to wait and let the HubBar AbsoluteSize actually update.
		--This is in the same frame, so the delay should be very minimal.
		--Maybe in the future we need to have a way to force AbsoluteSize
		--to update, or we can just avoid using it so soon.
		RunService.Heartbeat:wait()

		if shouldShowBottomBar() then
			setBottomBarBindings()
		else
			removeBottomBarBindings()
		end

		local usableScreenHeight = fullScreenSize - extraSpace
		local minimumPageSize = 150
		local usePageSize = nil

		if not isPortrait then
			if largestPageSize < usableScreenHeight then
				usePageSize = largestPageSize
				this.HubBar.Position = UDim2.new(
					this.HubBar.Position.X.Scale,
					this.HubBar.Position.X.Offset,
					0.5,
					-largestPageSize/2 - this.HubBar.Size.Y.Offset
				)
				if this.BottomButtonFrame then
					this.BottomButtonFrame.Position = UDim2.new(
						this.BottomButtonFrame.Position.X.Scale,
						this.BottomButtonFrame.Position.X.Offset,
						0.5,
						largestPageSize/2
					)
				end
			elseif usableScreenHeight < minimumPageSize then
				usePageSize = minimumPageSize
				this.HubBar.Position = UDim2.new(
					this.HubBar.Position.X.Scale,
					this.HubBar.Position.X.Offset,
					0.5,
					-minimumPageSize/2 - this.HubBar.Size.Y.Offset
				)
				if this.BottomButtonFrame then
					this.BottomButtonFrame.Position = UDim2.new(
						this.BottomButtonFrame.Position.X.Scale,
						this.BottomButtonFrame.Position.X.Offset,
						0.5,
						minimumPageSize/2
					)
				end
			else
				usePageSize = usableScreenHeight
				this.HubBar.Position = UDim2.new(
					this.HubBar.Position.X.Scale,
					this.HubBar.Position.X.Offset,
					0,
					bufferSize
				)
				if this.BottomButtonFrame then
					this.BottomButtonFrame.Position = UDim2.new(
						this.BottomButtonFrame.Position.X.Scale,
						this.BottomButtonFrame.Position.X.Offset,
						1,
						-(bufferSize + barSize)
					)
				end
			end
		else
			usePageSize = usableScreenHeight
		end

		if not isTenFootInterface then
			if utility:IsSmallTouchScreen() then
				this.PageViewClipper.Size = UDim2.new(
					0,
					this.HubBar.AbsoluteSize.X,
					0,
					usePageSize + 44
				)
			else
				this.PageViewClipper.Size = UDim2.new(
					0,
					this.HubBar.AbsoluteSize.X,
					0,
					usePageSize
				)
			end
		else
			this.PageViewClipper.Size = UDim2.new(
				0,
					this.HubBar.AbsoluteSize.X,
				0,
				usePageSize
			)
		end
		if not isPortrait then
			this.PageViewClipper.Position = UDim2.new(
				this.PageViewClipper.Position.X.Scale,
				this.PageViewClipper.Position.X.Offset,
				0.5,
				-usePageSize/2
			)
		else
			this.PageViewClipper.Position = UDim2.new(0.5, 0, 0, this.HubBar.Position.Y.Offset + this.HubBar.AbsoluteSize.Y)
		end
	end

	local function toggleQuickProfilerFromHotkey(actionName, inputState, inputObject)
		-- Make sure it's Ctrl-F7.
		-- NOTE: This will only work if FFlagDontSwallowInputForStudioShortcuts is True.
		-- Otherwise, we never get the "Begin" input state when Ctrl key is down.
		if (not (UserInputService:IsKeyDown(Enum.KeyCode.LeftControl) or
				UserInputService:IsKeyDown(Enum.KeyCode.RightControl))) then
			return
		end

		if actionName ==QUICK_PROFILER_ACTION_NAME then
			if inputState and inputState == Enum.UserInputState.Begin then
				GameSettings.PerformanceStatsVisible = not GameSettings.PerformanceStatsVisible
			end
		end
	end

	local function toggleDevConsole(actionName, inputState, inputObject)
		if actionName == DEV_CONSOLE_ACTION_NAME then	 -- ContextActionService->F9
			if inputState and inputState == Enum.UserInputState.Begin then
				local devConsoleVisible = DeveloperConsoleModule:GetVisibility()
				DeveloperConsoleModule:SetVisibility(not devConsoleVisible)
			end
		end
	end

	local lastInputUsedToSelectGui = isTenFootInterface

	-- Map indicating if a KeyCode or UserInputType should toggle the lastInputUsedToSelectGui variable.
	local inputUsedToSelectGui = {
		[Enum.UserInputType.Gamepad1] = true,
		[Enum.UserInputType.Gamepad2] = true,
		[Enum.UserInputType.Gamepad3] = true,
		[Enum.UserInputType.Gamepad4] = true,
		[Enum.KeyCode.Left] = true,
		[Enum.KeyCode.Right] = true,
		[Enum.KeyCode.Up] = true,
		[Enum.KeyCode.Down] = true,
		[Enum.KeyCode.Tab] = true,
		[Enum.UserInputType.Touch] = false,
		[Enum.UserInputType.MouseButton1] = false,
		[Enum.UserInputType.MouseButton2] = false
	}

	UserInputService.InputBegan:connect(function(input)
		if input.UserInputType and inputUsedToSelectGui[input.UserInputType] ~= nil then
			lastInputUsedToSelectGui = inputUsedToSelectGui[input.UserInputType]
		elseif input.KeyCode and inputUsedToSelectGui[input.KeyCode] then
			lastInputUsedToSelectGui = inputUsedToSelectGui[input.KeyCode]
		end
	end)
	UserInputService.InputChanged:connect(function(input)
		if input.KeyCode == Enum.KeyCode.Thumbstick1 or input.KeyCode == Enum.KeyCode.Thumbstick2 then
			if input.Position.magnitude >= 0.25 then
				lastInputUsedToSelectGui = true
			end
		elseif input.UserInputType == Enum.UserInputType.Touch or input.UserInputType == Enum.UserInputType.MouseMovement then
			lastInputUsedToSelectGui = false
		end
	end)


	local switchTab = function(direction, cycle)
		local currentTabPosition = GetHeaderPosition(this.Pages.CurrentPage)
		if currentTabPosition < 0 then return end

		local newTabPosition = currentTabPosition + direction
		if cycle then
			if newTabPosition > #this.TabHeaders then
				newTabPosition = 1
			elseif newTabPosition < 1 then
				newTabPosition = #this.TabHeaders
			end
		end
		local newHeader = this.TabHeaders[newTabPosition]

		if newHeader then
			for pager,v in pairs(this.Pages.PageTable) do
				if pager:GetTabHeader() == newHeader then
					this:SwitchToPage(pager, true, direction)
					break
				end
			end
		end
	end

	local switchTabFromBumpers = function(actionName, inputState, inputObject)
		if inputState ~= Enum.UserInputState.Begin then return end

		local direction = 0
		if inputObject.KeyCode == Enum.KeyCode.ButtonR1 then
			direction = 1
		elseif inputObject.KeyCode == Enum.KeyCode.ButtonL1 then
			direction = -1
		end

		switchTab(direction, true, true)
	end

	local switchTabFromKeyboard = function(input)
		if input.KeyCode == Enum.KeyCode.Tab then
			local direction = 0
			if UserInputService:IsKeyDown(Enum.KeyCode.LeftShift) or UserInputService:IsKeyDown(Enum.KeyCode.RightShift) then
				direction = -1
			else
				direction = 1
			end

			switchTab(direction, true, true)
		end
	end

	local scrollHotkeyFunc = function(actionName, inputState, inputObject)
		if inputState ~= Enum.UserInputState.Begin then return end

		local direction = 0
		if inputObject.KeyCode == Enum.KeyCode.PageUp then
			direction = -100
		elseif inputObject.KeyCode == Enum.KeyCode.PageDown then
			direction = 100
		end

		this:ScrollPixels(direction)
	end

	-- need some stuff for functions below so init here
	createGui()

	function GetHeaderPosition(page)
		local header = page:GetTabHeader()
		if not header then return -1 end

		for i,v in pairs(this.TabHeaders) do
			if v == header then
				return i
			end
		end

		return -1
	end

	local setZIndex = nil
	setZIndex = function(newZIndex, object)
		if object:IsA("GuiObject") then
			object.ZIndex = newZIndex
			local children = object:GetChildren()
			for i = 1, #children do
				setZIndex(newZIndex, children[i])
			end
		end
	end

	local function AddHeader(newHeader, headerPage)
		if not newHeader then return end

		table.insert(this.TabHeaders, newHeader)
		headerPage.TabPosition = #this.TabHeaders

		local sizeOfTab = 1/#this.TabHeaders
		for i = 1, #this.TabHeaders do
			local tab = this.TabHeaders[i]
			tab.Size = UDim2.new(sizeOfTab, 0, 1, 0)
		end

		setZIndex(SETTINGS_BASE_ZINDEX + 1, newHeader)
		newHeader.Parent = this.HubBar
	end

	local function RemoveHeader(oldHeader)
		local removedPos = nil

		for i = 1, #this.TabHeaders do
			if this.TabHeaders[i] == oldHeader then
				removedPos = i
				table.remove(this.TabHeaders, i)
				break
			end
		end

		if removedPos then
			for i = removedPos, #this.TabHeaders do
				local currentTab = this.TabHeaders[i]
				currentTab.Position = UDim2.new(currentTab.Position.X.Scale, currentTab.Position.X.Offset - oldHeader.AbsoluteSize.X,
					currentTab.Position.Y.Scale, currentTab.Position.Y.Offset)
			end
		end

		oldHeader.Parent = nil
	end

	-- Page APIs
	function this:AddPage(pageToAdd)
		this.Pages.PageTable[pageToAdd] = true
		AddHeader(pageToAdd:GetTabHeader(), pageToAdd)
		pageToAdd.Page.Position = UDim2.new(pageToAdd.TabPosition - 1,0,0,0)
	end

	function this:RemovePage(pageToRemove)
		this.Pages.PageTable[pageToRemove] = nil
		RemoveHeader(pageToRemove:GetTabHeader())
	end

	function this:HideBar()
		this.HubBar.Visible = false
		this.PageViewClipper.Visible = false
		if this.BottomButtonFrame then
			removeBottomBarBindings()
		end
	end

	function this:ShowBar()
		this.HubBar.Visible = true
		this.PageViewClipper.Visible = true
		if this.BottomButtonFrame and shouldShowBottomBar() then
			setBottomBarBindings()
		end
	end

	function this:ScrollPixels(pixels)
		-- Only Y
		local oldY = this.PageView.CanvasPosition.Y
		local maxY = this.PageView.CanvasSize.Y.Offset - this.PageViewClipper.AbsoluteSize.y
		local newY = math.max(0, math.min(oldY+pixels, maxY)) -- i.e. clamp
		this.PageView.CanvasPosition = Vector2.new(0, newY)
	end

	function this:ScrollToFrame(frame, forced)
		if lastInputUsedToSelectGui or forced then
			local ay = frame.AbsolutePosition.y - this.Pages.CurrentPage.Page.AbsolutePosition.y
			local by = ay + frame.AbsoluteSize.y

			if ay < this.PageView.CanvasPosition.y then -- Scroll up to fit top
				this.PageView.CanvasPosition = Vector2.new(0, ay)
			elseif by - this.PageView.CanvasPosition.y > this.PageViewClipper.Size.Y.Offset then -- Scroll down to fit bottom
				this.PageView.CanvasPosition = Vector2.new(0, by - this.PageViewClipper.Size.Y.Offset)
			end
		end
	end

	function this:SwitchToPage(pageToSwitchTo, ignoreStack, direction, skipAnimation)
		if this.Pages.PageTable[pageToSwitchTo] == nil then return end

		-- detect direction
		if direction == nil then
			if this.Pages.CurrentPage and this.Pages.CurrentPage.TabHeader and pageToSwitchTo and pageToSwitchTo.TabHeader then
				direction = this.Pages.CurrentPage.TabHeader.AbsolutePosition.x < pageToSwitchTo.TabHeader.AbsolutePosition.x and 1 or -1
			end
		end
		if direction == nil then
			direction = 1
		end

		-- if we have a page we need to let it know to go away
		if this.Pages.CurrentPage then
			pageChangeCon:disconnect()
			this.Pages.CurrentPage.Active = false
		end

		-- make sure all pages are in right position
		local newPagePos = pageToSwitchTo.TabPosition
		for page, _ in pairs(this.Pages.PageTable) do
			if page ~= pageToSwitchTo then
				page:Hide(-direction, newPagePos, skipAnimation)
			end
		end

		if this.BottomButtonFrame then
			if shouldShowBottomBar(pageToSwitchTo) then
				setBottomBarBindings()
			else
				this.BottomButtonFrame.Visible = false
			end
			this.HubBar.Visible = not (pageToSwitchTo == this.LeaveGamePage or pageToSwitchTo == this.ResetCharacterPage)
		end

		-- make sure page is visible
		this.Pages.CurrentPage = pageToSwitchTo
		this.Pages.CurrentPage:Display(this.PageViewInnerFrame, skipAnimation)
		this.Pages.CurrentPage.Active = true

		local pageSize = this.Pages.CurrentPage:GetSize()
		this.PageView.CanvasSize = UDim2.new(0,pageSize.X,0,pageSize.Y)
		if this.PageView.CanvasSize.Y.Offset > this.PageView.AbsoluteSize.Y then
			this.PageViewInnerFrame.Size = UDim2.new(1, -this.PageView.ScrollBarThickness, 1, 0)
		else
			this.PageViewInnerFrame.Size = UDim2.new(1, 0, 1, 0)
		end

		pageChangeCon = this.Pages.CurrentPage.Page.Changed:connect(function(prop)
			if prop == "AbsoluteSize" then
				local pageSize = this.Pages.CurrentPage:GetSize()
				this.PageView.CanvasSize = UDim2.new(0,pageSize.X,0,pageSize.Y)
				if this.PageView.CanvasSize.Y.Offset > this.PageView.AbsoluteSize.Y then
					this.PageViewInnerFrame.Size = UDim2.new(1, -this.PageView.ScrollBarThickness, 1, 0)
				else
					this.PageViewInnerFrame.Size = UDim2.new(1, 0, 1, 0)
				end
			end
		end)

		if this.MenuStack[#this.MenuStack] ~= this.Pages.CurrentPage and not ignoreStack then
			this.MenuStack[#this.MenuStack + 1] = this.Pages.CurrentPage
		end
	end

	function this:SetActive(active)
		this.Active = active

		if this.Pages.CurrentPage then
			this.Pages.CurrentPage.Active = active
		end
	end

	function clearMenuStack()
		while this.MenuStack and #this.MenuStack > 0 do
			this:PopMenu()
		end
	end

	function setOverrideMouseIconBehavior()
		if UserInputService:GetLastInputType() == Enum.UserInputType.Gamepad1 or VRService.VREnabled then
			UserInputService.OverrideMouseIconBehavior = Enum.OverrideMouseIconBehavior.ForceHide
		else
			UserInputService.OverrideMouseIconBehavior = Enum.OverrideMouseIconBehavior.ForceShow
		end
	end

	function setVisibilityInternal(visible, noAnimation, customStartPage, switchedFromGamepadInput)
		this.OpenStateChangedCount = this.OpenStateChangedCount + 1
		local switchedFromGamepadInput = switchedFromGamepadInput or isTenFootInterface
		this.Visible = visible

		if this.ResizedConnection then
			this.ResizedConnection:disconnect()
			this.ResizedConnection = nil
		end

		this.Modal.Visible = this.Visible

		if this.TabConnection then
			this.TabConnection:disconnect()
			this.TabConnection = nil
		end

		local playerList = require(RobloxGui.Modules.PlayerlistModule)

		if this.Visible then
			this.ResizedConnection = RobloxGui.Changed:connect(function(prop)
				if prop == "AbsoluteSize" then
					onScreenSizeChanged()
				end
			end)
			onScreenSizeChanged()

			this.SettingsShowSignal:fire(this.Visible)

			pcall(function() GuiService:SetMenuIsOpen(true) end)
			this.Shield.Visible = this.Visible
			if noAnimation or not this.Shield:IsDescendantOf(game) then
				this.Shield.Position = SETTINGS_SHIELD_ACTIVE_POSITION
			else
				this.Shield:TweenPosition(SETTINGS_SHIELD_ACTIVE_POSITION, Enum.EasingDirection.InOut, Enum.EasingStyle.Quart, 0.5, true)
			end

			local noOpFunc = function() end
			ContextActionService:BindCoreAction("RbxSettingsHubStopCharacter", noOpFunc, false,
				Enum.PlayerActions.CharacterForward,
				Enum.PlayerActions.CharacterBackward,
				Enum.PlayerActions.CharacterLeft,
				Enum.PlayerActions.CharacterRight,
				Enum.PlayerActions.CharacterJump,
				Enum.KeyCode.LeftShift,
				Enum.KeyCode.RightShift,
				Enum.KeyCode.Tab,
				Enum.UserInputType.Gamepad1, Enum.UserInputType.Gamepad2, Enum.UserInputType.Gamepad3, Enum.UserInputType.Gamepad4
			)

			ContextActionService:BindCoreAction("RbxSettingsHubSwitchTab", switchTabFromBumpers, false, Enum.KeyCode.ButtonR1, Enum.KeyCode.ButtonL1)
			ContextActionService:BindCoreAction("RbxSettingsScrollHotkey", scrollHotkeyFunc, false, Enum.KeyCode.PageUp, Enum.KeyCode.PageDown)
			if shouldShowBottomBar() then
				setBottomBarBindings()
			end

			this.TabConnection = UserInputService.InputBegan:connect(switchTabFromKeyboard)


			setOverrideMouseIconBehavior()
			lastInputChangedCon = UserInputService.LastInputTypeChanged:connect(setOverrideMouseIconBehavior)
			if UserInputService.MouseEnabled and not VRService.VREnabled then
				UserInputService.OverrideMouseIconBehavior = Enum.OverrideMouseIconBehavior.ForceShow
			end

			if customStartPage then
				removeBottomBarBindings()
				this:SwitchToPage(customStartPage, nil, 1, true)
			else
				if not isTenFootInterface then
					this:SwitchToPage(this.PlayersPage, nil, 1, true)
				else
					if this.HomePage then
						this:SwitchToPage(this.HomePage, nil, 1, true)
					else
						this:SwitchToPage(this.GameSettingsPage, nil, 1, true)
					end
				end
			end

			playerList:HideTemp('SettingsMenu', true)

			if chat:GetVisibility() then
				chatWasVisible = true
				chat:ToggleVisibility()
			end

			local backpack = require(RobloxGui.Modules.BackpackScript)
			if backpack.IsOpen then
				backpack:OpenClose()
			end
		else
			if noAnimation then
				this.Shield.Position = SETTINGS_SHIELD_INACTIVE_POSITION
				this.Shield.Visible = this.Visible
				this.SettingsShowSignal:fire(this.Visible)
				pcall(function() GuiService:SetMenuIsOpen(false) end)
			else
				this.Shield:TweenPosition(SETTINGS_SHIELD_INACTIVE_POSITION, Enum.EasingDirection.In, Enum.EasingStyle.Quad, 0.4, true, function()
					this.Shield.Visible = this.Visible
					this.SettingsShowSignal:fire(this.Visible)
					if not this.Visible then pcall(function() GuiService:SetMenuIsOpen(false) end) end
				end)
			end

			if lastInputChangedCon then
				lastInputChangedCon:disconnect()
			end

			playerList:HideTemp('SettingsMenu', false)

			if chatWasVisible then
				chat:ToggleVisibility()
				chatWasVisible = false
			end

			if not VRService.VREnabled then
				UserInputService.OverrideMouseIconBehavior = Enum.OverrideMouseIconBehavior.None
			end

			clearMenuStack()
			ContextActionService:UnbindCoreAction("RbxSettingsHubSwitchTab")
			ContextActionService:UnbindCoreAction("RbxSettingsHubStopCharacter")
			ContextActionService:UnbindCoreAction("RbxSettingsScrollHotkey")
			removeBottomBarBindings(0.4)

			GuiService.SelectedCoreObject = nil
		end
	end

	function this:SetVisibility(visible, noAnimation, customStartPage, switchedFromGamepadInput)
		if this.Visible == visible then return end

		setVisibilityInternal(visible, noAnimation, customStartPage, switchedFromGamepadInput)
	end

	function this:GetVisibility()
		return this.Visible
	end

	function this:ToggleVisibility(switchedFromGamepadInput)
		setVisibilityInternal(not this.Visible, nil, nil, switchedFromGamepadInput)
	end

	function this:AddToMenuStack(newItem)
		if this.MenuStack[#this.MenuStack] ~= newItem then
			this.MenuStack[#this.MenuStack + 1] = newItem
		end
	end


	function this:PopMenu(switchedFromGamepadInput, skipAnimation)
		if this.MenuStack and #this.MenuStack > 0 then
			local lastStackItem = this.MenuStack[#this.MenuStack]

			if type(lastStackItem) ~= "table" then
				PoppedMenuEvent:Fire(lastStackItem)
			end

			table.remove(this.MenuStack, #this.MenuStack)
			this:SwitchToPage(this.MenuStack[#this.MenuStack], true, 1, skipAnimation)
			if #this.MenuStack == 0 then
				this:SetVisibility(false)

				this.Pages.CurrentPage:Hide(0, 0)
			end
		else
			this.MenuStack = {}
			PoppedMenuEvent:Fire()
			this:ToggleVisibility()
		end
	end

	function this:ShowShield()
		this.Shield.BackgroundTransparency = UserInputService.VREnabled and SETTINGS_SHIELD_VR_TRANSPARENCY or SETTINGS_SHIELD_TRANSPARENCY
	end
	function this:HideShield()
		this.Shield.BackgroundTransparency = 1
	end

	local thisModuleName = "SettingsMenu"
	local vrMenuOpened, vrMenuClosed = nil, nil
	local function enableVR()
		local VRHub = require(RobloxGui.Modules.VR.VRHub)
		local Panel3D = require(RobloxGui.Modules.VR.Panel3D)
		local panel = Panel3D.Get(thisModuleName)
		panel:ResizeStuds(4, 4, 250)
		panel:SetType(Panel3D.Type.Standard)
		panel:SetVisible(false)
		panel:SetCanFade(false)

		this.ClippingShield.Parent = panel:GetGUI()
		this.Shield.Parent.ClipsDescendants = false
		this.VRShield.Visible = true
		this:HideShield()

		vrMenuOpened = this.SettingsShowSignal:connect(function(visible)
			if visible then
				panel:SetVisible(true)

				VRHub:FireModuleOpened(thisModuleName)
			else
				panel:SetVisible(false)

				VRHub:FireModuleClosed(thisModuleName)
			end
		end)

		VRHub.ModuleOpened.Event:connect(function(moduleName)
			if moduleName ~= thisModuleName then
				this:SetVisibility(false)
			end
		end)
	end
	local function disableVR()
		this.ClippingShield.Parent = RobloxGui
		this.Shield.Parent.ClipsDescendants = true
		this.VRShield.Visible = false
		this:ShowShield()

		if vrMenuOpened then
			vrMenuOpened:disconnect()
			vrMenuOpened = nil
		end
		if vrMenuClosed then
			vrMenuClosed:disconnect()
			vrMenuClosed = nil
		end

		local Panel3D = require(RobloxGui.Modules.VR.Panel3D)
		local panel = Panel3D.Get(thisModuleName)
		panel:SetVisible(false)
	end

	local UISChanged;
	local function OnVREnabled(prop)
		if prop == "VREnabled" then
			if UserInputService.VREnabled then
				enableVR()
			else
				disableVR()
			end
		end
	end
	UISChanged = UserInputService.Changed:connect(OnVREnabled)
	OnVREnabled("VREnabled")


	local closeMenuFunc = function(name, inputState, input)
		if inputState ~= Enum.UserInputState.Begin then return end
		this:PopMenu(false, true)
	end
	ContextActionService:BindCoreAction("RBXEscapeMainMenu", closeMenuFunc, false, Enum.KeyCode.Escape)

	this.ResetCharacterPage:SetHub(this)
	this.LeaveGamePage:SetHub(this)

	-- full page initialization
	this.GameSettingsPage = require(RobloxGui.Modules.Settings.Pages.GameSettings)
	this.GameSettingsPage:SetHub(this)

	this.ReportAbusePage = require(RobloxGui.Modules.Settings.Pages.ReportAbuseMenu)
	this.ReportAbusePage:SetHub(this)

	this.HelpPage = require(RobloxGui.Modules.Settings.Pages.Help)
	this.HelpPage:SetHub(this)

	if platform == Enum.Platform.Windows then
		this.RecordPage = require(RobloxGui.Modules.Settings.Pages.Record)
		this.RecordPage:SetHub(this)
	end

	if not isTenFootInterface then
		this.PlayersPage = require(RobloxGui.Modules.Settings.Pages.Players)
		this.PlayersPage:SetHub(this)
	end

	-- page registration
	if not isTenFootInterface then
		this:AddPage(this.PlayersPage)
	end
	this:AddPage(this.ResetCharacterPage)
	this:AddPage(this.LeaveGamePage)
	this:AddPage(this.GameSettingsPage)
	if this.ReportAbusePage then
		this:AddPage(this.ReportAbusePage)
	end
	this:AddPage(this.HelpPage)
	if this.RecordPage then
		this:AddPage(this.RecordPage)
	end

	if not isTenFootInterface then
		this:SwitchToPage(this.PlayersPage, true, 1)
	else
		if this.HomePage then
			this:SwitchToPage(this.HomePage, true, 1)
		else
			this:SwitchToPage(this.GameSettingsPage, true, 1)
		end
	end
	-- hook up to necessary signals

	-- connect back button on android
	GuiService.ShowLeaveConfirmation:connect(function()
		if #this.MenuStack == 0 then
			this:SetVisibility(true)
			this:SwitchToPage(this.PlayerPage, nil, 1)
		else
			this:PopMenu(false, true)
		end
	end)

	-- Dev Console Connections
	ContextActionService:BindCoreAction(DEV_CONSOLE_ACTION_NAME,
		toggleDevConsole,
		false,
		Enum.KeyCode.F9
	)

	-- Quick Profiler connections
	-- Note: it's actually Ctrl-F7.	We don't have a nice way of
	-- making that explicit here, so we check it inside toggleQuickProfilerFromHotkey.
	ContextActionService:BindCoreAction(QUICK_PROFILER_ACTION_NAME,
		toggleQuickProfilerFromHotkey,
		false,
		Enum.KeyCode.F7
	)

	-- Keyboard control
	UserInputService.InputBegan:connect(function(input)
		if input.KeyCode == Enum.KeyCode.Left or input.KeyCode == Enum.KeyCode.Right or input.KeyCode == Enum.KeyCode.Up or input.KeyCode == Enum.KeyCode.Down then
			if this.Visible and this.Active then
				if this.Pages.CurrentPage then
					if GuiService.SelectedCoreObject == nil then
						this.Pages.CurrentPage:SelectARow()
					end
				end
			end
		end
	end)

	return this
end


-- Main Entry Point

local moduleApiTable = {}

moduleApiTable.ModuleName = "SettingsMenu"
moduleApiTable.KeepVRTopbarOpen = true
moduleApiTable.VRIsExclusive = true
moduleApiTable.VRClosesNonExclusive = true
VRHub:RegisterModule(moduleApiTable)

VRHub.ModuleOpened.Event:connect(function(moduleName)
	if moduleName ~= moduleApiTable.ModuleName then
		local module = VRHub:GetModule(moduleName)
		if module.VRIsExclusive then
			moduleApiTable:SetVisibility(false)
		end
	end
end)

local SettingsHubInstance = CreateSettingsHub()

function moduleApiTable:SetVisibility(visible, noAnimation, customStartPage, switchedFromGamepadInput)
	SettingsHubInstance:SetVisibility(visible, noAnimation, customStartPage, switchedFromGamepadInput)
end

function moduleApiTable:ToggleVisibility(switchedFromGamepadInput)
	SettingsHubInstance:ToggleVisibility(switchedFromGamepadInput)
end

function moduleApiTable:SwitchToPage(pageToSwitchTo, ignoreStack)
	SettingsHubInstance:SwitchToPage(pageToSwitchTo, ignoreStack, 1)
end

function moduleApiTable:GetVisibility()
	return SettingsHubInstance.Visible
end

function moduleApiTable:ShowShield()
	SettingsHubInstance:ShowShield()
end

function moduleApiTable:HideShield()
	SettingsHubInstance:HideShield()
end

moduleApiTable.SettingsShowSignal = SettingsHubInstance.SettingsShowSignal

moduleApiTable.Instance = SettingsHubInstance

return moduleApiTable
