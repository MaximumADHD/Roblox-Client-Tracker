--[[
	A scrolling frame with a colored background, providing a consistent look
	with the native Studio Start Page.

	Required Props:
		Theme Theme: the theme supplied from mapToProps()

	Optional Props:
		Style Style: a style table supplied from props and theme:getStyle()
		callback OnScrollUpdate: A callback function that will update the index change.
		UDim2 Position: The position of the scrolling frame.
		UDim2 Size: The size of the scrolling frame.
		integer LayoutOrder: The order this component will display in a UILayout.
		boolean AutoSizeCanvas: When true, will automatically resize the canvas size of the scrolling frame.
		integer ElementPadding: The padding between children when AutoSizeCanvas is true.

	Style Values:
		string BottomImage: The image that appears in the bottom 3rd of the scrollbar
		string MidImage: The image that appears in the middle 3rd of the scrollbar
		string TopImage: The image that appears in the top 3rd of the scrollbar
		UDim2 CanvasSize: The size of the scrolling frame's canvas.
		integer ScrollBarPadding: The padding which appears on either side of the scrollbar.
		integer ScrollBarThickness: The horizontal width of the scrollbar.
		boolean ScrollingEnabled: Whether scrolling in this frame will change the CanvasPosition.
		integer ZIndex: The draw index of the frame.
]]

local Framework = script.Parent.Parent
local Packages = Framework.packages -- TO DO: once dependencies are properly set up, move this to Framework parent
local Roact = require(Framework.Parent.Roact)
local Cryo = require(Packages.Cryo)

local ContextServices = require(Framework.ContextServices)
local Container = require(script.Parent.Container)
local Util = require(Framework.Util)
local prioritize = Util.prioritize
local Typecheck = Util.Typecheck


local ScrollingFrame = Roact.PureComponent:extend("ScrollingFrame")
Typecheck.wrap(ScrollingFrame, script)

function ScrollingFrame:init()
	self.scrollingRef = Roact.createRef()
	self.layoutRef = Roact.createRef()

	self.onScroll = function(rbx)
		if self.props.OnScrollUpdate then
			self.props.OnScrollUpdate(rbx.CanvasPosition)
		end
	end

	self.updateCanvasSize = function(rbx)
		if self.scrollingRef.current and self.layoutRef.current then
			local contentSize = self.layoutRef.current.AbsoluteContentSize
			self.scrollingRef.current.CanvasSize = UDim2.new(0, contentSize.X, 0, contentSize.Y)
		end
	end

	self.propFilters = {
		parentContainerProps = {
			Position = Cryo.None,
			Size = Cryo.None,
			LayoutOrder = Cryo.None,
			Padding = Cryo.None,
			AutoSizeCanvas = Cryo.None,
			AutoSizeLayoutElement = Cryo.None,
			AutoSizeLayoutOptions = Cryo.None,
			Theme = Cryo.None,
			Style = Cryo.None,			
		},
		-- TO DO: include prop-filter for infinite scrolling props. DEVTOOLS-4123
	}


	self.getScrollingFrameProps = function(props, style)
		-- after filtering out parent's props and other component specific props,
		-- what is left should be ScrollingFrame specific props
		return Cryo.Dictionary.join(
			style,
			props,
			self.propFilters.parentContainerProps,
			{
				Size = UDim2.new(1, 0, 1, 0),
				[Roact.Children] = Cryo.None,
				[Roact.Change.CanvasPosition] = self.onScroll,
				[Roact.Ref] = self.scrollingRef,
			})
	end
end

function ScrollingFrame:didMount()
	self.updateCanvasSize()
end

function ScrollingFrame:render()
	local props = self.props
	local theme = props.Theme
	local style = theme:getStyle("Framework", self)

	local position = props.Position
	local size = props.Size
	local layoutOrder = props.LayoutOrder
	local padding = prioritize(props.Padding, style.Padding, {})
	local paddingTable = {
		Top = padding.Top or 0,
		Left = padding.Left or 0,
		Bottom = padding.Bottom or 0,
		Right = padding.Right or 0,
	}
	local autoSizeCanvas = prioritize(props.AutoSizeCanvas, style.AutoSizeCanvas, false)
	local autoSizeElement = prioritize(props.AutoSizeLayoutElement, style.AutoSizeLayoutElement, "UIListLayout")
	local layoutOptions = prioritize(props.AutoSizeLayoutOptions, style.AutoSizeLayoutOptions, {})

	local children = self.props[Roact.Children]
	local scrollingFrameProps = self.getScrollingFrameProps(self.props, style)

	local scrollingFrame
	if children == nil then
		-- TO DO: render an infinite scroller. DEVTOOLS-4123
		assert("ScrollingFrame MUST have children")-- for now
	else
		if autoSizeCanvas then
			children = {
				Layout = Roact.createElement(autoSizeElement, Cryo.Dictionary.join(layoutOptions, {
					[Roact.Change.AbsoluteContentSize] = self.updateCanvasSize,
					[Roact.Ref] = self.layoutRef,
				})),
				Children = Roact.createFragment(children),
			}
		end

		scrollingFrame = Roact.createElement("ScrollingFrame", scrollingFrameProps, children)
	end


	return Roact.createElement(Container, {
		Position = position,
		Size = size,
		LayoutOrder = layoutOrder,
		Padding = paddingTable,
	}, {
		Scroller = scrollingFrame,
	})
end

ContextServices.mapToProps(ScrollingFrame, {
	Theme = ContextServices.Theme,
})


return ScrollingFrame