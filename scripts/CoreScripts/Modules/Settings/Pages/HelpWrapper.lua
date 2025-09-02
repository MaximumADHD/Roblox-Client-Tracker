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
local Theme = require(RobloxGui.Modules.Settings.Theme)
local Foundation = require(CorePackages.Packages.Foundation)
local FoundationProvider = Foundation.FoundationProvider
local BuilderIcons = require(CorePackages.Packages.BuilderIcons)
local migrationLookup = BuilderIcons.Migration['uiblox']
local Signals = require(CorePackages.Packages.Signals)
local SignalsReact = require(CorePackages.Packages.SignalsReact)

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

local tree: ReactRoblox.RootType? = nil
local getDisplayed, setDisplayed = Signals.createSignal(false)

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

    local function createReactTree()
        if tree then
            return
        end

        local HelpConditionalView = function()
            local displayed = SignalsReact.useSignalState(getDisplayed)

            local Child = if displayed then React.createElement(FoundationProvider, {
                theme = Foundation.Enums.Theme.Dark,
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

        tree = ReactRoblox.createRoot(HelpPage.Page)
        if tree then
            tree:render(React.createElement(HelpConditionalView))
        end
    end

    HelpPage.Displayed.Event:Connect(function()
        createReactTree()
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
