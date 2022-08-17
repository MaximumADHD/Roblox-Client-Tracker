--!nonstrict
local CoreGui = game:GetService("CoreGui")
local ContextActionService = game:GetService("ContextActionService")
local UserInputService = game:GetService("UserInputService")

local UserGameSettings = UserSettings():GetService("UserGameSettings")

local DevConsoleMaster = require(CoreGui.RobloxGui.Modules.DevConsoleMaster)

local InGameMenu = script.Parent.Parent

local OpenSystemMenu = require(InGameMenu.Thunks.OpenSystemMenu)
local CloseMenu = require(InGameMenu.Thunks.CloseMenu)
local SetRespawning = require(InGameMenu.Actions.SetRespawning)
local SetCurrentPage = require(InGameMenu.Actions.SetCurrentPage)
local NavigateBack = require(InGameMenu.Actions.NavigateBack)
local SetCurrentZone = require(InGameMenu.Actions.SetCurrentZone)

local Pages = require(InGameMenu.Components.Pages)
local Constants = require(InGameMenu.Resources.Constants)

local TOGGLE_DEVELOPER_CONSOLE_ACTION_NAME = "ToggleDeveloperConsole"
local TOGGLE_PERFORMANCE_STATS_ACTION_NAME = "TogglePerformanceStats"
local TOGGLE_MENU_ACTION_NAME = "ToggleInGameMenu"
local LEAVE_GAME_ACTION_NAME = "LeaveGame"
local RESET_ACTION_NAME = "ResetCharacter"
local NAVIGATE_BACK_ACTION_NAME = "NavigateBack"
local LEFT_BUMPER_SWITCH_ZONE = "LeftBumperSwitchToZone0"
local RIGHT_BUMPER_SWITCH_ZONE = "RightBumperSwitchToZone1"

local function bindMenuActions(store)
	local function toggleMenuFunc(actionName, inputState, input)
		if inputState ~= Enum.UserInputState.Begin then
			return
		end

		local state = store:getState()
		local isMenuOpen = state.isMenuOpen

		local page = Pages.pagesByKey[state.menuPage]

		if page and page.isModal then
			store:dispatch(SetCurrentPage(Constants.defaultPageKey))
		else
			if isMenuOpen then
				if state.menuPage == Constants.InitalPageKey then
					store:dispatch(OpenSystemMenu(Constants.AnalyticsMenuOpenTypes.Keyboard))
				else
					store:dispatch(CloseMenu)
				end
			else
				store:dispatch(OpenSystemMenu(Constants.AnalyticsMenuOpenTypes.Keyboard))
			end
		end
	end

	ContextActionService:BindCoreAction(TOGGLE_MENU_ACTION_NAME, toggleMenuFunc, false, Enum.KeyCode.Escape)

	ContextActionService:BindCoreAction(TOGGLE_DEVELOPER_CONSOLE_ACTION_NAME, function(actionName, inputState)
		if actionName ~= TOGGLE_DEVELOPER_CONSOLE_ACTION_NAME then
			return
		end

		if inputState ~= Enum.UserInputState.Begin then
			return
		end

		DevConsoleMaster:ToggleVisibility()
	end, false, Enum.KeyCode.F9)

	ContextActionService:BindCoreAction(TOGGLE_PERFORMANCE_STATS_ACTION_NAME, function(actionName, inputState)
		if not (UserInputService:IsKeyDown(Enum.KeyCode.LeftControl)
			or UserInputService:IsKeyDown(Enum.KeyCode.RightControl)) then

			return Enum.ContextActionResult.Pass
		end

		if actionName ~= TOGGLE_PERFORMANCE_STATS_ACTION_NAME then
			return
		end

		if inputState ~= Enum.UserInputState.Begin then
			return
		end

		UserGameSettings.PerformanceStatsVisible = not UserGameSettings.PerformanceStatsVisible
		return
	end, false, Enum.KeyCode.F7)

	local function leaveGameFunc(actionName, inputState, input)
		local state = store:getState()
		if inputState ~= Enum.UserInputState.Begin or not state.isMenuOpen then
			return Enum.ContextActionResult.Pass
		end

		if Pages.pagesByKey[state.menuPage].isModal then
			return Enum.ContextActionResult.Pass
		end

		store:dispatch(SetCurrentPage(Constants.LeaveGamePromptPageKey))

		return Enum.ContextActionResult.Sink
	end

	ContextActionService:BindCoreAction(LEAVE_GAME_ACTION_NAME, leaveGameFunc, false, Enum.KeyCode.L, Enum.KeyCode.ButtonX)

	local function resetCharacterFunc(actionName, inputState, input)
		local state = store:getState()
		if inputState ~= Enum.UserInputState.Begin or not state.isMenuOpen then
			return Enum.ContextActionResult.Pass
		end

		if not state.respawn.enabled then
			return Enum.ContextActionResult.Pass
		end

		if Pages.pagesByKey[state.menuPage].isModal then
			return Enum.ContextActionResult.Pass
		end

		if state.menuPage == Constants.InitalPageKey then
			return Enum.ContextActionResult.Pass
		end

		store:dispatch(SetRespawning(true))

		return Enum.ContextActionResult.Sink
	end

	ContextActionService:BindCoreAction(RESET_ACTION_NAME, resetCharacterFunc, false, Enum.KeyCode.R, Enum.KeyCode.ButtonY)

	local function navigateBackFunc(actionName, inputState, input)
		local state = store:getState()
		local parentPage = Pages.pagesByKey[state.menuPage].parentPage
		local devConsoleVisible = DevConsoleMaster:GetVisibility()

		if inputState ~= Enum.UserInputState.End
			or (not state.isMenuOpen and not devConsoleVisible)
		then
			return Enum.ContextActionResult.Pass
		end

		if devConsoleVisible then
			DevConsoleMaster:SetVisibility(false)
		elseif parentPage == nil and
			not state.respawn.dialogOpen then -- B Button might exit the menu
				store:dispatch(CloseMenu)
		else
			store:dispatch(NavigateBack())
		end

		return Enum.ContextActionResult.Sink
	end

	-- The obvious choice for a keyboard button would be backspace,
	-- but that would cause problems if Input fields don't rebind it
	ContextActionService:BindCoreAction(NAVIGATE_BACK_ACTION_NAME, navigateBackFunc, false, Enum.KeyCode.ButtonB)

	local function canBumperSwitch()
		local state = store:getState()
		return (state.menuPage ~= "Controls"
			and state.isMenuOpen
			and not state.respawn.dialogOpen
			and not state.report.dialogOpen
			and not state.report.reportSentOpen)
	end

	ContextActionService:BindCoreAction(LEFT_BUMPER_SWITCH_ZONE,
		function(actionName, inputState, inputObject)
			if inputState == Enum.UserInputState.Begin and canBumperSwitch() then
				store:dispatch(SetCurrentZone(0))
				return Enum.ContextActionResult.Sink
			end
			return Enum.ContextActionResult.Pass
		end,
		false, Enum.KeyCode.ButtonL1)

	ContextActionService:BindCoreAction(RIGHT_BUMPER_SWITCH_ZONE,
		function(actionName, inputState, inputObject)
			if inputState == Enum.UserInputState.Begin and canBumperSwitch() then
				store:dispatch(SetCurrentZone(1))
				return Enum.ContextActionResult.Sink
			end
			return Enum.ContextActionResult.Pass
		end,
		false, Enum.KeyCode.ButtonR1)
end

return bindMenuActions
