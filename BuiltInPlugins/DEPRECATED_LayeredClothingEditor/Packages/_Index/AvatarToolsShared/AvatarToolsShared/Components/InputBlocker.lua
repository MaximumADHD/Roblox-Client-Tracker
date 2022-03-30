--[[
	This component covers the editor when the user need to select item from workspace

	Required Props:
		string Text: text to display on the cover
		callback OnFocused: function to call when the user returns focus to the editor

	Optional Props:
		Stylizer Stylizer: A Stylizer ContextItem, which is provided via withContext.
]]

local Packages = script.Parent.Parent.Parent
local Roact = require(Packages.Roact)

local Framework = require(Packages.Framework)
local ContextServices = Framework.ContextServices
local withContext = ContextServices.withContext
local UI = Framework.UI
local CaptureFocus = UI.CaptureFocus
local TextLabel = UI.Decoration.TextLabel
local Pane = UI.Pane

local InputBlocker = Roact.PureComponent:extend("InputBlocker")

local Util = Framework.Util
local Typecheck = Util.Typecheck
Typecheck.wrap(InputBlocker, script)

function InputBlocker:render()
    local props = self.props
    local onFocused = props.OnFocused
    local theme = props.Stylizer
    return Roact.createElement(CaptureFocus, {
        OnFocusLost = onFocused,
    }, {
        Pane = Roact.createElement(Pane, {
            BackgroundColor3 = theme.BackgroundColor,
            BackgroundTransparency = theme.BackgroundTransparency,
        }, {
            Text = Roact.createElement(TextLabel, {
                Size = UDim2.new(1, 0, 1, 0),
                BackgroundTransparency = 1,
                TextSize = theme.TextSize,
                Text = props.Text,
                TextWrapped = true,
            }),
        }),
    })
end

InputBlocker = withContext({
    Stylizer = ContextServices.Stylizer,
})(InputBlocker)

return InputBlocker