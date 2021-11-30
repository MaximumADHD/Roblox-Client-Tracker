local Plugin = script.Parent.Parent.Parent.Parent

local Framework = require(Plugin.Packages.Framework)
local Roact = require(Plugin.Packages.Roact)

local ContextServices = Framework.ContextServices
local withContext = ContextServices.withContext
local Localization = ContextServices.Localization
local Stylizer = Framework.Style.Stylizer

local UI = Framework.UI
local Pane = UI.Pane

local Decoration = UI.Decoration
local TextLabel = Decoration.TextLabel

local SuccessWidget = Roact.PureComponent:extend("SuccessWidget")

function SuccessWidget:render()
	local props = self.props
    local localization = self.props.Localization

    local style = props.Stylizer
	local uploadStyle = style.UploadWidget

    return Roact.createElement(Pane, {
        LayoutOrder = 1,
        Layout = Enum.FillDirection.Vertical,
        VerticalAlignment = Enum.VerticalAlignment.Top,
        Size = UDim2.new(0, uploadStyle.Width, 0, uploadStyle.Height),
    }, {
        Title = Roact.createElement(TextLabel, {
            LayoutOrder = 1,
            Size = uploadStyle.TextLabelSize,
            Text = localization:getText("Upload", "Success"),
            TextSize = uploadStyle.TextSize,
            TextXAlignment = uploadStyle.TextAlignment,
            TextColor = uploadStyle.SuccessColor,
        }),
        Description = Roact.createElement(TextLabel, {
            LayoutOrder = 2,
            Size = uploadStyle.TextLabelSize,
            Text = localization:getText("Upload", "SuccessDescription"),
            TextSize = uploadStyle.SubtextSize,
            TextXAlignment = uploadStyle.TextAlignment,
        }),
    })
end

SuccessWidget = withContext({
	Localization = Localization,
	Stylizer = Stylizer,
})(SuccessWidget)

return SuccessWidget
