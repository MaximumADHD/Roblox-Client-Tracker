local CoreGui = game:GetService("CoreGui")
local ContextActionService = game:GetService("ContextActionService")
local UserInputService = game:GetService("UserInputService")

local UserGameSettings = UserSettings():GetService("UserGameSettings")

local DevConsoleMaster = require(CoreGui.RobloxGui.Modules.DevConsoleMaster)

local InGameMenu = script.Parent.Parent

local OpenMenu = require(InGameMenu.Thunks.OpenMenu)
local OpenSystemMenu = require(InGameMenu.Thunks.OpenSystemMenu)
local CloseMenu = require(InGameMenu.Thunks.CloseMenu)
local SetRespawning = require(InGameMenu.Actions.SetRespawning)
local StartLeavingGame = require(InGameMenu.Actions.StartLeavingGame)
local SetCurrentPage = require(InGameMenu.Actions.SetCurrentPage)

local Pages = require(InGameMenu.Components.Pages)
local Constants = require(InGameMenu.Resources.Constants)

local GetFFlagUseNewLeaveGamePrompt = require(InGameMenu.Flags.GetFFlagUseNewLeaveGamePrompt)
local GetFFlagInGameOpenSystemMenuFix = require(InGameMenu.Flags.GetFFlagInGameOpenSystemMenuFix)

local TOGGLE_DEVELOPER_CONSOLE_ACTION_NAME = "ToggleDeveloperConsole"
local TOGGLE_PERFORMANCE_STATS_ACTION_NAME = "TogglePerformanceStats"
local TOGGLE_MENU_ACTION_NAME = "ToggleInGameMenu"
local LEAVE_GAME_ACTION_NAME = "LeaveGame"
local RESET_ACTION_NAME = "ResetCharacter"

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
				store:dispatch(CloseMenu)
			else
				if GetFFlagInGameOpenSystemMenuFix() then
					store:dispatch(OpenSystemMenu(Constants.AnalyticsMenuOpenTypes.Keyboard))
				else
					store:dispatch(OpenMenu(Constants.AnalyticsMenuOpenTypes.Keyboard))
				end
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

		if GetFFlagUseNewLeaveGamePrompt() then
			store:dispatch(SetCurrentPage(Constants.LeaveGamePromptPageKey))
		else
			store:dispatch(StartLeavingGame())
		end

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

		store:dispatch(SetRespawning(true))

		return Enum.ContextActionResult.Sink
	end

	ContextActionService:BindCoreAction(RESET_ACTION_NAME, resetCharacterFunc, false, Enum.KeyCode.R, Enum.KeyCode.ButtonY)
end

return bindMenuActions
