--!nonstrict
local PlayersService = game:GetService("Players")
local CoreGui = game:GetService("CoreGui")
local CorePackages = game:GetService("CorePackages")

local RobloxGui = CoreGui:WaitForChild("RobloxGui")
local RobloxGuiModules = RobloxGui:WaitForChild("Modules")

local AnalyticsService = game:GetService("RbxAnalyticsService")
local EventIngestService = game:GetService("EventIngestService")
local Analytics = require(CorePackages.Workspace.Packages.Analytics).Analytics.new(AnalyticsService)
local EventIngest = require(CorePackages.Workspace.Packages.Analytics).AnalyticsReporters.EventIngest
local Roact = require(CorePackages.Packages.Roact)
local Settings = script:FindFirstAncestor("Settings")
local settingsPageFactory = require(RobloxGuiModules.Settings.SettingsPageFactory)
local Create = require(CorePackages.Workspace.Packages.AppCommonLib).Create
local ReportAbuseAnalytics = require(RobloxGui.Modules.AbuseReportMenu).ReportAbuseAnalytics
local BlockingAnalytics = require(Settings.Analytics.BlockingAnalytics)
local CoreScriptsRootProvider = require(CorePackages.Workspace.Packages.CoreScriptsRoactCommon).CoreScriptsRootProvider
local FocusNavigationUtils = require(CorePackages.Workspace.Packages.FocusNavigationUtils)
local FocusRoot = FocusNavigationUtils.FocusRoot
local FocusNavigableSurfaceIdentifierEnum = FocusNavigationUtils.FocusNavigableSurfaceIdentifierEnum

local GetFFlagReportAbuseThankYouPageSizeFix = require(RobloxGui.Modules.Flags.GetFFlagReportAbuseThankYouPageSizeFix)

local ReportConfirmationScreen = require(Settings.Components.ReportConfirmation.ReportConfirmationScreen)
local ReportConfirmationContainer = require(Settings.Components.ReportConfirmation.ReportConfirmationContainer)

local FFlagReportAbuseThankYouPageGamepadEnable = game:DefineFastFlag("ReportAbuseThankYouPageGamepadEnable", false)

local Chrome = RobloxGui.Modules.Chrome
local ChromeEnabled = require(Chrome.Enabled)()
local ChromeService = if ChromeEnabled then require(Chrome.Service) else nil :: never
local SharedFlags = require(CorePackages.Workspace.Packages.SharedFlags)
local FFlagEnableConsoleExpControls = SharedFlags.FFlagEnableConsoleExpControls

local handle
local unmount = function()
	if handle ~= nil then
		Roact.unmount(handle)
		handle = nil
	end
end

local localPlayer = PlayersService.LocalPlayer
while not localPlayer do
	PlayersService.ChildAdded:wait()
	localPlayer = PlayersService.LocalPlayer
end

local reportAbuseAnalytics = ReportAbuseAnalytics.new(
	EventIngest.new(EventIngestService),
	Analytics.Diag,
	ReportAbuseAnalytics.MenuContexts.LegacySentPage
)

local blockingAnalytics = BlockingAnalytics.new(localPlayer.UserId, { EventStream = AnalyticsService })

local function Initialize()
	local instance = settingsPageFactory:CreateNewPage()

	instance.TabHeader = nil
	instance.PageListLayout.Parent = nil
	instance.ShouldShowBottomBar = false
	instance.ShouldShowHubBar = false
	instance.IsPageClipped = false
	instance.Page.Name = "ReportSentPageV2"
	instance.Page.Size = UDim2.fromScale(1, 0)
	instance.Page.AutomaticSize = Enum.AutomaticSize.Y

	instance.Root = Create("Frame")({
		BackgroundTransparency = 1,
		Size = UDim2.fromScale(1, 1),
		Name = "ReportSentContents",
		Parent = instance.Page,
	})

	return instance
end

local ReportSentPageV2 = Initialize()

function ReportSentPageV2:UpdateMenu()
	local player = self.ReportedPlayer
	unmount()

	if self.settingsShowChangedSignal then
		self.settingsShowChangedSignal:disconnect()
		self.settingsShowChangedSignal = nil
	end

	self.settingsShowChangedSignal = self.HubRef.SettingsShowSignal:connect(function(isOpen)
		if not isOpen then
			self:HandleDone()
		end
	end)

	local SizeChangedProxy
	if GetFFlagReportAbuseThankYouPageSizeFix() then
		SizeChangedProxy = Instance.new("BindableEvent")
		local sizeChangeSignal = self.Root:GetPropertyChangedSignal("AbsoluteSize")
		self.SizeChangedSignal = sizeChangeSignal:Connect(function()
			SizeChangedProxy:Fire(self.Root.AbsoluteSize)
		end)
	end

	local props = {
		player = {
			UserId = player.UserId,
			Name = player.Name,
			DisplayName = player.DisplayName,
		},
		closeMenu = function()
			self:HandleDone()
		end,
		isVoiceReport = self.isVoiceReport,
		ZIndex = self.HubRef.Shield.ZIndex + 1,
		reportAbuseAnalytics = reportAbuseAnalytics,
		blockingAnalytics = blockingAnalytics,
		onSizeChanged = if GetFFlagReportAbuseThankYouPageSizeFix() then SizeChangedProxy.Event else nil,
	}

	-- ReportConfirmationScreen has its own CoreScriptsStyleProvider
	local reportConfirmationScreen = Roact.createElement(ReportConfirmationScreen, props)

	if FFlagReportAbuseThankYouPageGamepadEnable then
		reportConfirmationScreen = Roact.createElement(CoreScriptsRootProvider, {}, {
			FocusRoot = Roact.createElement(FocusRoot, {
				surfaceIdentifier = FocusNavigableSurfaceIdentifierEnum.RouterView,
				isIsolated = true,
				isAutoFocusRoot = true,
			}, {
				-- ReportConfirmationContainer does not have its own CoreScriptsStyleProvider,
				-- CoreScriptsRootProvider will provide the style context
				ThankYouScreenRoot = Roact.createElement(ReportConfirmationContainer, props),
			}),
		})

		if ChromeEnabled and FFlagEnableConsoleExpControls then
			ChromeService:setHideShortcutBar("ReportSentPageV2", true)
		end
	end

	handle = Roact.mount(reportConfirmationScreen, self.Root, "ReportSentPageV2")
end

function ReportSentPageV2:ShowReportedPlayer(player, isVoiceReport)
	self.ReportedPlayer = player
	self.isVoiceReport = isVoiceReport
	self:UpdateMenu()

	self.HubRef:SwitchToPage(ReportSentPageV2, true)
end

function ReportSentPageV2:HandleDone()
	if FFlagReportAbuseThankYouPageGamepadEnable and ChromeEnabled and FFlagEnableConsoleExpControls then
		ChromeService:setHideShortcutBar("ReportSentPageV2", false)
	end

	unmount()

	if self.settingsShowChangedSignal then
		self.settingsShowChangedSignal:disconnect()
		self.settingsShowChangedSignal = nil
	end

	if self.SizeChangedSignal then
		self.SizeChangedSignal:disconnect()
		self.SizeChangedSignal = nil
	end

	self.HubRef:SetVisibility(false, true)
end

return ReportSentPageV2
