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
local React = require(CorePackages.Packages.React)
local ReactRoblox = require(CorePackages.Packages.ReactRoblox)
local Theme = require(RobloxGui.Modules.Settings.Theme)
local Foundation = require(CorePackages.Packages.Foundation)
local FoundationProvider = Foundation.FoundationProvider
local BuilderIcons = require(CorePackages.Packages.BuilderIcons)
local migrationLookup = BuilderIcons.Migration['uiblox']

-- Flags
local FFlagRefactorHelpPage = HelpPage.Flags.FFlagRefactorHelpPage
local FFlagBuilderIcons = require(CorePackages.Workspace.Packages.SharedFlags).UIBlox.FFlagUIBloxMigrateBuilderIcon

local Integrations = nil
local Constants = nil
local Utils = nil
if FFlagRefactorHelpPage then
	Integrations = require(Modules.Settings.Integrations)
	Utils = Integrations.Utils
    Constants = HelpPage.Constants
end

local function createHelpPage()
    local HelpPage = SettingsPageFactory:CreateNewPage()

    ------ TAB CUSTOMIZATION -------
    HelpPage.TabHeader.Name = Constants.HELP_PAGE.TAB_HEADER.NAME
    local icon
    if FFlagBuilderIcons then
        icon = migrationLookup[Constants.HELP_PAGE.TAB_HEADER.ICON]
        HelpPage.TabHeader.TabLabel.Icon.Text = icon.name
        HelpPage.TabHeader.TabLabel.Icon.FontFace = BuilderIcons.Font[icon.variant]
    else
        icon = Theme.Images[Constants.HELP_PAGE.TAB_HEADER.ICON]
        HelpPage.TabHeader.TabLabel.Icon.ImageRectOffset = icon.ImageRectOffset
        HelpPage.TabHeader.TabLabel.Icon.ImageRectSize = icon.ImageRectSize
        HelpPage.TabHeader.TabLabel.Icon.Image = icon.Image
    end
    HelpPage.TabHeader.TabLabel.Title.Text = locales:Format(Constants.HELP_PAGE.TAB_HEADER.TEXT)

    ------ PAGE CUSTOMIZATION -------
    HelpPage.Page:ClearAllChildren()

    local Help = React.createElement(FoundationProvider, {
        theme = Foundation.Enums.Theme.Dark,
        device = Utils.getDeviceType(),
    }, {
        Child = React.createElement(HelpReactView)
    })

    local tree = ReactRoblox.createRoot(HelpPage.Page)
    tree:render(Help)

    return HelpPage
end

if FFlagRefactorHelpPage then
    return createHelpPage()
end
return require(Modules.Settings.Pages.Help)