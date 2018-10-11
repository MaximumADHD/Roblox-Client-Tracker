local CorePackages = game:GetService("CorePackages")
local Roact = require(CorePackages.Roact)

local Immutable = require(script.Parent.Parent.Immutable)
local Constants = require(script.Parent.Parent.Constants)
local LINE_WIDTH = Constants.GeneralFormatting.LineWidth
local LINE_COLOR = Constants.GeneralFormatting.LineColor
local ARROW_WIDTH = Constants.GeneralFormatting.ArrowWidth
local CLOSE_ARROW = Constants.Image.RightArrow
local OPEN_ARROW = Constants.Image.DownArrow

local BannerButton = Roact.Component:extend("BannerButton")

function BannerButton:render()
	local children = self.props[Roact.Children] or {}

	local size = self.props.size
	local pos = self.props.pos
	local isExpanded = self.props.isExpanded
	local layoutOrder = self.props.layoutOrder

	local onButtonPress = self.props.onButtonPress

	local bannerElements = {
		BannerButtonArrow = Roact.createElement("ImageLabel", {
			Image = isExpanded and OPEN_ARROW or CLOSE_ARROW,
			BackgroundTransparency = 1,
			Size = UDim2.new(0, ARROW_WIDTH, 0, ARROW_WIDTH),
			Position = UDim2.new(0, 0, .5, -ARROW_WIDTH / 2),
		}),

		HorizontalLineTop = Roact.createElement("Frame", {
			Size = UDim2.new(1, 0, 0, LINE_WIDTH),
			BackgroundColor3 = LINE_COLOR,
			BorderSizePixel = 0,
		}),

		HorizontalLineBottom = Roact.createElement("Frame", {
			Size = UDim2.new(1, 0, 0, LINE_WIDTH),
			Position = UDim2.new(0, 0, 1, -LINE_WIDTH),
			BackgroundColor3 = LINE_COLOR,
			BorderSizePixel = 0,
		}),
	}

	return Roact.createElement("ImageButton", {
		Size = size,
		Position = pos,
		BackgroundTransparency = 1,
		LayoutOrder = layoutOrder,

		[Roact.Event.Activated] = onButtonPress,
	}, Immutable.JoinDictionaries(bannerElements, children))
end

return BannerButton