-------------- SERVICES --------------
local CoreGui = game:GetService("CoreGui")
local CorePackages = game:GetService("CorePackages")
local RobloxGui = CoreGui:WaitForChild("RobloxGui")

local Roact = require(CorePackages.Roact)

local AbuseReportMenu = require(CorePackages.Workspace.Packages.AbuseReportMenu).AbuseReportMenu

------------ Variables -------------------
local PageInstance = nil
local Theme = require(RobloxGui.Modules.Settings.Theme)

local success, result = pcall(function()
	return settings():GetFFlag("UseNotificationsLocalization")
end)
local FFlagUseNotificationsLocalization = success and result

----------- CLASS DECLARATION --------------

local function Initialize()
	local settingsPageFactory = require(RobloxGui.Modules.Settings.SettingsPageFactory)
	local this = settingsPageFactory:CreateNewPage()

	------ TAB CUSTOMIZATION -------
	this.TabHeader.Name = "ReportAbuseTab"
	if Theme.UIBloxThemeEnabled then
		local icon = Theme.Images["icons/actions/feedback"]
		this.TabHeader.TabLabel.Icon.ImageRectOffset = icon.ImageRectOffset
		this.TabHeader.TabLabel.Icon.ImageRectSize = icon.ImageRectSize
		this.TabHeader.TabLabel.Icon.Image = icon.Image

		this.TabHeader.TabLabel.Title.Text = "Report"
	else
		this.TabHeader.Icon.Image = "rbxasset://textures/ui/Settings/MenuBarIcons/ReportAbuseTab.png"
		if FFlagUseNotificationsLocalization then
			this.TabHeader.Title.Text = "Report"
		else
			this.TabHeader.Icon.Title.Text = "Report"
		end
	end

	------ PAGE CUSTOMIZATION -------
	this.Page.Name = "AbuseReportMenuNewContainerPage"
	this.ShouldShowBottomBar = true
	this.ShouldShowHubBar = true

	local abuseReportMenu = Roact.createElement(AbuseReportMenu, {})
	Roact.mount(abuseReportMenu, this.Page, "AbuseReportMenu")

	this.Page.Size = UDim2.new(1, 0, 1, 0)

	return this
end

----------- Public Facing API Additions --------------
PageInstance = Initialize()

return PageInstance
