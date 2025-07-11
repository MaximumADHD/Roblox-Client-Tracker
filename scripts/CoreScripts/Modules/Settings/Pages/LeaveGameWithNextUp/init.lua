-------------- CONSTANTS -------------
local LEAVE_GAME_ACTION = "LeaveGameCancelAction"

-------------- SERVICES --------------
local CoreGui = game:GetService("CoreGui")
local CorePackages = game:GetService("CorePackages")
local ContextActionService = game:GetService("ContextActionService")
local RobloxGui = CoreGui:WaitForChild("RobloxGui")
local GuiService = game:GetService("GuiService")
local AnalyticsService = game:GetService("RbxAnalyticsService")


----------- UTILITIES --------------
local utility = require(RobloxGui.Modules.Settings.Utility)
local leaveGame = require(RobloxGui.Modules.Settings.leaveGame)
local Create = require(CorePackages.Workspace.Packages.AppCommonLib).Create
local React = require(CorePackages.Packages.React)
local ReactRoblox = require(CorePackages.Packages.ReactRoblox)

local ChromeEnabled = require(RobloxGui.Modules.Chrome.Enabled)()
local ChromeService = if ChromeEnabled then require(RobloxGui.Modules.Chrome.Service) else nil :: never
local ChromeConstants = if ChromeEnabled then require(RobloxGui.Modules.Chrome.ChromeShared.Unibar.Constants) else nil :: never

------------ Variables -------------------
local PageInstance = nil
RobloxGui:WaitForChild("Modules"):WaitForChild("TenFootInterface")
local isTenFootInterface = require(RobloxGui.Modules.TenFootInterface):IsEnabled()

local SettingsFlags = require(RobloxGui.Modules.Settings.Flags)
local FFlagIEMSettingsAddPlaySessionID = SettingsFlags.FFlagIEMSettingsAddPlaySessionID

local EngineFeatureRbxAnalyticsServiceExposePlaySessionId = game:GetEngineFeature("RbxAnalyticsServiceExposePlaySessionId")

local SharedFlags = require(CorePackages.Workspace.Packages.SharedFlags)
local FFlagEnableChromeShortcutBar = SharedFlags.FFlagEnableChromeShortcutBar
local FFlagChromeShortcutRemoveRespawnOnLeavePage = SharedFlags.FFlagChromeShortcutRemoveRespawnOnLeavePage

local Constants = require(RobloxGui.Modules:WaitForChild("InGameMenu"):WaitForChild("Resources"):WaitForChild("Constants"))

local Theme = require(RobloxGui.Modules.Settings.Theme)

local NextUpModuleContainer = require(script.Parent.LeaveGameWithNextUp.NextUpModuleContainer)

----------- CLASS DECLARATION --------------

local function Initialize()
	local settingsPageFactory = require(RobloxGui.Modules.Settings.SettingsPageFactory)
	local this = settingsPageFactory:CreateNewPage()

	this.playsessionid = ""
	if FFlagIEMSettingsAddPlaySessionID and EngineFeatureRbxAnalyticsServiceExposePlaySessionId then
		this.playsessionid = AnalyticsService:GetPlaySessionId()
	end

	this.DontLeaveFunc = function(isUsingGamepad)
		if this.HubRef then
			this.HubRef:PopMenu(isUsingGamepad, true)
		end

		AnalyticsService:SetRBXEventStream(
			Constants.AnalyticsTargetName,
			Constants.AnalyticsInGameMenuName,
			Constants.AnalyticsLeaveGameName,
			{
				confirmed = Constants.AnalyticsCancelledName,
				universeid = tostring(game.GameId),
				source = Constants.AnalyticsLeaveGameSource,
				playsessionid = if FFlagIEMSettingsAddPlaySessionID then this.playsessionid else nil,
			}
		)
	end
	this.DontLeaveFromGamepad = function(name, state, input)
		if state == Enum.UserInputState.End then
			this.DontLeaveFunc(true)
		end
	end
	this.DontLeaveFromButton = function(isUsingGamepad)
		this.DontLeaveFunc(isUsingGamepad)
	end

	------ TAB CUSTOMIZATION -------
	this.TabHeader = nil -- no tab for this page

	------ PAGE CUSTOMIZATION -------
	this.Page.Name = "LeaveGameWithNextupPage"
	this.ShouldShowBottomBar = false
	this.ShouldShowHubBar = false
	this.DisableTopPadding = true
	this.MaintainVerticalSize = true

	local leaveGameConfirmationText = "Are you sure you want to leave the experience?"

	local leaveGameText =  Create'TextLabel'
	{
		Name = "LeaveGameText",
		Text = leaveGameConfirmationText,
		Font = Theme.font(Enum.Font.SourceSansBold, "Confirmation"),
		FontSize = Theme.fontSize(Enum.FontSize.Size36, "Confirmation"),
		TextColor3 = Color3.new(1,1,1),
		BackgroundTransparency = 1,
		Size = UDim2.new(1,0,0,70),
		TextWrapped = true,
		ZIndex = 2,
		Parent = this.Page,
		Position = isTenFootInterface and UDim2.new(0,0,0,100) or UDim2.new(0,0,0,0)
	};

	local leaveButtonContainer = Create'Frame'
	{
		Name = "LeaveButtonContainer",
		Parent = this.Page,
		Size = UDim2.new(1,0,0,0),
		AutomaticSize = Enum.AutomaticSize.Y,
		BackgroundTransparency = 1,
		Position = UDim2.new(0,0,1,0)
	};

	local _leaveButtonLayout = Create'UIGridLayout'
	{
		Name = "LeavetButtonsLayout",
		CellSize = isTenFootInterface and UDim2.new(0, 300, 0, 80) or UDim2.new(0, 200, 0, 50),
		CellPadding = UDim2.new(0,20,0,20),
		FillDirection = Enum.FillDirection.Horizontal,
		HorizontalAlignment = Enum.HorizontalAlignment.Center,
		SortOrder = Enum.SortOrder.LayoutOrder,
		VerticalAlignment = Enum.VerticalAlignment.Top,
		Parent = leaveButtonContainer
	};

	local nextupContainer = Create'Frame'
	{
		Name = "NextUpContainer",
		Size = UDim2.new(1, 0, 0, 0),
		BackgroundTransparency = 1,
		Parent = this.Page,
	}

	local _nextupContainerFlexItem = Create'UIFlexItem'
	{
		FlexMode = Enum.UIFlexMode.Fill,
		Parent = nextupContainer,
	}

	local nextupRootContainer = Create'Frame'
	{
		Name = "NextUpRootContainer",
		Size = UDim2.new(1, 0, 1, 0),
		BackgroundTransparency = 1,
		Parent = nextupContainer,
	}

	local nextupRoot = ReactRoblox.createRoot(nextupRootContainer)
	nextupRoot:render(React.createElement(NextUpModuleContainer))

	if utility:IsSmallTouchScreen() then
		leaveGameText.FontSize = Enum.FontSize.Size24
		leaveGameText.Size = UDim2.new(1, 0, 0, 35)
	elseif isTenFootInterface then
		leaveGameText.FontSize = Enum.FontSize.Size48
	end

	this.LeaveGameButton = utility:MakeStyledButton("LeaveGame", "Leave", nil, function() leaveGame(true) end)
	this.LeaveGameButton.NextSelectionRight = nil
	this.LeaveGameButton.Parent = leaveButtonContainer

	------------- Init ----------------------------------

	local dontleaveGameButton = utility:MakeStyledButton("DontLeaveGame", "Don't Leave", nil, this.DontLeaveFromButton)
	dontleaveGameButton.NextSelectionLeft = nil
	dontleaveGameButton.Parent = leaveButtonContainer

	this.Page.Size = UDim2.new(1, 0, 1, 0)

	return this
end


----------- Public Facing API Additions --------------
PageInstance = Initialize()

function PageInstance:GetSize()
	return Vector2.zero
end

PageInstance.Displayed.Event:connect(function()
	GuiService.SelectedCoreObject = PageInstance.LeaveGameButton
	if FFlagEnableChromeShortcutBar then 
		if FFlagChromeShortcutRemoveRespawnOnLeavePage then
			if ChromeEnabled then 
				ChromeService:setShortcutBar(ChromeConstants.TILTMENU_LEAVE_DIALOG_SHORTCUTBAR_ID)
			end
		else
			if ChromeEnabled and ChromeService and ChromeConstants then 
				ChromeService:setShortcutBar(ChromeConstants.TILTMENU_DIALOG_SHORTCUTBAR_ID)
			end
		end
	else
		ContextActionService:BindCoreAction(LEAVE_GAME_ACTION, PageInstance.DontLeaveFromGamepad, false, Enum.KeyCode.ButtonB)
	end
end)

PageInstance.Hidden.Event:connect(function()
	ContextActionService:UnbindCoreAction(LEAVE_GAME_ACTION)
end)


return PageInstance
