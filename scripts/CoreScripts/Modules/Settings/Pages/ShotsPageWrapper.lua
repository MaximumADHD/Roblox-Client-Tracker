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

this.PageListLayout.Parent = nil
this.ShouldShowBottomBar = true
this.ShouldShowHubBar = true

this.Page.Name = "Shots"
this.Page.Size = UDim2.fromScale(1, 0)

local SETTINGS_HUB_PADDING = 20

function this:ConnectHubToApp(settingsHub, pageViewClipper, screenshotsApp)
	this:SetHub(settingsHub)

	local availableSizeY = pageViewClipper.AbsoluteSize.Y - SETTINGS_HUB_PADDING
	this.Page.Size = UDim2.new(1, 0, 0, availableSizeY)
	pageViewClipper:GetPropertyChangedSignal("AbsoluteSize"):Connect(function()
		availableSizeY = pageViewClipper.AbsoluteSize.Y - SETTINGS_HUB_PADDING
		this.Page.Size = UDim2.new(1, 0, 0, availableSizeY)
	end)

	local display = this.Display
	function this:Display(...)
		screenshotsApp.openMenu(Constants.PageRoute.SettingsHub)
		display(this, ...)
	end

	this.Hidden.Event:Connect(function()
		screenshotsApp.closeMenu()
	end)
end

return this
