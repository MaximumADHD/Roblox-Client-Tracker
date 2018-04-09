local Modules = game:GetService("CoreGui").RobloxGui.Modules

local Roact = require(Modules.Common.Roact)

local FitChildren = require(Modules.LuaApp.FitChildren)
local Immutable = require(Modules.Common.Immutable)

local CARD_MARGIN = 12
local ESTIMATED_HEIGHT = 150

local Carousel = Roact.PureComponent:extend("Carousel")

function Carousel:render()
	local layoutOrder = self.props.LayoutOrder
	local position = self.props.Position
	local children = self.props[Roact.Children] or {}

	local carouselItems = {
		Layout = Roact.createElement("UIListLayout", {
			SortOrder = Enum.SortOrder.LayoutOrder,
			FillDirection = Enum.FillDirection.Horizontal,
			Padding = UDim.new(0, CARD_MARGIN),
			HorizontalAlignment = Enum.HorizontalAlignment.Left,
		}),
	}

	return Roact.createElement(FitChildren.FitScrollingFrame, {
		Size = UDim2.new(1, 0, 0, ESTIMATED_HEIGHT),
		ScrollBarThickness = 0,
		Position = position,
		BackgroundTransparency = 1,
		ClipsDescendants = false, -- Needed to display drop shadows
		LayoutOrder = layoutOrder,
		fitFields = {
			CanvasSize = FitChildren.FitAxis.Both,
			Size = FitChildren.FitAxis.Height,
		},
	}, Immutable.JoinDictionaries(children, carouselItems))
end

return Carousel
