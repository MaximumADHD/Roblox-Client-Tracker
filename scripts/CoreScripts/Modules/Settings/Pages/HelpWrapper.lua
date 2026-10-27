--[[
Wraps the old help page and the new refactored help page.
Flag flip will determine whether the old or new page is attached.
]]

-- Services
local CoreGui = game:GetService("CoreGui")
local CorePackages = game:GetService("CorePackages")
local RobloxGui = CoreGui:WaitForChild("RobloxGui")
local LocalizationService = game:GetService("LocalizationService")
local Modules = RobloxGui.Modules

-- Modules
local HelpPage = require(CorePackages.Workspace.Packages.HelpPage)
local HelpReactView = HelpPage.HelpReactView
local SettingsPageFactory = require(Modules.Settings.SettingsPageFactory)
local Localization = require(CorePackages.Workspace.Packages.InExperienceLocales).Localization
local locales = Localization.new(LocalizationService.RobloxLocaleId)
local LocalizationProvider = require(CorePackages.Workspace.Packages.Localization).LocalizationProvider
local React = require(CorePackages.Packages.React)
local ReactRoblox = require(CorePackages.Packages.ReactRoblox)
local Foundation = require(CorePackages.Packages.Foundation)
local FoundationProvider = Foundation.FoundationProvider
local IconName = Foundation.Enums.IconName
local IconVariant = Foundation.Enums.IconVariant
local BuilderIcons = require(CorePackages.Packages.BuilderIcons)
local migrationLookup = BuilderIcons.Migration['uiblox']
local Signals = require(CorePackages.Packages.Signals)
local SignalsReact = require(CorePackages.Packages.SignalsReact)

-- Flags
local FFlagRefactorHelpPage = HelpPage.Flags.FFlagRefactorHelpPage
local FFlagRenameHelpToControls = require(CorePackages.Workspace.Packages.SharedFlags).FFlagRenameHelpToControls

local Integrations = nil
local Constants = nil
local Utils = nil
if FFlagRefactorHelpPage then
	Integrations = require(Modules.Settings.Integrations)
	Utils = Integrations.Utils
	Constants = HelpPage.Constants
end

local tree: ReactRoblox.RootType? = nil
local getDisplayed, setDisplayed = Signals.createSignal(false)

local HelpConditionalView = function()
			local displayed = SignalsReact.useSignalState(getDisplayed)

            local Child = if displayed then React.createElement(FoundationProvider, {
					colorMode = Foundation.Enums.ColorMode.Dark,
					device = Utils.getDeviceType(),
				}, {
					Child = React.createElement(LocalizationProvider, {
						localization = locales,
					}, {
                    Root = React.createElement(HelpReactView)
				})
            }) else nil

			return Child
		end

	local function createReactTree(page: Instance)
		if tree then
			return
		end

		tree = ReactRoblox.createRoot(page)
		if tree then
			tree:render(React.createElement(HelpConditionalView))
		end
	end

local function createHelpPage()
	local HelpPage = SettingsPageFactory:CreateNewPage()

	------ TAB CUSTOMIZATION -------
	HelpPage.TabHeader.Name = Constants.HELP_PAGE.TAB_HEADER.NAME
	HelpPage.Page.Name = "Help"
	if FFlagRenameHelpToControls then
		HelpPage.TabHeader.TabLabel.Icon.Text = IconName.Controller
		HelpPage.TabHeader.TabLabel.Icon.FontFace = BuilderIcons.Font[IconVariant.Regular]
	else
		local icon = migrationLookup[Constants.HELP_PAGE.TAB_HEADER.ICON]
		HelpPage.TabHeader.TabLabel.Icon.Text = icon.name
		HelpPage.TabHeader.TabLabel.Icon.FontFace = BuilderIcons.Font[icon.variant]
	end
	HelpPage.TabHeader.TabLabel.Title.Text = locales:Format(Constants.HELP_PAGE.TAB_HEADER.TEXT)

	------ PAGE CUSTOMIZATION -------
	HelpPage.Page:ClearAllChildren()


	HelpPage.Displayed.Event:Connect(function()
		createReactTree(HelpPage.Page)
		setDisplayed(true)

		if HelpPage.HubRef.VersionContainer then
			HelpPage.HubRef.VersionContainer.Visible = true
		end
	end)

	HelpPage.Hidden.Event:Connect(function()
		setDisplayed(false)

		if HelpPage.HubRef.VersionContainer then
			HelpPage.HubRef.VersionContainer.Visible = false
		end
	end)

	HelpPage.Page.Size = UDim2.fromScale(1, 0)
	HelpPage.Page.AutomaticSize = Enum.AutomaticSize.Y

	return HelpPage
end

if FFlagRefactorHelpPage then
	return createHelpPage()
end
return require(Modules.Settings.Pages.Help)
