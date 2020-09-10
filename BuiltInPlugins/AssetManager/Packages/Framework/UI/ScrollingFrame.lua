--[[
	A scrolling frame with a colored background, providing a consistent look
	with the native Studio Start Page.

	Optional Props:
		callback OnScrollUpdate: A callback function that will update the index change.
		UDim2 Position: The position of the scrolling frame.
		UDim2 Size: The size of the scrolling frame.
		integer LayoutOrder: The order this component will display in a UILayout.
		boolean AutoSizeCanvas: When true, will automatically resize the canvas size of the scrolling frame.
		table AutoSizeLayoutOptions: The options of the UILayout instance if auto-sizing.
		UDim2 CanvasSize: The size of the scrolling frame's canvas.
		integer ElementPadding: The padding between children when AutoSizeCanvas is true.
		Style Style: a style table supplied from props and theme:getStyle()
		Stylizer Stylizer: A Stylizer ContextItem, which is provided via mapToProps
		Theme Theme: the theme supplied from mapToProps()

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
local Roact = require(Framework.Parent.Roact)
local Util = require(Framework.Util)
local FlagsList = Util.Flags.new({
	FFlagRefactorDevFrameworkTheme = {"RefactorDevFrameworkTheme"},
	FFlagStudioDevFrameworkPackage = {"StudioDevFrameworkPackage"},
})
local Cryo
local isUsedAsPackage = require(Framework.Util.isUsedAsPackage)
if FlagsList:get("FFlagStudioDevFrameworkPackage") and isUsedAsPackage() then
	Cryo = require(Framework.Parent.Cryo)
else
	local Packages = Framework.packages
	Cryo = require(Packages.Cryo)
end

local ContextServices = require(Framework.ContextServices)
local Container = require(script.Parent.Container)
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
			AutoSizeCanvas = Cryo.None,
			AutoSizeLayoutElement = Cryo.None,
			AutoSizeLayoutOptions = Cryo.None,
			Theme = Cryo.None,
			Style = Cryo.None,
		},
	}

	self.getScrollingFrameProps = function(props, style)
		-- after filtering out parent's props and other component specific props,
		-- what is left should be ScrollingFrame specific props
		local updatedProps
		if FlagsList:get("FFlagRefactorDevFrameworkTheme") then
			updatedProps = Cryo.Dictionary.join(props, {
				Stylizer = Cryo.None
			})
		else
			updatedProps = props
		end
		return Cryo.Dictionary.join(
			style,
			updatedProps,
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
	local style
	if FlagsList:get("FFlagRefactorDevFrameworkTheme") then
		style = props.Stylizer
	else
		style = theme:getStyle("Framework", self)
	end

	local position = props.Position
	local size = props.Size
	local layoutOrder = props.LayoutOrder

	local autoSizeCanvas = prioritize(props.AutoSizeCanvas, style.AutoSizeCanvas, false)
	local autoSizeElement = prioritize(props.AutoSizeLayoutElement, style.AutoSizeLayoutElement, "UIListLayout")
	local layoutOptions = prioritize(props.AutoSizeLayoutOptions, style.AutoSizeLayoutOptions, {})

	local children = self.props[Roact.Children]
	local scrollingFrameProps = self.getScrollingFrameProps(self.props, style)

	if autoSizeCanvas then
		children = {
			Layout = Roact.createElement(autoSizeElement, Cryo.Dictionary.join(layoutOptions, {
				[Roact.Change.AbsoluteContentSize] = self.updateCanvasSize,
				[Roact.Ref] = self.layoutRef,
			})),
			Children = Roact.createFragment(children),
		}
	end

	local scrollingFrame = Roact.createElement("ScrollingFrame", scrollingFrameProps, children)

	return Roact.createElement(Container, {
		Position = position,
		Size = size,
		LayoutOrder = layoutOrder,
	}, {
		Scroller = scrollingFrame,
	})
end

ContextServices.mapToProps(ScrollingFrame, {
	Stylizer = FlagsList:get("FFlagRefactorDevFrameworkTheme") and ContextServices.Stylizer or nil,
	Theme = (not FlagsList:get("FFlagRefactorDevFrameworkTheme")) and ContextServices.Theme or nil,
})

return ScrollingFrame