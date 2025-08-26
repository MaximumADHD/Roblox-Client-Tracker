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
local FocusNavigationUtils = require(CorePackages.Workspace.Packages.FocusNavigationUtils)
local FocusRoot = FocusNavigationUtils.FocusRoot
local FocusNavigableSurfaceIdentifierEnum = FocusNavigationUtils.FocusNavigableSurfaceIdentifierEnum
local CoreScriptsRootProvider = require(CorePackages.Workspace.Packages.CoreScriptsRoactCommon).CoreScriptsRootProvider
local useRegistryEntry = FocusNavigationUtils.FocusNavigableSurfaceRegistry.useRegistryEntry

-- Flags
local FFlagRefactorHelpPage = HelpPage.Flags.FFlagRefactorHelpPage
local FFlagHelpPageTouch = HelpPage.Flags.FFlagHelpPageTouch
local FFlagBuilderIcons = require(CorePackages.Workspace.Packages.SharedFlags).UIBlox.FFlagUIBloxMigrateBuilderIcon
local FFlagHelpPageShowVersion = game:DefineFastFlag("HelpPageShowVersion", false)
local FFlagHelpPageRemoveNavProvider = game:DefineFastFlag("HelpPageRemoveNavProvider", false)

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

local function HelpFocusRoot(props)
    local centralOverlay = useRegistryEntry(FocusNavigableSurfaceIdentifierEnum.CentralOverlay)
    local shouldAutoFocus = centralOverlay == nil

    return React.createElement(FocusRoot, {
        surfaceIdentifier = FocusNavigableSurfaceIdentifierEnum.Auxiliary,
        isAutoFocusRoot = shouldAutoFocus,
    }, props.children)
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
                    FocusRoot = if FFlagHelpPageRemoveNavProvider then React.createElement(HelpReactView)
                    else React.createElement(HelpFocusRoot, {}, {
                        Child = React.createElement(HelpReactView)
                    })
                })
            }) else nil

            local Help: React.React_Node?
            if displayed and not FFlagHelpPageRemoveNavProvider then
                Help = React.createElement(CoreScriptsRootProvider, {}, {
                    Child = Child
                })
            else
                Help = Child
            end

            return Help
        end

        tree = ReactRoblox.createRoot(HelpPage.Page)
        if tree then
            tree:render(React.createElement(HelpConditionalView))
        end
    end

    HelpPage.Displayed.Event:Connect(function()
        createReactTree()
        setDisplayed(true)

        if FFlagHelpPageShowVersion then
            if HelpPage.HubRef.VersionContainer then
                HelpPage.HubRef.VersionContainer.Visible = true
            end
        end
    end)

    HelpPage.Hidden.Event:Connect(function()
        setDisplayed(false)
        
        if FFlagHelpPageShowVersion then
            if HelpPage.HubRef.VersionContainer then
                HelpPage.HubRef.VersionContainer.Visible = false
            end
        end
    end)

    if FFlagHelpPageTouch then
        HelpPage.Page.Size = UDim2.fromScale(1, 0)
        HelpPage.Page.AutomaticSize = Enum.AutomaticSize.Y    
    end

    return HelpPage
end

if FFlagRefactorHelpPage then
    return createHelpPage()
end
return require(Modules.Settings.Pages.Help)