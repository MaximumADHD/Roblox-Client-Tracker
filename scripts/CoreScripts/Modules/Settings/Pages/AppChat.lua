local CoreGui = game:GetService("CoreGui")
local RobloxGui = CoreGui:WaitForChild("RobloxGui")

local PageInstance = nil

local function Initialize()
	local settingsPageFactory = require(RobloxGui.Modules.Settings.SettingsPageFactory)
	local this = settingsPageFactory:CreateNewPage()

	this.TabHeader = nil

	this.ShouldShowBottomBar = false
	this.ShouldShowHubBar = false
	this.IsPageClipped = true

	this.Page.Name = "AppChatPage"
	this.Page.Size = UDim2.new(1, 0, 0, 0)
	this.Page.AutomaticSize = Enum.AutomaticSize.Y

	return this
end

PageInstance = Initialize()


return PageInstance
