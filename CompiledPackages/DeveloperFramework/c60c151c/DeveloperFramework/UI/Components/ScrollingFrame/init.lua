--[[
	(USES STYLESHEETS)
	A scrolling frame with a colored background, providing a consistent look
	with the native Studio Start Page.

	Optional Props:
		table ForwardRef: An optional reference to pass to the underlying scroller
		boolean EnableScrollBarBackground: Whether or not to show a background color for the scrollbar (DEPRECATED)
		callback OnScrollUpdate: A callback function that will update the index change.
		UDim2 Position: The position of the scrolling frame.
		Vector2 AnchorPoint: The anchor point of the scrolling frame.
		UDim2 Size: The size of the scrolling frame.
		integer LayoutOrder: The order this component will display in a UILayout.
		boolean Selectable: Whether or not the ScrollingFrame can be selectabled with keyboard navigation.
		boolean AutoSizeCanvas: When true, will automatically resize the canvas size of the scrolling frame. (DEPRECATED: Replaced by AutomaticCanvasSize)
		Enum.ScrollingDirection ScrollingDirection: The direction to scroll in (default = XY)
		Vector2 CanvasPosition: The canvas position of the scrolling frame
		Enum.AutomaticSize AutomaticSize: The automatic size of the scrolling frame.
		Enum.AutomaticSize AutomaticCanvasSize: The automatic size of the scrolling frame canvas. (With StyleSheets enabled: Default = true, unless CanvasSize is provided)
		callback OnCanvasResize: Called when content size is updated. Only called when AutoSizeCanvas is true.
			OnCanvasResize(absSize: Vector2)
		table AutoSizeLayoutOptions: The options of the UILayout instance if auto-sizing. DEPRECATED: Use X-Fit instead.
		Enum.FillDirection Layout: An optional Enum.FillDirection adding a UIListLayout instance. (PREFER X-Row or X-Column tag)
		UDim2 CanvasSize: The size of the scrolling frame's canvas.
		UDim2 ScrollingFrameSize: The size of the scrolling frame itself. Overrides the size set by AutomaticSize.
		Enum.HorizontalAlignment HorizontalAlignment: An optional Enum to allow center or right alignment of contents.
		integer ElementPadding: The padding between children when AutoSizeCanvas is true. DEPRECATED: (PREFER X-Row or X-Column tag)
		callback NextPageFunc: A callback that is called when scrolling is close to the bottom of the list.
		integer NextPageRequestDistance: How close to the bottom of the list before the next page function is called.
		UDim Spacing: The padding between children when Layout is used. (PREFER X-Row or X-Column tag)
		any Padding: The padding for the contents within the scrollingFrame. (PREFER X-Pad tag)
		boolean ScrollingEnabled: Whether scrolling in this frame will change the CanvasPosition.
		Style Style: a style table supplied from props and theme:getStyle() (PREFER style tag)
		Stylizer Stylizer: A Stylizer ContextItem, which is provided via withContext (DEPRECATED)
		boolean ClipsDescendants: Whether or not it ClipsDescendants.
		integer ScrollBarThickness: TThe horizontal width of the scrollbar.
		number ScrollBarImageTransparency: The transparency of the scrollbar.
		number BackgroundTransparency: The background transparency of the scrolling frame.

	Style Values:
		string BottomImage: The image that appears in the bottom 3rd of the scrollbar (DEPRECATED)
		string MidImage: The image that appears in the middle 3rd of the scrollbar (DEPRECATED)
		string TopImage: The image that appears in the top 3rd of the scrollbar (DEPRECATED)
		UDim2 CanvasSize: The size of the scrolling frame's canvas. (DEPRECATED)
		integer ScrollBarPadding: The padding which appears on either side of the scrollbar. (DEPRECATED)
		integer ScrollBarThickness: The horizontal width of the scrollbar. (DEPRECATED)
		Color3 ScrollBarBackgroundColor: Background color of the scrollbar. (DEPRECATED)
		integer ZIndex: The draw index of the frame. (DEPRECATED)
]]
local Framework = script:FindFirstAncestor("UI").Parent
local Roact = require(Framework.Parent.Roact)
local Util = require(Framework.Util)

local React = if Framework.Parent:FindFirstChild("React") then require(Framework.Parent.React) else nil
local supportsStyleSheets = require(Framework.Styling.supportsStyleSheets)
local joinTags = require(Framework.Styling.joinTags)

local Cryo = require(Framework.Parent.Cryo)

local ContextServices = require(Framework.UI.ContextServices)
local withContext = ContextServices.withContext
local Pane = require(script.Parent.Pane)
local getFFlagDevFrameworkKeyboardNavComponentChanges =
	require(Framework.SharedFlags.getFFlagDevFrameworkKeyboardNavComponentChanges)
local prioritize = Util.prioritize
local Typecheck = require(Framework.Util.Typecheck)

local withForwardRef = require(Framework.Wrappers.withForwardRef)

-- Stylizer has flaky errors when accessed from methods defined in init. There
-- currently is no better solution than to check for Style directly if Stylizer
-- was not set due to a flaky error.
local Style = if not supportsStyleSheets then require(script.style) else nil

local ScrollingFrame = Roact.PureComponent:extend("ScrollingFrame")
Typecheck.wrap(ScrollingFrame, script)

local DEFAULT_SIZE = UDim2.fromScale(0, 0)

function ScrollingFrame:init()
	self.scrollingRef = self.props.ForwardRef or Roact.createRef()
	self.layoutRef = Roact.createRef()
	self.state = {
		isRequestingNextPage = false,
	}
	if supportsStyleSheets then
		assert(
			not self.props.EnableScrollBarBackground,
			"[StyleSheets] ScrollingFrame does not support EnableScrollbarBackground due to design consistency"
		)
		assert(
			not self.props.Style,
			"[StyleSheets] ScrollingFrame does not support Style prop, use React.Tag for style props instead"
		)
	end

	self.onScroll = function(rbx)
		if self.props.OnScrollUpdate then
			self.props.OnScrollUpdate(rbx.CanvasPosition)
		end
		self:checkNextPage()
	end

	if not supportsStyleSheets then
		self.updateCanvasSize = function()
			local hasAutomaticCanvasSize = self.props.AutomaticCanvasSize

			if self.props.CanvasSize or hasAutomaticCanvasSize then
				-- Don't update the CanvasSize if passed in as a prop or automatically sized
				return
			end
			if self.scrollingRef.current and self.layoutRef.current then
				local contentSize = self.layoutRef.current.AbsoluteContentSize
				local contentSizeX = contentSize.X
				local contentSizeY = contentSize.Y

				local padding = self.getPaddingProps()
				contentSizeX = contentSizeX + padding.PaddingLeft.Offset + padding.PaddingRight.Offset
				contentSizeY = contentSizeY + padding.PaddingTop.Offset + padding.PaddingBottom.Offset

				if not hasAutomaticCanvasSize then
					local props = self.props
					local style = props.Stylizer or Style
					local scrollingFrameProps = self.getScrollingFrameProps(props, style)
					-- for vertical scroll, canvas size on x axis should not update when content size changes
					-- for horizon one, y axis should not change
					-- for both scrolling, canvas size can be fully controlled by content
					if scrollingFrameProps.ScrollingDirection == Enum.ScrollingDirection.Y then
						contentSizeX = 0
					elseif scrollingFrameProps.ScrollingDirection == Enum.ScrollingDirection.X then
						contentSizeY = 0
					end
				end

				self.scrollingRef.current.CanvasSize = UDim2.new(0, contentSizeX, 0, contentSizeY)

				if self.props.OnCanvasResize then
					self.props.OnCanvasResize(Vector2.new(contentSizeX, contentSizeY))
				end
			end
		end
	end

	self.propFilters = {
		parentContainerProps = {
			Position = Cryo.None,
			Size = Cryo.None,
			Layout = Cryo.None,
			LayoutOrder = Cryo.None,
			AutoSizeCanvas = Cryo.None,
			AutoSizeLayoutElement = Cryo.None,
			AutoSizeLayoutOptions = Cryo.None,
			OnCanvasResize = Cryo.None,
			OnScrollUpdate = Cryo.None,
			NextPageFunc = Cryo.None,
			NextPageRequestDistance = Cryo.None,
			Theme = if supportsStyleSheets then nil else Cryo.None,
			Style = if supportsStyleSheets then nil else Cryo.None,
			Stylizer = if supportsStyleSheets then nil else Cryo.None,
			ScrollBarBackgroundColor = Cryo.None,
			EnableScrollBarBackground = if supportsStyleSheets then nil else Cryo.None,
			Padding = Cryo.None,
			HorizontalAlignment = Cryo.None,
			ScrollingFrameSize = Cryo.None,
		},
	}

	self.getScrollingFrameProps = function(props, style)
		local scaleX = 1
		local scaleY = 1
		local automaticSize = props.AutomaticSize
		if automaticSize then
			if automaticSize == Enum.AutomaticSize.X or automaticSize == Enum.AutomaticSize.XY then
				scaleX = 0
			end
			if automaticSize == Enum.AutomaticSize.Y or automaticSize == Enum.AutomaticSize.XY then
				scaleY = 0
			end
		end
		local scrollingFrameSize = props.ScrollingFrameSize
		local size = if scrollingFrameSize ~= nil then scrollingFrameSize else UDim2.fromScale(scaleX, scaleY)

		-- after filtering out parent's props and other component specific props,
		-- what is left should be ScrollingFrame specific props
		return Cryo.Dictionary.join(
			if supportsStyleSheets
				then {
					[React.Tag] = if size == DEFAULT_SIZE then "X-DefaultSize" else nil,
				}
				else style,
			props,
			self.propFilters.parentContainerProps,
			{
				AutomaticCanvasSize = if supportsStyleSheets and not props.CanvasSize
					then Enum.AutomaticSize.XY
					else props.AutomaticCanvasSize,
				Selectable = if getFFlagDevFrameworkKeyboardNavComponentChanges()
					then (if props.Selectable == nil then false else props.Selectable)
					else nil,
				Size = size,
				ForwardRef = Cryo.None,
				[Roact.Children] = Cryo.None,
				[Roact.Change.CanvasPosition] = self.onScroll,
				[Roact.Change.AbsoluteSize] = if supportsStyleSheets then nil else self.updateCanvasSize,
				[Roact.Ref] = self.scrollingRef,
				Spacing = Cryo.None,
			}
		)
	end

	if not supportsStyleSheets then
		self.getPaddingProps = function()
			local props = self.props
			local style = props.Stylizer or Style
			local padding = prioritize(props.Padding, style.Padding, 0)
			local isPaddingNumber = type(padding) == "number"

			return {
				PaddingTop = UDim.new(0, isPaddingNumber and padding or padding.Top or 0),
				PaddingBottom = UDim.new(0, isPaddingNumber and padding or padding.Bottom or 0),
				PaddingLeft = UDim.new(0, isPaddingNumber and padding or padding.Left or 0),
				PaddingRight = UDim.new(0, isPaddingNumber and padding or padding.Right or 0),
			}
		end
	end
end

if not supportsStyleSheets then
	function ScrollingFrame:didMount()
		self.updateCanvasSize()
	end
end

function ScrollingFrame:checkNextPage()
	if self.state.isRequestingNextPage or not self.props.NextPageFunc then
		return
	end
	local scroller = self.scrollingRef.current
	if not scroller then
		return
	end

	local distance = self.props.NextPageRequestDistance or 100
	local windowHeight = scroller.AbsoluteSize.Y
	local canvasHeight = scroller.AbsoluteCanvasSize.Y
	local offset = scroller.CanvasPosition.Y
	if offset + windowHeight > canvasHeight - distance then
		self:setState({
			isRequestingNextPage = true,
		})
		self.props.NextPageFunc()
	end
end

function ScrollingFrame:didUpdate(prevProps)
	-- Check if request has fetched more children
	if self.state.isRequestingNextPage then
		local prevCount = 0
		local nextCount = 0
		for _ in pairs(prevProps[Roact.Children]) do
			prevCount += 1
		end
		for _ in pairs(self.props[Roact.Children]) do
			nextCount += 1
		end
		if nextCount > prevCount then
			self:setState({
				isRequestingNextPage = false,
			})
			self:checkNextPage()
		end
	end
end

function ScrollingFrame:render()
	local props = self.props
	local style = if supportsStyleSheets then nil else props.Stylizer
	local tags = if supportsStyleSheets then joinTags("Component-ScrollingFrame", props[React.Tag]) else nil

	local enableScrollBarBackground = if supportsStyleSheets then nil else props.EnableScrollBarBackground
	local position = props.Position
	local size = props.Size
	local layoutOrder = props.LayoutOrder

	local children = self.props[Roact.Children]
	local scrollingFrameProps = self.getScrollingFrameProps(self.props, style)

	local automaticCanvasSize = props.AutomaticCanvasSize
	local scrollBarThickness = if supportsStyleSheets
		then nil
		else prioritize(props.ScrollBarThickness, style.ScrollBarThickness)

	if not supportsStyleSheets then
		local autoSizeCanvas = prioritize(props.AutoSizeCanvas, style.AutoSizeCanvas, false)
		local autoSizeElement = prioritize(props.AutoSizeLayoutElement, style.AutoSizeLayoutElement, "UIListLayout")
		local layoutOptions = prioritize(props.AutoSizeLayoutOptions, style.AutoSizeLayoutOptions, {})

		if automaticCanvasSize then
			autoSizeCanvas = false
			if not props.CanvasSize then
				scrollingFrameProps.CanvasSize = UDim2.new()
			end
		end

		local paddingProps = self.getPaddingProps()

		local spacing = props.Spacing or UDim.new(0, 0)

		if autoSizeCanvas then
			children = {
				Layout = Roact.createElement(
					autoSizeElement,
					Cryo.Dictionary.join(layoutOptions, {
						[Roact.Change.AbsoluteContentSize] = self.updateCanvasSize,
						[Roact.Ref] = self.layoutRef,
					})
				),
				Padding = Roact.createElement("UIPadding", paddingProps),
				Children = Roact.createFragment(children),
			}
		elseif props.Layout then
			children = {
				Layout = Roact.createElement("UIListLayout", {
					SortOrder = Enum.SortOrder.LayoutOrder,
					FillDirection = props.Layout,
					Padding = spacing,
					[Roact.Change.AbsoluteContentSize] = self.updateCanvasSize,
					[Roact.Ref] = self.layoutRef,
					HorizontalAlignment = props.HorizontalAlignment,
				}),
				Padding = Roact.createElement("UIPadding", paddingProps),
				Children = Roact.createFragment(children),
			}
		else
			children = {
				Padding = Roact.createElement("UIPadding", paddingProps),
				Children = Roact.createFragment(children),
			}
		end
	end

	local paneProps = {
		AutomaticSize = props.AutomaticSize,
		LayoutOrder = layoutOrder,
		Position = position,
		Size = size,
	}
	if tags then
		-- Stylesheets: TODO: Push tags down to ScrollingFrame as needed
		paneProps[React.Tag] = tags
	end

	return Roact.createElement(Pane, paneProps, {
		ScrollBarBackground = enableScrollBarBackground and Roact.createElement("Frame", {
			AnchorPoint = Vector2.new(1, 0),
			Position = UDim2.new(1, 0, 0, 0),
			Size = UDim2.new(0, scrollBarThickness, 1, 0),
			BorderSizePixel = 0,
			BackgroundColor3 = style.ScrollBarBackgroundColor,
			ZIndex = 0,
		}),

		Scroller = Roact.createElement("ScrollingFrame", scrollingFrameProps, children),
	})
end

if not supportsStyleSheets then
	ScrollingFrame = withContext({
		Stylizer = ContextServices.Stylizer,
	})(ScrollingFrame)
end

return withForwardRef(ScrollingFrame)
