local FFlagPluginManagementWithContext = game:GetFastFlag("PluginManagementWithContext")
local Plugin = script.Parent.Parent.Parent

local Roact = require(Plugin.Packages.Roact)
local FitFrame = require(Plugin.Packages.FitFrame)
local ContextServices = require(Plugin.Packages.Framework).ContextServices
local withContext = ContextServices.withContext

local FitFrameHorizontal = FitFrame.FitFrameHorizontal
local FitTextLabel = FitFrame.FitTextLabel

local THEME_REFACTOR = require(Plugin.Packages.Framework).Util.RefactorFlags.THEME_REFACTOR

local IconWithText = Roact.PureComponent:extend("IconWithText")

IconWithText.defaultProps = {
    Image = "",
    imageSize = 16,
    imageTopPadding = 0,
    TextSize = 14,
}

function IconWithText:render()
    local theme
	if THEME_REFACTOR then
		theme = self.props.Stylizer
    else
        theme = self.props.Theme:get("Plugin")
    end

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

if FFlagPluginManagementWithContext then
	IconWithText = withContext({
		Stylizer = THEME_REFACTOR and ContextServices.Stylizer or nil,
		Theme = (not THEME_REFACTOR) and ContextServices.Theme or nil,
	})(IconWithText)
else
	ContextServices.mapToProps(IconWithText, {
		Stylizer = THEME_REFACTOR and ContextServices.Stylizer or nil,
		Theme = (not THEME_REFACTOR) and ContextServices.Theme or nil,
	})
end


return IconWithText
