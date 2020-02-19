local Plugin = script.Parent.Parent.Parent

local Roact = require(Plugin.Packages.Roact)
local FitFrame = require(Plugin.Packages.FitFrame)
local ContextServices = require(Plugin.Packages.Framework.ContextServices)

local FitFrameHorizontal = FitFrame.FitFrameHorizontal
local FitTextLabel = FitFrame.FitTextLabel

local IconWithText = Roact.PureComponent:extend("IconWithText")

IconWithText.defaultProps = {
    Image = "",
    imageSize = 16,
    imageTopPadding = 0,
    TextSize = 14,
}

function IconWithText:render()
    local theme = self.props.Theme:get("Plugin")

    local image = self.props.Image
    local imageSize = self.props.imageSize
    local imageTopPadding = self.props.imageTopPadding
    local layoutOrder = self.props.LayoutOrder
    local text = self.props.Text
    local textColor = self.props.TextColor3 or theme.TextColor
    local textSize = self.props.TextSize

    return Roact.createElement(FitFrameHorizontal, {
        BackgroundTransparency = 1,
        FillDirection = Enum.FillDirection.Horizontal,
        height = UDim.new(0, textSize),
        LayoutOrder = layoutOrder,
        VerticalAlignment = Enum.VerticalAlignment.Center,
    }, {
		IconContainer = Roact.createElement("Frame", {
            BackgroundTransparency = 1,
            LayoutOrder = 0,
			Size = UDim2.new(0, imageSize, 0, imageSize),
        }, {
			Padding = Roact.createElement("UIPadding", {
				PaddingTop = UDim.new(0, imageTopPadding),
            }),

            Icon = Roact.createElement("ImageLabel", {
                BackgroundTransparency = 1,
                Image = image,
                ImageColor3 = textColor,
                LayoutOrder = 0,
                Size = UDim2.new(0, imageSize, 0, imageSize),
            }),
        }),

		CountText = Roact.createElement(FitTextLabel, {
			BackgroundTransparency = 1,
            LayoutOrder = 1,
            Font = theme.Font,
			Text = text,
            TextColor3 = textColor,
			TextSize = textSize,
			width = FitTextLabel.Width.FitToText,
		}),
    })
end

ContextServices.mapToProps(IconWithText, {
	Theme = ContextServices.Theme,
})

return IconWithText