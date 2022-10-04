--[[
    The dialog to be rendered on error
]]
local Plugin = script.Parent.Parent.Parent
local Roact = require(Plugin.Packages.Roact)
local Framework = require(Plugin.Packages.Framework)

local ContextServices = Framework.ContextServices
local withContext = ContextServices.withContext

local UI = Framework.UI
local Button = UI.Button
local HoverArea = UI.HoverArea
local TextLabel = UI.Decoration.TextLabel
local Pane = UI.Pane

local ErrorDialog = Roact.PureComponent:extend("ErrorDialog")

function ErrorDialog:render()
    local props = self.props
    local theme = props.Stylizer
    local localization = props.Localization

    local okCallback = props.OkCallback
    local text = props.Text

    return Roact.createElement(Pane, {
        AutomaticSize = Enum.AutomaticSize.Y,
        Layout = Enum.FillDirection.Vertical,
        HorizontalAlignment = Enum.HorizontalAlignment.Center,
        BackgroundTransparency = 0,
        BackgroundColor3 = theme.MainBackground,
        Size = UDim2.new(1, 0, 1, 0),
        Spacing = 15,
    }, {
        Message = Roact.createElement(TextLabel, {
            TextXAlignment = Enum.TextXAlignment.Left,
            BackgroundTransparency = 1,
            Text = text,
            Size = UDim2.new(0, 400, 0, 0),
            AutomaticSize = Enum.AutomaticSize.Y,
            TextWrapped = true,
            TextColor3 = theme.ErrorText,
            LayoutOrder = 1
        }),
        Confirm = Roact.createElement(Button, {
            LayoutOrder = 2,
            OnClick = okCallback,
            Position = UDim2.new(0.5, 0.5, 0, 0),
            Size = UDim2.new(0, theme.ButtonWidth, 0, theme.ButtonHeight),
            Style = "PrimeTextButton",
            Text = localization:getText("UploadDialogContent", "ConfirmButton"),
        }, {
            Roact.createElement(HoverArea, {Cursor = "PointingHand"}),
        }),
    })
end

ErrorDialog = withContext({
    Stylizer = ContextServices.Stylizer,
    Localization = ContextServices.Localization,
})(ErrorDialog)

return ErrorDialog