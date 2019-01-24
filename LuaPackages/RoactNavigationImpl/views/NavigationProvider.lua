local CoreGui = game:GetService("CoreGui")
local Roact = require(CoreGui.RobloxGui.Modules.Common.Roact)
local AppNavigationContext = require(script.Parent.AppNavigationContext)

local NavigationProvider = Roact.Component:extend("NavigationProvider")

function NavigationProvider:init()
    self._context[AppNavigationContext] = {} -- empty context
end

function NavigationProvider:render()
    return Roact.oneChild(self.props[Roact.Children])
end

return NavigationProvider
