local CorePackages = game:GetService("CorePackages")
local CoreGui = game:GetService("CoreGui")
local RobloxGui = CoreGui:WaitForChild("RobloxGui")
local CoreScriptsRootProvider = require(RobloxGui.Modules.Common.CoreScriptsRootProvider)
local CoreScriptsGamepadDisconnectListener = require(RobloxGui.Modules.GamepadDisconnect.CoreScriptsGamepadDisconnectListener)
local React = require(CorePackages.Packages.React)
local Roact = require(CorePackages.Packages.Roact)

local RobloxAppEnums = require(CorePackages.Workspace.Packages.RobloxAppEnums)
local DeviceTypeEnum = RobloxAppEnums.DeviceType

-- Mount this at the root to sit persistently while in-experience.
local function CoreScriptsGlobalEffects(props)
    local styleOverride = {
        deviceType = DeviceTypeEnum.Console,
    }

    return React.createElement(CoreScriptsRootProvider, {
        styleOverride = styleOverride,
    }, {
        CoreScriptsGamepadDisconnectListener = React.createElement(CoreScriptsGamepadDisconnectListener)
    })
end

Roact.mount(React.createElement(CoreScriptsGlobalEffects), CoreGui, "CoreScriptsGlobalEffects")
