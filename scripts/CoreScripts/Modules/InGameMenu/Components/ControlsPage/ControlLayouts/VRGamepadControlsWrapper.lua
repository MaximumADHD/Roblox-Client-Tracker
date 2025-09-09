--!nonstrict
local CoreGui = game:GetService("CoreGui")
local CorePackages = game:GetService("CorePackages")
local LocalizationService = game:GetService("LocalizationService")
local RobloxGui = CoreGui:WaitForChild("RobloxGui")
local Modules = RobloxGui.Modules

-- Modules
local VRGamepadControls = script.Parent.VRGamepadControls
local HelpPage = require(CorePackages.Workspace.Packages.HelpPage)
local Foundation = require(CorePackages.Packages.Foundation)
local FoundationProvider = Foundation.FoundationProvider
local LocalizationProvider = require(CorePackages.Workspace.Packages.Localization).LocalizationProvider
local React = require(CorePackages.Packages.React)
local Localization = require(CorePackages.Workspace.Packages.InExperienceLocales).Localization
local locales = Localization.new(LocalizationService.RobloxLocaleId)
local ControlLayoutContainer = require(script.Parent.Parent.ControlLayoutContainer)

local HelpReactView = HelpPage.HelpReactView
local FFlagHelpPageMountVR = HelpPage.Flags.FFlagHelpPageMountVR

local Integrations = nil
local Utils = nil
if FFlagHelpPageMountVR then
    Integrations = require(Modules.Settings.Integrations)
    Utils = Integrations.Utils
end

if FFlagHelpPageMountVR then
    local function VRGamepadControlsWrapper()
        return React.createElement(ControlLayoutContainer, {
            titleText = "CoreScripts.InGameMenu.Controls.VrControllerTitle",
        }, {
            Inner = React.createElement(LocalizationProvider, {
                localization = locales,
            }, {
                FoundationProvider = React.createElement(FoundationProvider, {
                    theme = Foundation.Enums.Theme.Dark,
                    device = Utils.getDeviceType(),
                }, {
                    HelpReactView = React.createElement(HelpReactView)
                })
            })
        })
    end

    return React.memo(VRGamepadControlsWrapper)
else
    return require(VRGamepadControls)
end