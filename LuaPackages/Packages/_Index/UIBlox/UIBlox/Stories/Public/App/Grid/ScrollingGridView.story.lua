local Packages = script.Parent.Parent.Parent.Parent.Parent.Parent
local Roact = require(Packages.Roact)

local App = Packages.UIBlox.App

local ScrollingGridView = require(App.Grid.ScrollingGridView)
local GridMetrics = require(App.Grid.GridMetrics)

local ScrollingGridViewStory = Roact.PureComponent:extend("ScrollingGridViewStory")

local RATIO = 16 / 9
local HORIZONTAL_PADDING = 12
local VERTICAL_PADDING = 24

local itemsList = {
	1,
	2,
	3,
	4,
	5,
	6,
	7,
	8,
	9,
}

local renderItem = function(i)
	return Roact.createElement("TextLabel", {
		Text = i,
		LayoutOrder = i,
		Size = UDim2.fromScale(1, 1),
	})
end

function ScrollingGridViewStory:init()
	self.state = {
		width = 1,
	}

	self.onResize = function(rbx)
		local contentWidth = rbx.AbsoluteSize.X
		local metrics = GridMetrics.getLargeMetrics(contentWidth, HORIZONTAL_PADDING * 2)
		self:setState({
			width = metrics.itemWidth,
		})
	end
end

function ScrollingGridViewStory:render(props)
	local width = self.state.width
	local height = width / RATIO

	return Roact.createElement("Frame", {
		Size = UDim2.fromScale(1, 1),
		BackgroundTransparency = 1,
		[Roact.Change.AbsoluteSize] = self.onResize,
	}, {
		ScrollView = Roact.createElement(ScrollingGridView, {
			size = UDim2.fromScale(1, 1),
			items = itemsList,
			renderItem = renderItem,
			itemSize = Vector2.new(width, height),
			itemPadding = Vector2.new(HORIZONTAL_PADDING, VERTICAL_PADDING),
			innerUIPadding = {
				PaddingTop = UDim.new(0, VERTICAL_PADDING),
				PaddingBottom = UDim.new(0, VERTICAL_PADDING),
				PaddingLeft = UDim.new(0, HORIZONTAL_PADDING),
				PaddingRight = UDim.new(0, HORIZONTAL_PADDING),
			},
		}),
	})
end

return ScrollingGridViewStory
