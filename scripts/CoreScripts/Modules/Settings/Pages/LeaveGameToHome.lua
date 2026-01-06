--!nonstrict
--[[
		Filename: LeaveGameToHome.lua
		Written by: relkhattabi
		Version 1.0
		Description: Takes care of the home button in Settings Menu
		TODO remove this file once V1 menu is no longer used by the universal app
--]]

-------------- CONSTANTS -------------
local LEAVE_GAME_ACTION = "LeaveGameCancelAction"
local LEAVE_GAME_FRAME_WAITS = 2

-------------- SERVICES --------------
local CoreGui = game:GetService("CoreGui")
local ContextActionService = game:GetService("ContextActionService")
local RobloxGui = CoreGui:WaitForChild("RobloxGui")
local GuiService = game:GetService("GuiService")
local RunService = game:GetService("RunService")
local AnalyticsService = game:GetService("RbxAnalyticsService")
local CorePackages = game:GetService("CorePackages")

----------- UTILITIES --------------
local PerfUtils = require(RobloxGui.Modules.Common.PerfUtils)
local utility = require(RobloxGui.Modules.Settings.Utility)
local LinkingProtocol = require(CorePackages.Workspace.Packages.LinkingProtocol).LinkingProtocol
local Theme = require(RobloxGui.Modules.Settings.Theme)
local Create = require(CorePackages.Workspace.Packages.AppCommonLib).Create

------------ Variables -------------------
local PageInstance = nil
RobloxGui:WaitForChild("Modules"):WaitForChild("TenFootInterface")
local isTenFootInterface = require(RobloxGui.Modules.TenFootInterface):IsEnabled()

local EngineFeatureRbxAnalyticsServiceExposePlaySessionId = game:GetEngineFeature("RbxAnalyticsServiceExposePlaySessionId")

local GetFFlagEnableInGameMenuDurationLogger = require(RobloxGui.Modules.Common.Flags.GetFFlagEnableInGameMenuDurationLogger)
local FFlagCollectAnalyticsForSystemMenu = settings():GetFFlag("CollectAnalyticsForSystemMenu")

local GetDefaultQualityLevel = require(CorePackages.Workspace.Packages.AppCommonLib).GetDefaultQualityLevel

local Constants
if FFlagCollectAnalyticsForSystemMenu then
  Constants = require(RobloxGui.Modules:WaitForChild("InGameMenu"):WaitForChild("Resources"):WaitForChild("Constants"))
end

local RobloxTranslator = require(CorePackages.Workspace.Packages.RobloxTranslator)

----------- CLASS DECLARATION --------------

local function Initialize()
	local settingsPageFactory = require(RobloxGui.Modules.Settings.SettingsPageFactory)
	local this = settingsPageFactory:CreateNewPage()

	this.playsessionid = ""
	if EngineFeatureRbxAnalyticsServiceExposePlaySessionId then
		this.playsessionid = AnalyticsService:GetPlaySessionId()
	end

	this.LeaveFunc = function()
		if GetFFlagEnableInGameMenuDurationLogger() then
			PerfUtils.leavingGame()
		end
		GuiService.SelectedCoreObject = nil -- deselects the button and prevents spamming the popup to save in studio when using gamepad

		if FFlagCollectAnalyticsForSystemMenu then
			AnalyticsService:SetRBXEventStream(
				Constants.AnalyticsTargetName,
				Constants.AnalyticsInGameMenuName,
				Constants.AnalyticsLeaveGameName,
				{
					confirmed = Constants.AnalyticsConfirmedName,
					universeid = tostring(game.GameId),
					source = Constants.AnalyticsLeaveToHomeSource,
					playsessionid = this.playsessionid ,
				}
			)
		end

		LinkingProtocol.default:detectURL("roblox://navigation/home")

		-- need to wait for render frames so on slower devices the leave button highlight will update
		-- otherwise, since on slow devices it takes so long to leave you are left wondering if you pressed the button
		for i = 1, LEAVE_GAME_FRAME_WAITS do
			RunService.RenderStepped:wait()
		end

		game:Shutdown()

		settings().Rendering.QualityLevel = GetDefaultQualityLevel()
	end
	this.DontLeaveFunc = function(isUsingGamepad)
		if this.HubRef then
			this.HubRef:PopMenu(isUsingGamepad, true)
		end

		if FFlagCollectAnalyticsForSystemMenu then
			AnalyticsService:SetRBXEventStream(
				Constants.AnalyticsTargetName,
				Constants.AnalyticsInGameMenuName,
				Constants.AnalyticsLeaveGameName,
				{
					confirmed = Constants.AnalyticsCancelledName,
					universeid = tostring(game.GameId),
					source = Constants.AnalyticsLeaveToHomeSource,
					playsessionid = this.playsessionid ,
				}
			)								
		end
	end
	this.DontLeaveFromHotkey = function(name, state, input)
		if state == Enum.UserInputState.Begin then
			local isUsingGamepad = input.UserInputType == Enum.UserInputType.Gamepad1 or input.UserInputType == Enum.UserInputType.Gamepad2
				or input.UserInputType == Enum.UserInputType.Gamepad3 or input.UserInputType == Enum.UserInputType.Gamepad4

			this.DontLeaveFunc(isUsingGamepad)
		end
	end
	this.DontLeaveFromButton = function(isUsingGamepad)
		this.DontLeaveFunc(isUsingGamepad)
	end

	------ TAB CUSTOMIZATION -------
	this.TabHeader = nil -- no tab for this page

	------ PAGE CUSTOMIZATION -------
	this.Page.Name = "LeaveGameToHomePage"
	this.ShouldShowBottomBar = false
	this.ShouldShowHubBar = false

	local leaveGameConfirmationText = RobloxTranslator:FormatByKey(
			if FFlagCollectAnalyticsForSystemMenu then
				Constants.ConfirmLeaveGameLocalizedKey else
				"CoreScripts.InGameMenu.Prompt.ConfirmLeaveGame"
		)

	local leaveGameText =  Create'TextLabel'
	{
		Name = "LeaveGameText",
		Text = leaveGameConfirmationText,
		Font = Theme.font(Enum.Font.SourceSansBold, "Confirmation"),
		FontSize = Theme.fontSize(Enum.FontSize.Size36, "Confirmation"),
		TextColor3 = Color3.new(1,1,1),
		BackgroundTransparency = 1,
		Size = UDim2.new(1,0,0,200),
		TextWrapped = true,
		ZIndex = 2,
		Parent = this.Page,
		Position = isTenFootInterface and UDim2.new(0,0,0,100) or UDim2.new(0,0,0,0)
	};

	local leaveButtonContainer = Create"Frame"
	{
		Name = "LeaveButtonContainer",
		Parent = leaveGameText,
		Size = UDim2.new(1,0,0,400),
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

	if utility:IsSmallTouchScreen() then
		leaveGameText.FontSize = Enum.FontSize.Size24
		leaveGameText.Size = UDim2.new(1,0,0,100)
	elseif isTenFootInterface then
		leaveGameText.FontSize = Enum.FontSize.Size48
	end

	this.LeaveGameButton = utility:MakeStyledButton("LeaveGame", "Leave", nil, this.LeaveFunc)
	this.LeaveGameButton.NextSelectionRight = nil
	this.LeaveGameButton.Parent = leaveButtonContainer

	------------- Init ----------------------------------

	local dontleaveGameButton = utility:MakeStyledButton(
		"DontLeaveGame",
		RobloxTranslator:FormatByKey("Feature.SettingsHub.Label.DontLeaveButton"),
		nil,
		this.DontLeaveFromButton
	)
	dontleaveGameButton.NextSelectionLeft = nil
	dontleaveGameButton.Parent = leaveButtonContainer

	this.Page.Size = UDim2.new(1,0,0,dontleaveGameButton.AbsolutePosition.Y + dontleaveGameButton.AbsoluteSize.Y)

	return this
end


----------- Public Facing API Additions --------------
PageInstance = Initialize()

PageInstance.Displayed.Event:connect(function()
	GuiService.SelectedCoreObject = PageInstance.LeaveGameButton
	ContextActionService:BindCoreAction(LEAVE_GAME_ACTION, PageInstance.DontLeaveFromHotkey, false, Enum.KeyCode.ButtonB)
end)

PageInstance.Hidden.Event:connect(function()
	ContextActionService:UnbindCoreAction(LEAVE_GAME_ACTION)
end)


return PageInstance
