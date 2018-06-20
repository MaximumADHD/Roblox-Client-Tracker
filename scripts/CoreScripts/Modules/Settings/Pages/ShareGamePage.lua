--[[
	Page that opens when a player clicks the Invite Friends button.

	This page is more or less a container for the Roact app that we embed via
	SettingsHub.lua. It's implemented as a SettingsPage so we have consistent
	routing with the rest of the settings hub.
--]]

local CoreGui = game:GetService("CoreGui")
local RobloxGui = CoreGui:WaitForChild("RobloxGui")

local ShareGame = RobloxGui.Modules.Settings.Pages.ShareGame
local Constants = require(ShareGame.Constants)
local OpenPage = require(ShareGame.Actions.OpenPage)
local ClosePage = require(ShareGame.Actions.ClosePage)

local PageInstance

local function Initialize()
	local settingsPageFactory = require(RobloxGui.Modules.Settings.SettingsPageFactory)
	local this = settingsPageFactory:CreateNewPage()

	this.TabHeader = nil -- no tab for this page
	this.PageListLayout.Parent = nil -- no list layout for this page
	this.ShouldShowBottomBar = false
	this.ShouldShowHubBar = false
	this.IsPageClipped = false

	this.Page.Name = "ShareGame"
	this.Page.Size = UDim2.new(1, 0, 1, 0)

	function this:ConnectToApp(shareGameApp)
		assert(this.HubRef ~= nil, "No SettingsHub set on ShareGame page")

		shareGameApp.store.changed:connect(function(state, prevState)
			local page = state.Page
			local wasOpen = prevState.Page.IsOpen

			-- Check if the user closed the page via the Roact app.
			if page.Route == Constants.PageRoute.SHARE_GAME and (wasOpen and not page.IsOpen) then
				-- Close the page to sync up Settings Hub with the state change
				this.HubRef:PopMenu(nil, true)
			end
		end)

		this.Displayed.Event:connect(function()
			local state = shareGameApp.store:getState()
			if not state.Page.IsOpen then
				-- Tell Roact app that the page was opened via Settings Hub
				shareGameApp.store:dispatch(OpenPage(Constants.PageRoute.SETTINGS_HUB))
			end
		end)

		this.Hidden.Event:connect(function()
			-- The user closed the page via the Settings Hub (instead of
			-- pressing back on the page), so we have to sync the app state up
			-- with the Settings Hub action.
			local state = shareGameApp.store:getState()
			if state.Page.IsOpen then
				shareGameApp.store:dispatch(ClosePage(Constants.PageRoute.SETTINGS_HUB))
			end
		end)
	end

	return this
end

PageInstance = Initialize()

return PageInstance