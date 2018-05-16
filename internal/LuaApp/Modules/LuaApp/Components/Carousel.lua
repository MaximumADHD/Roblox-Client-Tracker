local Modules = game:GetService("CoreGui").RobloxGui.Modules

local Roact = require(Modules.Common.Roact)

local FitChildren = require(Modules.LuaApp.FitChildren)
local Immutable = require(Modules.Common.Immutable)

local ESTIMATED_HEIGHT = 150 -- TODO: Remove with quantum gui

local function Carousel(props)
	local layoutOrder = props.LayoutOrder
	local children = props[Roact.Children] or {}
	local childPadding = props.childPadding

	local carouselItems = {
		Layout = Roact.createElement("UIListLayout", {
			SortOrder = Enum.SortOrder.LayoutOrder,
			FillDirection = Enum.FillDirection.Horizontal,
			Padding = UDim.new(0, childPadding),
			HorizontalAlignment = Enum.HorizontalAlignment.Left,
		}),
	}

	return Roact.createElement(FitChildren.FitScrollingFrame, {
		Size = UDim2.new(1, 0, 0, ESTIMATED_HEIGHT),
		ScrollBarThickness = 0,
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