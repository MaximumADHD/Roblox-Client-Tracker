-- dummy page for traversal history, for use with traversal history side sheet integration

local CoreGui = game:GetService("CoreGui")

local RobloxGui = CoreGui:WaitForChild("RobloxGui")
local Modules = RobloxGui.Modules

local SettingsPageFactory = require(Modules.Settings.SettingsPageFactory)

local function createTraversalHistoryWrapper()
	local this = SettingsPageFactory:CreateNewPage()
	this.Page.Name = "TraversalHistoryWrapper"
	this.Page:ClearAllChildren()

	this.TabHeader = nil
	this.ShouldShowBottomBar = false
	this.ShouldShowHubBar = false

	return this
end

return createTraversalHistoryWrapper
