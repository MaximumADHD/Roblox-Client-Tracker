-------------- SERVICES --------------
local CoreGui = game:GetService("CoreGui")
local CorePackages = game:GetService("CorePackages")
local RobloxGui = CoreGui:WaitForChild("RobloxGui")

local Roact = require(CorePackages.Packages.Roact)
local utility = require(RobloxGui.Modules.Settings.Utility)
local BuilderIcons = require(CorePackages.Packages.BuilderIcons)
local migrationLookup = BuilderIcons.Migration['uiblox']

local AbuseReportMenu = require(RobloxGui.Modules.AbuseReportMenu).AbuseReportMenu
local ReportAbuseAnalytics = require(RobloxGui.Modules.AbuseReportMenu).ReportAbuseAnalytics

local Chrome = RobloxGui.Modules.Chrome
local ChromeEnabled = require(Chrome.Enabled)()
local ChromeService = if ChromeEnabled then require(Chrome.Service) else nil :: never

local SharedFlags = require(CorePackages.Workspace.Packages.SharedFlags)
local FFlagInExperienceReportClosingBugfix = SharedFlags.FFlagInExperienceReportClosingBugfix

local FFlagHideShortcutsOnReportDropdown = require(RobloxGui.Modules.AbuseReportMenu.Flags.FFlagHideShortcutsOnReportDropdown)

------------ Variables -------------------
local PageInstance = nil

----------- CLASS DECLARATION --------------

local function Initialize()
	local settingsPageFactory = require(RobloxGui.Modules.Settings.SettingsPageFactory)
	local this = settingsPageFactory:CreateNewPage()

	this._onHiddenCallback = function() end
	this._onDisplayedCallback = function() end
	this._onSettingsHiddenCallback = function() end
	this._setNextPlayerToReportCallback = function() end
	this._onMenuWidthChange = function() end

	function this:SetHub(newHubRef)
		-- Keep a reference to the hub so we can open and close the whole menu from here
		this.HubRef = newHubRef

		this.HubRef.SettingsShowSignal:connect(function(isOpen)
			if not isOpen then
				this:onSettingsHidden()
			end
		end)

		return this
	end

	function this:showAlert(text, buttonLabel, callback)
		utility:ShowAlert(text, buttonLabel, this.HubRef, callback)
	end

	function this:showReportSentPage(reportedPlayer)
		this.HubRef.ReportSentPageV2:ShowReportedPlayer(reportedPlayer, true)
	end

	function this:HideMenu()
		this.HubRef:SetVisibility(false, true)
	end

	function this:ShowMenu()
		this.HubRef:SetVisibility(true, true, this, nil, "ScreenshotUnhide")
	end

	function this:onHidden()
		this._onHiddenCallback()
	end

	function this:onSettingsHidden()
		this._onSettingsHiddenCallback()
	end

	function this:onDisplayed()
		this._onDisplayedCallback()
	end

	function this:setNextPlayerToReport(player)
		this._setNextPlayerToReportCallback(player)
	end

	------ TAB CUSTOMIZATION -------
	this.TabHeader.Name = "ReportAbuseTab"
	local icon = migrationLookup["icons/actions/feedback"]
	this.TabHeader.TabLabel.Icon.Text = icon.name
	this.TabHeader.TabLabel.Icon.FontFace = BuilderIcons.Font[icon.variant]
	this.TabHeader.TabLabel.Title.Text = "Report"

	------ PAGE CUSTOMIZATION -------
	this.Page.Name = "ReportAbuseMenuNewContainerPage"
	this.ShouldShowBottomBar = true
	this.ShouldShowHubBar = true

	local abuseReportMenu = Roact.createElement(AbuseReportMenu, {
		hideReportTab = function()
			this:HideMenu()
		end,
		showReportTab = function()
			this:ShowMenu()
		end,
		registerOnReportTabHidden = function(onHiddenCallback)
			this._onHiddenCallback = onHiddenCallback
		end,
		registerOnReportTabDisplayed = function(onDisplayedCallback)
			this._onDisplayedCallback = onDisplayedCallback
		end,
		registerOnMenuWidthChange = function(callback)
			this._onMenuWidthChange = callback
		end,
		registerSetNextPlayerToReport = function(setNextPlayerToReportCallback)
			this._setNextPlayerToReportCallback = setNextPlayerToReportCallback
		end,
		registerOnSettingsHidden = function(onSettingsHiddenCallback)
			this._onSettingsHiddenCallback = onSettingsHiddenCallback
		end,
		showReportSentPage = function(reportedPlayer)
			this:showReportSentPage(reportedPlayer)
		end,
		onReportComplete = function(text)
			if FFlagInExperienceReportClosingBugfix and ChromeEnabled then
				ChromeService:setShortcutBar(nil)
			end
			this:showAlert(text, "Ok", function()
				-- callback function once we click "Ok" in the success screen
				this:HideMenu()
			end)
		end,
		onDropdownMenuOpenChange = if FFlagHideShortcutsOnReportDropdown and ChromeEnabled then function(isOpen)
			ChromeService:setHideShortcutBar("InExperienceReportDropdown", isOpen)
		end else nil,
	})
	Roact.mount(abuseReportMenu, this.Page, "AbuseReportMenu")

	this.Page.Size = UDim2.new(1, 0, 0, 0)
	this.Page.AutomaticSize = Enum.AutomaticSize.Y
	-- We are using changes in AbsolutePosition here to keep track of mobile orientation change
	-- we can also use AbsoluteSize, but since we are using AutomaticSize, the sizing
	-- changes are triggered way too often, causing errors. AbsolutePosition also changes
	-- on orientation change but only updated once. But it also is triggered on scrolling, but not as
	-- much as the auto sizing changes
	this.Page:GetPropertyChangedSignal("AbsolutePosition"):Connect(function()
		this._onMenuWidthChange(this.Page.AbsoluteSize.X)
	end)

	return this
end

----------- Public Facing API Additions --------------
PageInstance = Initialize()

PageInstance.Displayed.Event:connect(function()
	PageInstance:onDisplayed()
end)

PageInstance.Hidden.Event:connect(function()
	PageInstance:onHidden()
end)

function PageInstance:ReportPlayer(player, entryPoint)
	if player then
		ReportAbuseAnalytics:startAbuseReportSession(entryPoint)
		PageInstance:setNextPlayerToReport(player)

		if not PageInstance.HubRef:GetVisibility() then
			PageInstance.HubRef:SetVisibility(true, false, PageInstance)
		else
			PageInstance.HubRef:SwitchToPage(PageInstance, false, nil, nil, nil, {
				entrypoint = ReportAbuseAnalytics:getAbuseReportSessionEntryPoint(),
			})
		end
	end
end

return PageInstance
