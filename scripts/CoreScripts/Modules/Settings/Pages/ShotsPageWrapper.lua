--[[
	Wrapper page for Shots page in the SettingsHub

	The Shots page is implemented in Roact, so this page acts as a container for the Roact portal.

	Shots is the tab in the in-game menu that contains screenshots taken in game.
--]]

local CoreGui = game:GetService("CoreGui")
local CorePackages = game:GetService("CorePackages")

local RobloxGui = CoreGui:WaitForChild("RobloxGui")
local Modules = RobloxGui.Modules 

local SettingsPageFactory = require(Modules.Settings.SettingsPageFactory)
local Theme = require(Modules.Settings.Theme)

local Screenshots = require(CorePackages.Workspace.Packages.Screenshots)

local Constants = Screenshots.Constants 
local ClosePage = Screenshots.Actions.ClosePage
local OpenPage = Screenshots.Actions.OpenPage

local FFlagUseNotificationsLocalization do
	local flagSuccess, flagResult = pcall(function()
		return settings():GetFFlag('UseNotificationsLocalization')
	end)
	FFlagUseNotificationsLocalization = flagSuccess and flagResult
end

-- Initialize page
local this = SettingsPageFactory:CreateNewPage()

-- Tab Header customization
this.TabHeader.Name = "ShotsTab"

local icon = Theme.Images["icons/controls/screenshot"]
if Theme.UIBloxThemeEnabled then
	this.TabHeader.TabLabel.Icon.Image = icon.Image
	this.TabHeader.TabLabel.Icon.ImageRectOffset = icon.ImageRectOffset
	this.TabHeader.TabLabel.Icon.ImageRectSize = icon.ImageRectSize
	
	this.TabHeader.TabLabel.Title.Text = "Shots"
else
	this.TabHeader.Icon.Image = icon.Image
	this.TabHeader.Icon.ImageRectOffset = icon.ImageRectOffset
	this.TabHeader.Icon.ImageRectSize = icon.ImageRectSize

	if FFlagUseNotificationsLocalization then
		this.TabHeader.Title.Text = "Shots"
	else
		this.TabHeader.Icon.Title.Text = "Shots"
	end
end

this.IsPageClipped = false
this.PageListLayout.Parent = nil
this.ShouldShowBottomBar = true
this.ShouldShowHubBar = true

this.Page.Name = "Shots"
this.Page.Size = UDim2.new(1, 0, 0, 0)

function this:ConnectHubToApp(settingsHub, screenshotsApp)
	this:SetHub(settingsHub)

	screenshotsApp.store.changed:connect(function(state, prevState)
		local screenshots = state.Screenshots
		local page = screenshots.Page
		local prevScreenshots = prevState.Screenshots
		local wasOpen = prevScreenshots.Page.IsOpen

		-- Check if the user closed the page via the Roact app.
		if page.Route == Constants.PageRoute.ShotsPage and (wasOpen and not page.IsOpen) then
			-- Close the page to sync up Settings Hub with the state change
			this.HubRef:PopMenu(nil, true)
		end
	end)

	this.Displayed.Event:Connect(function()
		local state = screenshotsApp.store:getState()
		local page = state.Screenshots.Page
		if not page.IsOpen then
			-- Tell Roact app that the page was opened via Settings Hub
			screenshotsApp.store:dispatch(OpenPage(Constants.PageRoute.SettingsHub))
		end
	end)

	this.Hidden.Event:Connect(function()
		-- The user closed the page via the Settings Hub (instead of
		-- pressing back on the page), so we have to sync the app state up
		-- with the Settings Hub action.
		local state = screenshotsApp.store:getState()
		local page = state.Screenshots.Page
		if page.IsOpen then
			screenshotsApp.store:dispatch(ClosePage(Constants.PageRoute.SettingsHub))
		end
	end)

	screenshotsApp.store:dispatch(ClosePage(Constants.PageRoute.SettingsHub))
end

return this
