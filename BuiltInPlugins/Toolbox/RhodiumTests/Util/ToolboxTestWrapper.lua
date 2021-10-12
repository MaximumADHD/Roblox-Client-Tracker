local FFlagToolboxAssetGridRefactor = game:GetFastFlag("ToolboxAssetGridRefactor")

local Plugin = script.Parent.Parent.Parent
local Libs = Plugin.Libs
local Roact = require(Libs.Roact)

local Util = Plugin.Core.Util
local makeTheme = require(Util.makeTheme)

local Toolbox = require(Plugin.Core.Components.Toolbox)
local Suggestion = require(Plugin.Core.Types.Suggestion)
local Background = require(Plugin.Core.Types.Background)

local ToolboxTestWrapper = Roact.PureComponent:extend("ToolboxTestWrapper")

function ToolboxTestWrapper:init()
    self.state = {
        theme = makeTheme(),
    }
end


function ToolboxTestWrapper:render(props)
    local _theme = self.state.theme

    return Roact.createElement(Toolbox, {
        backgrounds = Background.BACKGROUNDS,
        suggestions = Suggestion.SUGGESTIONS,
        Size = FFlagToolboxAssetGridRefactor and UDim2.new(0, 400, 0, 400) or nil,
    })
end


return ToolboxTestWrapper