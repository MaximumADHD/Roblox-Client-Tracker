
local CorePackages = game:GetService("CorePackages")
local CoreGui = game:GetService("CoreGui")
local ContextActionService = game:GetService("ContextActionService")
local Roact = require(CorePackages.Roact)
local RoactRodux = require(CorePackages.RoactRodux)
local Settings = script.Parent.Parent
local SettingsState = require(Settings.SettingsState)
local SettingsPageFactory = require(Settings.SettingsPageFactory)
local ApiFetchRecentlyPlayedGames = require(Settings.Thunks.ApiFetchRecentlyPlayedGames)
local LeaveGameScreen = require(Settings.Pages.LeaveGameScreen.LeaveGame)

-------------- CONSTANTS -------------
local LEAVE_GAME_ACTION = "LeaveGameCancelAction"
-- NOTE: The current game will be filtered out.
local NUM_OF_GAMES = 7

local PageInstance

local function Initialize()
	local this = SettingsPageFactory:CreateNewPage()
	------ TAB CUSTOMIZATION -------
	this.TabHeader = nil -- no tab for this page

	------ TAB CUSTOMIZATION -------
	this.TabHeader = nil -- no tab for this page

	------ PAGE CUSTOMIZATION -------
	this.Page.Name = "LeaveGamePage"
	this.ShouldShowBottomBar = false
	this.ShouldShowHubBar = false
	this.IsPageClipped = false

	SettingsState.store:dispatch(ApiFetchRecentlyPlayedGames(NUM_OF_GAMES))
	this.unMountFunction = function(isUsingGamepad)
		if this.HubRef then
			this.HubRef:PopMenu(isUsingGamepad, true)
		end
	end
	this.unMountFromHotkey = function(name, state, input)
		if state == Enum.UserInputState.Begin then
			local isUsingGamepad = input.UserInputType == Enum.UserInputType.Gamepad1 or input.UserInputType == Enum.UserInputType.Gamepad2
				or input.UserInputType == Enum.UserInputType.Gamepad3 or input.UserInputType == Enum.UserInputType.Gamepad4

			this.unMountFunction(isUsingGamepad)
		end
	end
	this.RoactScreen = Roact.createElement(RoactRodux.StoreProvider,
	{
		store = SettingsState.store,
	},{
		Screen = Roact.createElement("ScreenGui", {}, {
			LeaveGameScreen = Roact.createElement(LeaveGameScreen, {
				focused = true,
				closeScreen = this.unMountFunction,
				zIndex = 2,
				numOfGames = NUM_OF_GAMES,
			}),
		})
	})
	return this
end

----------- Public Facing API Additions --------------
PageInstance = Initialize()

PageInstance.Displayed.Event:connect(function()
	PageInstance.handle = Roact.mount(PageInstance.RoactScreen, CoreGui)
	ContextActionService:BindCoreAction(LEAVE_GAME_ACTION, PageInstance.unMountFromHotkey, false, Enum.KeyCode.ButtonB)
end)

PageInstance.Hidden.Event:connect(function()
	ContextActionService:UnbindCoreAction(LEAVE_GAME_ACTION)
	if PageInstance.handle ~= nil then
		Roact.unmount(PageInstance.handle)
		PageInstance.handle = nil
	end
end)


return PageInstance