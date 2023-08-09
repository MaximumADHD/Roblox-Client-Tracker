--!strict
local CorePackages = game:GetService("CorePackages")
local LocalizationService = game:GetService("LocalizationService")

local Localization = require(CorePackages.Workspace.Packages.RobloxAppLocales).Localization
local LocalizationProvider = require(CorePackages.Workspace.Packages.Localization).LocalizationProvider
local DesignTokenProvider = require(CorePackages.Workspace.Packages.Style).DesignTokenProvider

local React = require(CorePackages.Packages.React)
local Rodux = require(CorePackages.Packages.Rodux)
local RoactRodux = require(CorePackages.RoactRodux)
local UIBlox = require(CorePackages.UIBlox)
local RobloxAppEnums = require(CorePackages.Workspace.Packages.RobloxAppEnums)
local DeviceTypeEnum = RobloxAppEnums.DeviceType

function OverscanWrapper(Overscan)
    return function(props)
        local appStyle = {
            themeName = "dark",
            fontName = "gotham",
            deviceType = DeviceTypeEnum.Console,
        }
        return React.createElement(RoactRodux.StoreProvider, {
            store = Rodux.Store.new(function(state) return state end, {}, {})
        }, {
            ThemeProvider = React.createElement(UIBlox.App.Style.AppStyleProvider, {
                style = appStyle,
            }, {
                DesignTokenProvider = React.createElement(DesignTokenProvider, {
                    tokenMappers = {}
                }, {
                    LocalizationProvider = React.createElement(LocalizationProvider, {
                        localization = Localization.new(LocalizationService.RobloxLocaleId) 
                    }, {
                        Overscan = React.createElement(Overscan, props),
                    })
                })
            }),
        })
    end
end

return OverscanWrapper
