-- Based on: src/internal/LuaApp/Modules/LuaApp/Components/Generic/AppCarousel.lua

local SocialTab = script:FindFirstAncestor("SocialTab")
local dependencies = require(SocialTab.dependencies)
local Roact = dependencies.Roact
local t = dependencies.t

local AppCarousel = Roact.PureComponent:extend("AppCarousel")

local isSocialTabAutoSizedCarouselAndTileEnabled2 = require(SocialTab.Flags.isSocialTabAutoSizedCarouselAndTileEnabled2)

AppCarousel.defaultProps = {
	carouselHeight = 100,
	canvasWidth = 100,
	items = {},
	onChangeCanvasPosition = function() end,
	onRefCallback = nil,
}

AppCarousel.validateProps = t.interface({
	carouselHeight = t.optional(t.number),
	canvasWidth = t.optional(t.number),
	items = t.optional(t.table),
	onChangeCanvasPosition = t.optional(t.callback),
})

function AppCarousel:render()
	local onRefCallback = self.props.onRefCallback or Roact.createRef()

	return Roact.createElement("ScrollingFrame", {
		AutomaticSize = isSocialTabAutoSizedCarouselAndTileEnabled2() and Enum.AutomaticSize.Y
			or Enum.AutomaticSize.None,
		Size = UDim2.new(1, 0, 0, self.props.carouselHeight),
		ScrollBarThickness = 0,
		BackgroundTransparency = 1,
		ClipsDescendants = false,
		CanvasSize = UDim2.new(0, self.props.canvasWidth, 0, self.props.carouselHeight),
		ScrollingDirection = Enum.ScrollingDirection.X,
		ElasticBehavior = Enum.ElasticBehavior.Always,
		[Roact.Change.CanvasPosition] = self.props.onChangeCanvasPosition,
		[Roact.Ref] = onRefCallback,
	}, self.props.items)
end

return AppCarousel
