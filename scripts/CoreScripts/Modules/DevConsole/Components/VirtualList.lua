--!nonstrict
local CorePackages = game:GetService("CorePackages")
local Roact = require(CorePackages.Packages.Roact)

local Constants = require(script.Parent.Parent.Constants)

local OVERSCAN_ROWS = 4

export type Props = {
	items: { any },
	rowHeight: number,
	renderItem: (item: any, index: number) -> any,
	size: UDim2?,
	position: UDim2?,
	layoutOrder: number?,
	emptyText: string?,
}

local VirtualList = Roact.Component:extend("VirtualList")

function VirtualList:init()
	self.scrollingRef = Roact.createRef()
	self.state = {
		canvasPosY = 0,
		absSizeY = 0,
	}

	self.onScrollPropertyChanged = function()
		local frame = self.scrollingRef.current
		if not frame then
			return
		end
		local canvasPosY = frame.CanvasPosition.Y
		local absSizeY = frame.AbsoluteSize.Y
		if canvasPosY ~= self.state.canvasPosY or absSizeY ~= self.state.absSizeY then
			self:setState({
				canvasPosY = canvasPosY,
				absSizeY = absSizeY,
			})
		end
	end
end

function VirtualList:connectScrollListenersIfNeeded()
	local frame = self.scrollingRef.current
	if frame == self.connectedFrame then
		return
	end
	self:disconnectScrollListeners()
	if not frame then
		return
	end
	self.connectedFrame = frame
	self.canvasPosConnector = frame:GetPropertyChangedSignal("CanvasPosition"):Connect(self.onScrollPropertyChanged)
	self.absSizeConnector = frame:GetPropertyChangedSignal("AbsoluteSize"):Connect(self.onScrollPropertyChanged)
	self.onScrollPropertyChanged()
end

function VirtualList:disconnectScrollListeners()
	if self.canvasPosConnector then
		self.canvasPosConnector:Disconnect()
		self.canvasPosConnector = nil
	end
	if self.absSizeConnector then
		self.absSizeConnector:Disconnect()
		self.absSizeConnector = nil
	end
	self.connectedFrame = nil
end

function VirtualList:didMount()
	self:connectScrollListenersIfNeeded()
end

function VirtualList:willUnmount()
	self:disconnectScrollListeners()
end

function VirtualList:didUpdate(prevProps)
	self:connectScrollListenersIfNeeded()

	local frame = self.scrollingRef.current
	if not frame then
		return
	end

	local absSizeY = frame.AbsoluteSize.Y
	local canvasPosY = frame.CanvasPosition.Y
	if absSizeY ~= self.state.absSizeY or canvasPosY ~= self.state.canvasPosY then
		self:setState({ absSizeY = absSizeY, canvasPosY = canvasPosY })
	end

	local prevCount = #(prevProps.items or {})
	local currentCount = #(self.props.items or {})
	if prevCount == currentCount then
		return
	end

	local rowHeight = self.props.rowHeight
	local maxCanvasPosY = math.max(0, currentCount * rowHeight - absSizeY)
	local clampedY = math.min(canvasPosY, maxCanvasPosY)

	if clampedY ~= frame.CanvasPosition.Y then
		frame.CanvasPosition = Vector2.new(frame.CanvasPosition.X, clampedY)
	end
	if clampedY ~= self.state.canvasPosY then
		self:setState({ canvasPosY = clampedY })
	end
end

function VirtualList:render()
	local items = self.props.items or {}
	local rowHeight = self.props.rowHeight
	local renderItem = self.props.renderItem
	local itemCount = #items

	if itemCount == 0 then
		return Roact.createElement("TextLabel", {
			Size = self.props.size or UDim2.new(1, 0, 1, 0),
			Position = self.props.position,
			LayoutOrder = self.props.layoutOrder,
			Text = self.props.emptyText or "",
			TextColor3 = Constants.Color.Text,
			TextTransparency = 0.5,
			BackgroundTransparency = 1,
		})
	end

	local canvasPosY = self.state.canvasPosY
	local absSizeY = self.state.absSizeY

	local firstVisibleIndex = math.floor(canvasPosY / rowHeight) - OVERSCAN_ROWS + 1
	local visibleRowCount = math.ceil(absSizeY / rowHeight) + 2 * OVERSCAN_ROWS
	local lastVisibleIndex = firstVisibleIndex + visibleRowCount - 1

	firstVisibleIndex = math.clamp(firstVisibleIndex, 1, itemCount)
	lastVisibleIndex = math.clamp(lastVisibleIndex, 1, itemCount)

	local rows = {}
	for i = firstVisibleIndex, lastVisibleIndex do
		rows["row" .. i] = Roact.createElement("Frame", {
			Size = UDim2.new(1, 0, 0, rowHeight),
			Position = UDim2.new(0, 0, 0, (i - 1) * rowHeight),
			BackgroundTransparency = 1,
			BorderSizePixel = 0,
		}, {
			Item = renderItem(items[i], i),
		})
	end

	return Roact.createElement("ScrollingFrame", {
		Size = self.props.size or UDim2.new(1, 0, 1, 0),
		Position = self.props.position,
		LayoutOrder = self.props.layoutOrder,
		CanvasSize = UDim2.new(0, 0, 0, itemCount * rowHeight),
		BackgroundTransparency = 1,
		BorderSizePixel = 0,
		ScrollBarThickness = 6,
		VerticalScrollBarInset = Enum.ScrollBarInset.ScrollBar,
		[Roact.Ref] = self.scrollingRef,
	}, rows)
end

return VirtualList
