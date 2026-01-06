--!nonstrict
--[[
		Filename: ResetCharacter.lua
		Written by: jeditkacheff
		Version 1.0
		Description: Takes care of the reseting the character in Settings Menu
--]]

-------------- CONSTANTS -------------
local RESET_CHARACTER_GAME_ACTION = "ResetCharacterAction"

-------------- SERVICES --------------
local CoreGui = game:GetService("CoreGui")
local ContextActionService = game:GetService("ContextActionService")
local RobloxGui = CoreGui:WaitForChild("RobloxGui")
local GuiService = game:GetService("GuiService")
local PlayersService = game:GetService("Players")
local AnalyticsService = game:GetService("RbxAnalyticsService")
local CorePackages = game:GetService("CorePackages")
local LocalizationService = game:GetService("LocalizationService")

----------- UTILITIES --------------
local utility = require(RobloxGui.Modules.Settings.Utility)
local Theme = require(RobloxGui.Modules.Settings.Theme)
local Create = require(CorePackages.Workspace.Packages.AppCommonLib).Create
local Cryo = require(CorePackages.Packages.Cryo)
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

local SharedFlags = require(CorePackages.Workspace.Packages.SharedFlags)
local FFlagEnableConsoleExpControls = SharedFlags.FFlagEnableConsoleExpControls
local FFlagChromeShortcutRemoveLeaveOnRespawnPage = SharedFlags.FFlagChromeShortcutRemoveLeaveOnRespawnPage
local FFlagRespawnActionChromeShortcutTelemetry = require(RobloxGui.Modules.Chrome.Flags.FFlagRespawnActionChromeShortcutTelemetry)
local FFlagRefactorMenuConfirmationButtons = require(RobloxGui.Modules.Settings.Flags.FFlagRefactorMenuConfirmationButtons)
local FFlagRenameRespawnConfirmationPage = SharedFlags.FFlagRenameRespawnConfirmationPage

local Constants = require(RobloxGui.Modules:WaitForChild("InGameMenu"):WaitForChild("Resources"):WaitForChild("Constants"))

local focusNavigationService = ReactFocusNavigation.FocusNavigationService.new(ReactFocusNavigation.EngineInterface.CoreGui)

local FoundationProvider = Foundation.FoundationProvider
local Button = Foundation.Button
local ButtonVariant = Foundation.Enums.ButtonVariant
local InputSize = Foundation.Enums.InputSize
local Text = Foundation.Text
local View = Foundation.View

export type ResetProps = {
	resetTelemetryFields: { [string] : any }?,
}

----------- CLASS DECLARATION --------------

type Props = {
	onResetFunction: () -> (),
	dontResetCharFromButton: (isUsingGamepad: boolean) -> (),
}

local function ResetCharacterButtonsContainer(props: Props)
	local resetCharacterButtonRef = React.useRef(nil)

	local lastInput = useLastInput()
	local focusGuiObject = useFocusGuiObject()

	local localizedText = useLocalization({
		ConfirmResetCharacter = Constants.ConfirmResetCharacterLocalizedKey,
		ResetCharacter = if FFlagRenameRespawnConfirmationPage then Constants.RespawnLocalizedKey else Constants.ResetCharacterLocalizedKey,
		DontResetCharacter = Constants.DontResetCharacterLocalizedKey,
	}) 

	React.useEffect(function() 
		if lastInput ~= Input.Touch then
			focusGuiObject(resetCharacterButtonRef.current)
		else
			focusGuiObject(nil)
		end
	end, { lastInput, focusGuiObject })

	local onDontResetCharacter = React.useCallback(function()
		props.dontResetCharFromButton(utility:IsUsingGamepad())
	end, { utility, props.dontResetCharFromButton })

	return React.createElement(View, {
		Position = UDim2.new(0, 0, 0, if isTenFootInterface then 100 else 0),
		tag = "size-full-0 auto-y col",
	}, {
		ResetCharacterText = React.createElement(Text, {
			Text = localizedText.ConfirmResetCharacter,
			Size = UDim2.new(1, 0, 0, if utility:IsSmallTouchScreen() then 100 else 200),
			LayoutOrder = 1,
			tag = {
				["text-wrap"] = true,
				["text-heading-medium"] = not utility:IsSmallTouchScreen() and not isTenFootInterface,
				["text-heading-small"] = utility:IsSmallTouchScreen(),
				["text-heading-large"] = isTenFootInterface,
			},
		}),
		ButtonsContainer = React.createElement(View, {
			LayoutOrder = 2,
			tag = "size-full-0 auto-y row align-x-center gap-xlarge wrap",
		}, {
			ResetCharacterButton = React.createElement(Button, {
				text = localizedText.ResetCharacter,
				size = InputSize.Large,
				variant = ButtonVariant.SoftEmphasis,
				width = UDim.new(0, if isTenFootInterface then 300 else 200),
				LayoutOrder = 1,
				ref = resetCharacterButtonRef,
				onActivated = props.onResetFunction,
			}),
			DontResetCharacterButton = React.createElement(Button, {
				text = localizedText.DontResetCharacter,
				size = InputSize.Large,
				variant = ButtonVariant.Subtle,
				width = UDim.new(0, if isTenFootInterface then 300 else 200),
				LayoutOrder = 2,
				onActivated = onDontResetCharacter,
			}),
		})
	})
end

local function ResetCharacterContainer(props: Props)
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
				ResetCharacterButtonsContainer = React.createElement(ResetCharacterButtonsContainer, props),
			})
		})
	})
end

local function Initialize()
	local settingsPageFactory = require(RobloxGui.Modules.Settings.SettingsPageFactory)
	local this = settingsPageFactory:CreateNewPage()

	this.DontResetCharFunc = function(isUsingGamepad)
		AnalyticsService:SetRBXEventStream(Constants.AnalyticsTargetName, Constants.AnalyticsInGameMenuName,
											Constants.AnalyticsRespawnCharacterName, {confirmed = Constants.AnalyticsCancelledName, universeid = tostring(game.GameId)})

		if this.HubRef then
			this.HubRef:PopMenu(isUsingGamepad, true)
		end
	end
	this.DontResetCharFromHotkey = function(name, state, input)
		if state == Enum.UserInputState.Begin then
			local isUsingGamepad = input.UserInputType == Enum.UserInputType.Gamepad1 or input.UserInputType == Enum.UserInputType.Gamepad2
				or input.UserInputType == Enum.UserInputType.Gamepad3 or input.UserInputType == Enum.UserInputType.Gamepad4

			this.DontResetCharFunc(isUsingGamepad)
		end
	end
	this.DontResetCharFromButton = function(isUsingGamepad)
		this.DontResetCharFunc(isUsingGamepad)
	end

	------ TAB CUSTOMIZATION -------
	this.TabHeader = nil -- no tab for this page

	------ PAGE CUSTOMIZATION -------
	this.Page.Name = "ResetCharacter"
	this.ShouldShowBottomBar = false
	this.ShouldShowHubBar = false

	local resetButtonContainer
	if not FFlagRefactorMenuConfirmationButtons then
		local resetCharacterText =  Create'TextLabel'
		{
			Name = "ResetCharacterText",
			Text = if FFlagRenameRespawnConfirmationPage then "Are you sure you want to respawn your character?" else "Are you sure you want to reset your character?",
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

		resetButtonContainer = Create"Frame"
		{
			Name = "ResetButtonContainer",
			Parent = resetCharacterText,
			Size = UDim2.new(1,0,0,400),
			BackgroundTransparency = 1,
			Position = UDim2.new(0,0,1,0)
		};

		local _resetButtonLayout = Create'UIGridLayout'
		{
			Name = "ResetButtonsLayout",
			CellSize = isTenFootInterface and UDim2.new(0, 300, 0, 80) or UDim2.new(0, 200, 0, 50),
			CellPadding = UDim2.new(0,20,0,20),
			FillDirection = Enum.FillDirection.Horizontal,
			HorizontalAlignment = Enum.HorizontalAlignment.Center,
			SortOrder = Enum.SortOrder.LayoutOrder,
			VerticalAlignment = Enum.VerticalAlignment.Top,
			Parent = resetButtonContainer
		};

		if utility:IsSmallTouchScreen() then
			resetCharacterText.FontSize = Enum.FontSize.Size24
			resetCharacterText.Size = UDim2.new(1,0,0,100)
		elseif isTenFootInterface then
			resetCharacterText.FontSize = Enum.FontSize.Size48
		end
	end

	------ Init -------
	local resetCharFunc = function(props: ResetProps?)
		local player = PlayersService.LocalPlayer
		if player then
			local character = player.Character
			if character then
				local humanoid = character:FindFirstChild('Humanoid')
				if humanoid then
					humanoid.Health = 0
				end
			end
		end

		local respawnCustomFields = { confirmed = Constants.AnalyticsConfirmedName, universeid = tostring(game.GameId) }
			if FFlagRespawnActionChromeShortcutTelemetry and props and type(props) == "table" and props.resetTelemetryFields then
				respawnCustomFields = Cryo.Dictionary.join(respawnCustomFields, props.resetTelemetryFields)
			end
		AnalyticsService:SetRBXEventStream(Constants.AnalyticsTargetName, Constants.AnalyticsInGameMenuName,
			Constants.AnalyticsRespawnCharacterName, respawnCustomFields)
		AnalyticsService:ReportCounter("InGameMenu-ResetCharacter")
	end

	this.ResetBindable = true

	local onResetFunction = function(props: ResetProps?)
		if this.ResetBindable == true then
			resetCharFunc(props)
		elseif this.ResetBindable then
			this.ResetBindable:Fire()
		end
		if this.HubRef then
			this.HubRef:SetVisibility(false, true)
		end
	end

	if FFlagEnableConsoleExpControls then
		this.ResetFunction = onResetFunction
	end

	if not FFlagRefactorMenuConfirmationButtons then
		this.ResetCharacterButton = utility:MakeStyledButton("ResetCharacter", if FFlagRenameRespawnConfirmationPage then "Respawn" else "Reset", nil, onResetFunction)
		this.ResetCharacterButton.NextSelectionRight = nil
		this.ResetCharacterButton.Parent = resetButtonContainer

		local dontResetCharacterButton = utility:MakeStyledButton("DontResetCharacter", if FFlagRenameRespawnConfirmationPage then "Don't Respawn" else "Don't Reset", nil, this.DontResetCharFromButton)
		dontResetCharacterButton.NextSelectionLeft = nil
		dontResetCharacterButton.Parent = resetButtonContainer

		this.Page.Size = UDim2.new(1,0,0,dontResetCharacterButton.AbsolutePosition.Y + dontResetCharacterButton.AbsoluteSize.Y)
	end

	if FFlagRefactorMenuConfirmationButtons then
		this.RenderPage = function()
			this.PageRoot = ReactRoblox.createRoot(this.Page)
			this.PageRoot:render(React.createElement(ResetCharacterContainer, {
				onResetFunction = onResetFunction,
				dontResetCharFromButton = this.DontResetCharFromButton,
			}))
		end

		this.UnmountPage = function()
			if this.PageRoot then
				this.PageRoot:unmount()
			end
		end
	end

	return this
end


----------- Public Facing API Additions --------------
PageInstance = Initialize()
local isOpen = false

PageInstance.Displayed.Event:connect(function()
	isOpen = true
	if FFlagRefactorMenuConfirmationButtons then
		PageInstance.RenderPage()
	end
	if not FFlagRefactorMenuConfirmationButtons then
		GuiService.SelectedCoreObject = PageInstance.ResetCharacterButton
	end
	if FFlagEnableConsoleExpControls then 
		if ChromeEnabled then 
			if FFlagChromeShortcutRemoveLeaveOnRespawnPage then
				ChromeService:setShortcutBar(ChromeConstants.TILTMENU_RESPAWN_DIALOG_SHORTCUTBAR_ID)
			else
				ChromeService:setShortcutBar(ChromeConstants.TILTMENU_DIALOG_SHORTCUTBAR_ID)
			end
		end
	else
		ContextActionService:BindCoreAction(RESET_CHARACTER_GAME_ACTION, PageInstance.DontResetCharFromHotkey, false, Enum.KeyCode.ButtonB)
	end
end)

PageInstance.Hidden.Event:connect(function()
	isOpen = false
	if FFlagRefactorMenuConfirmationButtons then
		PageInstance.UnmountPage()
	end
	ContextActionService:UnbindCoreAction(RESET_CHARACTER_GAME_ACTION)
end)

function PageInstance:SetResetCallback(bindableEvent)
	if bindableEvent == false and isOpen then
		-- We need to close this page if reseting was just disabled and the page is already open
		PageInstance.HubRef:PopMenu(nil, true)
	end
	PageInstance.ResetBindable = bindableEvent
end

return PageInstance
