--[[
	Wrapper page for Captures page in the SettingsHub

	The Captures page is implemented in Roact, so this page acts as a container for the Roact portal.

	Captures is the tab in the in-game menu that contains screenshots (and potentially video captures) taken in game.
--]]

local CoreGui = game:GetService("CoreGui")

local RobloxGui = CoreGui:WaitForChild("RobloxGui")
local Modules = RobloxGui.Modules 

local RobloxTranslator = require(Modules.RobloxTranslator)
local SettingsPageFactory = require(Modules.Settings.SettingsPageFactory)
local Theme = require(Modules.Settings.Theme)

local FFlagUseNotificationsLocalization do
	local flagSuccess, flagResult = pcall(function()
		return settings():GetFFlag('UseNotificationsLocalization')
	end)
	FFlagUseNotificationsLocalization = flagSuccess and flagResult
end

-- Initialize page
local this = SettingsPageFactory:CreateNewPage()

-- Tab Header customization
this.TabHeader.Name = "CapturesTab"

if Theme.UIBloxThemeEnabled then
	local icon = Theme.Images["icons/controls/screenshot"]
	this.TabHeader.TabLabel.Icon.Image = icon.Image
	this.TabHeader.TabLabel.Icon.ImageRectOffset = icon.ImageRectOffset
	this.TabHeader.TabLabel.Icon.ImageRectSize = icon.ImageRectSize

	this.TabHeader.TabLabel.Title.AutoLocalize = false
	this.TabHeader.TabLabel.Title.Text = RobloxTranslator:FormatByKey("Feature.SettingsHub.Label.Captures")
else
	this.TabHeader.Icon.Image = "rbxasset://textures/ui/Settings/MenuBarIcons/CaptureTab.png"

	if FFlagUseNotificationsLocalization then
		this.TabHeader.Title.AutoLocalize = false
		this.TabHeader.Title.Text = RobloxTranslator:FormatByKey("Feature.SettingsHub.Label.Captures")
	else
		this.TabHeader.Icon.Title.AutoLocalize = false
		this.TabHeader.Icon.Title.Text = RobloxTranslator:FormatByKey("Feature.SettingsHub.Label.Captures")
	end
end

this.PageListLayout.Parent = nil
this.ShouldShowBottomBar = true
this.ShouldShowHubBar = true

this.Page.Name = "Captures"
this.Page.Size = UDim2.fromScale(1, 0)

-- When Theme.UIBloxThemeEnabled is true there is a padding element added
-- This isn't needed for the Captures page, which has its own padding
local paddingInstance = this.Page:FindFirstChildWhichIsA("UIPadding")
if paddingInstance then
	paddingInstance:Destroy()
end

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
		screenshotsApp.openMenu()
		display(this, ...)
	end

	this.Hidden.Event:Connect(function()
		screenshotsApp.closeMenu()
	end)
end

return this
