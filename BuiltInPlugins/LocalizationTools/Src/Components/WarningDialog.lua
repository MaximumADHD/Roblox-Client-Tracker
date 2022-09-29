--[[
    The dialog to be rendered on a warning
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

local WarningDialog = Roact.PureComponent:extend("WarningDialog")

function WarningDialog:render()
    local props = self.props
    local theme = props.Stylizer
    local localization = props.Localization

    local cancelCallback = props.CancelCallback
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
            TextColor3 = theme.WarningText,
            LayoutOrder = 1
        }),
        Buttons = Roact.createElement(Pane, {
            AutomaticSize = Enum.AutomaticSize.Y,
            Layout = Enum.FillDirection.Horizontal,
            HorizontalAlignment = Enum.HorizontalAlignment.Center,
            BackgroundTransparency = 0,
            BackgroundColor3 = theme.MainBackground,
            Size = UDim2.new(1, 0, 0, 0),
            Spacing = 40,
            LayoutOrder = 2
        }, {
            Confirm = Roact.createElement(Button, {
                LayoutOrder = 1,
                OnClick = okCallback,
                Size = UDim2.new(0, theme.ButtonWidth, 0, theme.ButtonHeight),
                Style = "PrimeTextButton",
                Text = localization:getText("UploadDialogContent", "ConfirmButton"),
            }, {
                Roact.createElement(HoverArea, {Cursor = "PointingHand"}),
            }),
            Cancel = Roact.createElement(Button, {
                LayoutOrder = 2,
                OnClick = cancelCallback,
                Size = UDim2.new(0, theme.ButtonWidth, 0, theme.ButtonHeight),
                Style = "TextButton",
                Text = localization:getText("UploadDialogContent", "CancelButton"),
            }, {
                Roact.createElement(HoverArea, {Cursor = "PointingHand"}),
            })
        })
    })
end

WarningDialog = withContext({
    Stylizer = ContextServices.Stylizer,
    Localization = ContextServices.Localization,
})(WarningDialog)

return WarningDialog