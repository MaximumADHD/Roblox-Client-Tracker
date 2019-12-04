local CoreGui = game:GetService("CoreGui")
local ContextActionService = game:GetService("ContextActionService")
local UserInputService = game:GetService("UserInputService")

local UserGameSettings = UserSettings():GetService("UserGameSettings")

local DevConsoleMaster = require(CoreGui.RobloxGui.Modules.DevConsoleMaster)

local InGameMenu = script.Parent.Parent

local OpenMenu = require(InGameMenu.Thunks.OpenMenu)
local CloseMenu = require(InGameMenu.Thunks.CloseMenu)
local SetCurrentPage = require(InGameMenu.Actions.SetCurrentPage)

local Pages = require(InGameMenu.Components.Pages)
local Constants = require(InGameMenu.Resources.Constants)

local TOGGLE_DEVELOPER_CONSOLE_ACTION_NAME = "ToggleDeveloperConsole"
local TOGGLE_PERFORMANCE_STATS_ACTION_NAME = "TogglePerformanceStats"
local TOGGLE_MENU_ACTION_NAME = "ToggleInGameMenu"

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
				store:dispatch(OpenMenu)
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
	end, false, Enum.KeyCode.F7)
end

return bindMenuActions