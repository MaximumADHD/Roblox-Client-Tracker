local InfiniteScroller = script:FindFirstAncestor("infinite-scroller")
local Root = InfiniteScroller.Parent
local Roact = require(Root.Roact)

local ComplexThing = require(script.Parent.ComplexThing)
local Story = Roact.PureComponent:extend("Story")

Story.defaultProps = {
	numThings = 5,
}

function Story:init()
	self.ref = Roact.createRef()

	self.manyComplexThings = {
		layout = Roact.createElement("UIListLayout", {

		})
	}
	local function makeComplexThing()
		return Roact.createElement(ComplexThing, {
			Size = UDim2.fromOffset(256, 256),
			nestedLayer = 5,
		})
	end
	for _ = 1, self.props.numThings do
		table.insert(self.manyComplexThings, makeComplexThing())
	end
end

function Story:render()
	return Roact.createElement("ScrollingFrame", {
		Position = UDim2.new(0, 0, 0, 300),
		ClipsDescendants = false,
		Size = UDim2.fromOffset(256, 256),
		CanvasSize = UDim2.new(1, 0, 0, self.props.numThings * 256),
		ScrollingDirection = Enum.ScrollingDirection.Y,
	}, self.manyComplexThings)
end

return Story
