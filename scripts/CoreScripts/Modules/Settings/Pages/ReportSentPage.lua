--!nonstrict
local CoreGui = game:GetService("CoreGui")
local PlayersService = game:GetService("Players")
local RbxAnalyticsService = game:GetService("RbxAnalyticsService")

local RobloxGui = CoreGui:WaitForChild("RobloxGui")
local RobloxGuiModules = RobloxGui:WaitForChild("Modules")

local BlockingUtility = require(RobloxGuiModules.BlockingUtility)
local settingsPageFactory = require(RobloxGuiModules.Settings.SettingsPageFactory)
local RobloxTranslator = require(RobloxGuiModules.RobloxTranslator)
local onBlockButtonActivated = require(script:FindFirstAncestor("Settings").onBlockButtonActivated)
local BlockingAnalytics = require(script:FindFirstAncestor("Settings").Analytics.BlockingAnalytics)
local Utility = require(RobloxGuiModules.Settings.Utility)
local Theme = require(RobloxGuiModules.Settings.Theme)

local localPlayer = PlayersService.LocalPlayer
while not localPlayer do
	PlayersService.ChildAdded:wait()
	localPlayer = PlayersService.LocalPlayer
end

local blockingAnalytics = BlockingAnalytics.new(
		localPlayer.UserId,
		{ EventStream = RbxAnalyticsService }
	)

local TITLE_TEXT_SIZE = Theme.textSize(36)
local BODY_TEXT_SIZE = Theme.textSize(24)
local ACTION_HEADER_TEXT_SIZE = Theme.textSize(16)
local TOP_SPACER_SIZE = 10
local BOTTOM_SPACER_SIZE = 20

local function Initialize()
	local instance = settingsPageFactory:CreateNewPage()

	instance.TabHeader = nil
	instance.PageListLayout.Parent = nil
	instance.ShouldShowBottomBar = false
	instance.ShouldShowHubBar = false
	instance.IsPageClipped = false
	instance.Page.Name = "ReportSentPage"
	instance.Page.Size = UDim2.fromScale(1, 0)
	instance.Page.AutomaticSize = Enum.AutomaticSize.Y

	instance.Root = Utility:Create("Frame")({
		BackgroundTransparency = 1,
		Size = UDim2.fromScale(1, 1),
		Name = "ReportSentContents",
		Parent = instance.Page,
	})

	instance.RootLayout = Utility:Create("UIListLayout")({
		Name = "RootLayout",
		FillDirection = Enum.FillDirection.Vertical,
		VerticalAlignment = Enum.VerticalAlignment.Center,
		HorizontalAlignment = Enum.HorizontalAlignment.Center,
		SortOrder = Enum.SortOrder.LayoutOrder,
		Parent = instance.Root,
	})

	local function createTextLabel(name, text, size, layoutOrder)
		return Utility:Create("TextLabel")({
			Name = name,
			LayoutOrder = layoutOrder,
			Size = UDim2.fromScale(1, 0),
			BackgroundTransparency = 1,
			AutomaticSize = Enum.AutomaticSize.Y,
			Text = text,
			TextSize = size,
			Font = Theme.font(Enum.Font.SourceSansBold, "Bold"),
			TextWrap = true,
			TextColor3 = Color3.fromRGB(255, 255, 255),
			TextXAlignment = Enum.TextXAlignment.Center,
			Parent = instance.Root,
		})
	end

	local function createButton(name, text, layoutOrder, clickFunc)
		local button, textLabel = Utility:MakeStyledButton(name, text, UDim2.new(1, 0, 0, 50), clickFunc)

		button.LayoutOrder = layoutOrder
		button.Parent = instance.Root
		return button, textLabel
	end

	local function createSpacer(size, layoutOrder)
		return Utility:Create("Frame")({
			LayoutOrder = layoutOrder,
			Name = "Spacer" .. tostring(layoutOrder),
			Size = UDim2.fromOffset(0, size),
			Parent = instance.Root,
		})
	end

	local titleText = RobloxTranslator:FormatByKey("Feature.SettingsHub.Heading.Report.ThanksForReport")
	instance.TitleLabel = createTextLabel("TitleLabel", titleText, TITLE_TEXT_SIZE, 0)

	local bodyText = RobloxTranslator:FormatByKey("Feature.SettingsHub.Label.Report.ReceivedReportBody")
	instance.BodyLabel = createTextLabel("BodyLabel", bodyText, BODY_TEXT_SIZE, 1)

	instance.TopSpacer = createSpacer(TOP_SPACER_SIZE, 2)

	local actionHeaderText = RobloxTranslator:FormatByKey("Feature.SettingsHub.Label.Report.OtherActionsHeader")
	instance.ActionHeader = createTextLabel("ActionHeader", actionHeaderText, ACTION_HEADER_TEXT_SIZE, 3)
    instance.ActionHeader.TextXAlignment = Enum.TextXAlignment.Left

	local blockButtonText = RobloxTranslator:FormatByKey("Feature.SettingsHub.Action.Block")
	instance.BlockButton, instance.BlockLabel = createButton("BlockButton", blockButtonText, 4, function()
		instance:HandleBlock()
	end)

	instance.MiddleSpacer = createSpacer(BOTTOM_SPACER_SIZE, 6)

	local doneButtonText = RobloxTranslator:FormatByKey("Feature.SettingsHub.Action.Report.Done")
	instance.DoneButton = createButton("DoneButton", doneButtonText, 7, function()
		instance:HandleDone()
	end)

	return instance
end

local ReportSentPage = Initialize()

function ReportSentPage:UpdateActions()
	if self.ReportedPlayer then
		self.TopSpacer.Visible = true
		self.ActionHeader.Visible = true

		local isBlocked = BlockingUtility:IsPlayerBlockedByUserId(self.ReportedPlayer.UserId)
		self.BlockButton.Visible = not isBlocked

		local displayName = self.ReportedPlayer.DisplayName
		local name = self.ReportedPlayer.Name
		local blockText = RobloxTranslator:FormatByKey("Feature.SettingsHub.Label.Report.BlockDisplayName", {
		    DISPLAY_NAME = displayName,
		    RBX_NAME = name,
		})
		self.BlockLabel.Text = blockText
	else
		self.TopSpacer.Visible = false
		self.ActionHeader.Visible = false
		self.BlockButton.Visible = false
	end
end

function ReportSentPage:ShowReportedPlayer(player)
	self.ReportedPlayer = player
	self:UpdateActions()

	self.HubRef:SwitchToPage(ReportSentPage, true)
end

function ReportSentPage:HandleBlock()
	if self.ReportedPlayer then
		onBlockButtonActivated(self.ReportedPlayer, blockingAnalytics)
	end
	self:HandleDone()
end

function ReportSentPage:HandleDone()
    self.HubRef:SetVisibility(false, true)
end

return ReportSentPage
