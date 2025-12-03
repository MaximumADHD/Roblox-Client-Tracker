--!nonstrict
--[[
		Filename: LeaveGame.lua
		Written by: jeditkacheff
		Version 1.0
		Description: Takes care of the leave game in Settings Menu
--]]


-------------- CONSTANTS -------------
local LEAVE_GAME_ACTION = "LeaveGameCancelAction"

-------------- SERVICES --------------
local CoreGui = game:GetService("CoreGui")
local CorePackages = game:GetService("CorePackages")
local ContextActionService = game:GetService("ContextActionService")
local RobloxGui = CoreGui:WaitForChild("RobloxGui")
local GuiService = game:GetService("GuiService")
local AnalyticsService = game:GetService("RbxAnalyticsService")
local LocalizationService = game:GetService("LocalizationService")

----------- UTILITIES --------------
local utility = require(RobloxGui.Modules.Settings.Utility)
local leaveGame = require(RobloxGui.Modules.Settings.leaveGame)
local Create = require(CorePackages.Workspace.Packages.AppCommonLib).Create
local React = require(CorePackages.Packages.React)
local ReactRoblox = require(CorePackages.Packages.ReactRoblox)

local ReactFocusNavigation = require(CorePackages.Packages.ReactFocusNavigation)
local useFocusGuiObject = ReactFocusNavigation.useFocusGuiObject

local Responsive = require(CorePackages.Workspace.Packages.Responsive)
local Input = Responsive.Input
local useLastInput = Responsive.useLastInput

local Localization = require(CorePackages.Workspace.Packages.InExperienceLocales).Localization
local LocalizationProvider = require(CorePackages.Workspace.Packages.Localization).LocalizationProvider
local useLocalization = require(CorePackages.Workspace.Packages.Localization).Hooks.useLocalization

local Foundation = require(CorePackages.Packages.Foundation)

local ChromeEnabled = require(RobloxGui.Modules.Chrome.Enabled)()
local ChromeService = if ChromeEnabled then require(RobloxGui.Modules.Chrome.Service) else nil
local ChromeConstants = if ChromeEnabled then require(RobloxGui.Modules.Chrome.ChromeShared.Unibar.Constants) else nil

------------ Variables -------------------
local PageInstance = nil
RobloxGui:WaitForChild("Modules"):WaitForChild("TenFootInterface")
local isTenFootInterface = require(RobloxGui.Modules.TenFootInterface):IsEnabled()

local EngineFeatureRbxAnalyticsServiceExposePlaySessionId = game:GetEngineFeature("RbxAnalyticsServiceExposePlaySessionId")

local SharedFlags = require(CorePackages.Workspace.Packages.SharedFlags)
local FFlagIEMSettingsAddPlaySessionID = SharedFlags.FFlagIEMSettingsAddPlaySessionID
local FFlagEnableChromeShortcutBar = SharedFlags.FFlagEnableChromeShortcutBar
local FFlagChromeShortcutRemoveRespawnOnLeavePage = SharedFlags.FFlagChromeShortcutRemoveRespawnOnLeavePage
local FFlagRefactorMenuConfirmationButtons = require(RobloxGui.Modules.Settings.Flags.FFlagRefactorMenuConfirmationButtons)

local Constants = require(RobloxGui.Modules:WaitForChild("InGameMenu"):WaitForChild("Resources"):WaitForChild("Constants"))

local focusNavigationService = ReactFocusNavigation.FocusNavigationService.new(ReactFocusNavigation.EngineInterface.CoreGui)

local Theme = require(RobloxGui.Modules.Settings.Theme)

local FoundationProvider = Foundation.FoundationProvider
local Button = Foundation.Button
local ButtonVariant = Foundation.Enums.ButtonVariant
local InputSize = Foundation.Enums.InputSize
local Text = Foundation.Text
local View = Foundation.View

local RobloxTranslator = require(CorePackages.Workspace.Packages.RobloxTranslator)

----------- CLASS DECLARATION --------------

type Props = {
	dontLeaveFromButton: (isUsingGamepad: boolean) -> (),
}

local function LeaveButtonsContainer(props: Props)
	local leaveButtonRef = React.useRef(nil)

	local lastInput = useLastInput()
	local focusGuiObject = useFocusGuiObject()

	local localizedText = useLocalization({
		ConfirmLeaveGame = Constants.ConfirmLeaveGameLocalizedKey,
		LeaveGame = Constants.LeaveGameLocalizedKey,
		DontLeaveGame = Constants.DontLeaveGameLocalizedKey,
	}) 

	React.useEffect(function() 
		if lastInput ~= Input.Touch then
			focusGuiObject(leaveButtonRef.current)
		else
			focusGuiObject(nil)
		end
	end, { lastInput, focusGuiObject })

	local onLeaveGame = React.useCallback(function()
		leaveGame(true)
	end, { leaveGame })

	local onDontLeaveGame = React.useCallback(function()
		props.dontLeaveFromButton(utility:IsUsingGamepad())
	end, { utility, props.dontLeaveFromButton })

	return React.createElement(View, {
		Position = UDim2.new(0, 0, 0, if isTenFootInterface then 100 else 0),
		tag = "size-full-0 auto-y col",
	}, {
		LeaveGameText = React.createElement(Text, {
			Text = localizedText.ConfirmLeaveGame,
			Size = UDim2.new(1, 0, 0, if utility:IsSmallTouchScreen() then 100 else 200),
			LayoutOrder = 1,
			tag = {
				["text-wrap"] = true,
				["text-heading-medium"] = not utility:IsSmallTouchScreen() and not isTenFootInterface,
				["text-heading-small"] = utility:IsSmallTouchScreen(),
				["text-heading-large"] = isTenFootInterface,
			},
		}),
		LeaveButtonsContainer = React.createElement(View, {
			LayoutOrder = 2,
			tag = "size-full-0 auto-y row align-x-center gap-xlarge wrap",
		}, {
			LeaveGameButton = React.createElement(Button, {
				text = localizedText.LeaveGame,
				size = InputSize.Large,
				variant = ButtonVariant.SoftEmphasis,
				width = UDim.new(0, if isTenFootInterface then 300 else 200),
				LayoutOrder = 1,
				ref = leaveButtonRef,
				onActivated = onLeaveGame,
			}),
			DontLeaveGameButton = React.createElement(Button, {
				text = localizedText.DontLeaveGame,
				size = InputSize.Large,
				variant = ButtonVariant.Subtle,
				width = UDim.new(0, if isTenFootInterface then 300 else 200),
				LayoutOrder = 2,
				onActivated = onDontLeaveGame,
			})
		})
	})
end

local function LeaveGameContainer(props: Props)
	local localization = Localization.new(LocalizationService.RobloxLocaleId)

	return React.createElement(LocalizationProvider, {
		localization = localization,
	}, {
		FoundationProvider = React.createElement(FoundationProvider, {
			theme = Foundation.Enums.Theme.Dark,
		}, {
			FocusNavigationProvider = React.createElement(ReactFocusNavigation.FocusNavigationContext.Provider, {
				value = focusNavigationService,
			}, {
				LeaveButtonsContainer = React.createElement(LeaveButtonsContainer, props),
			})
		})
	})
end

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
	this.Page.Name = "LeaveGamePage"
	this.ShouldShowBottomBar = false
	this.ShouldShowHubBar = false

	if FFlagRefactorMenuConfirmationButtons then
		this.RenderPage = function()
			this.PageRoot = ReactRoblox.createRoot(this.Page)
			this.PageRoot:render(React.createElement(LeaveGameContainer, {
				dontLeaveFromButton = this.DontLeaveFromButton,
			}))
		end

		this.UnmountPage = function()
			if this.PageRoot then
				this.PageRoot:unmount()
			end
		end
	else
		local leaveGameConfirmationText = RobloxTranslator:FormatByKey(Constants.ConfirmLeaveGameLocalizedKey)

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

		this.LeaveGameButton = utility:MakeStyledButton("LeaveGame", "Leave", nil, function() leaveGame(true) end)
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
	end

	return this
end


----------- Public Facing API Additions --------------
PageInstance = Initialize()

PageInstance.Displayed.Event:connect(function()
	if FFlagRefactorMenuConfirmationButtons then
		PageInstance.RenderPage()
	end
	if not FFlagRefactorMenuConfirmationButtons then
		GuiService.SelectedCoreObject = PageInstance.LeaveGameButton
	end
	if FFlagEnableChromeShortcutBar then 
		if ChromeEnabled then 
			if FFlagChromeShortcutRemoveRespawnOnLeavePage then
				ChromeService:setShortcutBar(ChromeConstants.TILTMENU_LEAVE_DIALOG_SHORTCUTBAR_ID)
			else
				ChromeService:setShortcutBar(ChromeConstants.TILTMENU_DIALOG_SHORTCUTBAR_ID)
			end
		end
	else
		ContextActionService:BindCoreAction(LEAVE_GAME_ACTION, PageInstance.DontLeaveFromHotkey, false, Enum.KeyCode.ButtonB)
	end
end)

PageInstance.Hidden.Event:connect(function()
	if FFlagRefactorMenuConfirmationButtons then
		PageInstance.UnmountPage()
	end
	ContextActionService:UnbindCoreAction(LEAVE_GAME_ACTION)
end)

return PageInstance
