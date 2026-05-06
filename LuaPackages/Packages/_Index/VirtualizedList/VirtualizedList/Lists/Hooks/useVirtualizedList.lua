local srcWorkspace = script.Parent.Parent.Parent
local Packages = srcWorkspace.Parent

local React = require(Packages.React)

export type VirtualizedItem<T> = {
	height: number,
	item: T,
	index: number,
	key: string,
}

export type Ref = {
	scrollToKey: (key: string) -> (),
}

local function calculateBounds<T>(
	virtualizedItems: { VirtualizedItem<T> },
	windowHeight: number,
	scrollHeight: number
): Vector3
	scrollHeight = math.max(scrollHeight, 0)

	local y = 0

	local startIndex = 0
	local endIndex = 0

	for index, virtualizedItem in virtualizedItems do
		if y <= scrollHeight then
			startIndex = index
		end

		y += virtualizedItem.height

		if y >= scrollHeight then
			endIndex = index
		end

		if y >= scrollHeight + windowHeight then
			break
		end
	end

	return Vector3.new(startIndex, endIndex)
end

export type VirtualizedListProps<T> = {
	virtualizedItems: { VirtualizedItem<T> },
	renderItem: (VirtualizedItem<T>) -> React.ReactElement<any>,

	-- for windowSize and canvasPosition
	scrollingFrameRef: React.Ref<ScrollingFrame>,
}

local function useVirtualizedList<T>(props: VirtualizedListProps<T>)
	local windowHeight, setWindowHeight = React.useState(0)
	local bounds, setBounds = React.useState(function()
		return calculateBounds(props.virtualizedItems, windowHeight, 0)
	end)

	local lastScrollHeightRef = React.useRef(0)
	local setScrollHeight = React.useCallback(function(scrollHeight: number)
		if lastScrollHeightRef.current == scrollHeight then
			return
		end

		lastScrollHeightRef.current = scrollHeight
		setBounds(calculateBounds(props.virtualizedItems, windowHeight, scrollHeight))
	end, { windowHeight :: any, props.virtualizedItems })

	React.useEffect(function()
		local scrollingFrame = (props.scrollingFrameRef :: { current: ScrollingFrame? }).current
		if scrollingFrame == nil then
			return
		end

		local absoluteSizeChangedConnection = scrollingFrame
			:GetPropertyChangedSignal("AbsoluteWindowSize")
			:Connect(function()
				setWindowHeight(scrollingFrame.AbsoluteWindowSize.Y)
			end)

		local canvasPositionChangedConnection = scrollingFrame
			:GetPropertyChangedSignal("CanvasPosition")
			:Connect(function()
				setScrollHeight(scrollingFrame.CanvasPosition.Y)
			end)

		return function()
			absoluteSizeChangedConnection:Disconnect()
			canvasPositionChangedConnection:Disconnect()
		end
	end, { setScrollHeight })

	-- Set canvas size based on total height of items
	local totalHeight = React.useMemo(function()
		local total = 0

		for _, virtualizedItem in props.virtualizedItems do
			total += virtualizedItem.height
		end

		return total
	end, { props.virtualizedItems })

	-- Update canvas size based on total height of items
	React.useEffect(function()
		local scrollingFrame = (props.scrollingFrameRef :: { current: ScrollingFrame? }).current
		if scrollingFrame then
			scrollingFrame.CanvasSize = UDim2.new(1, 0, 0, totalHeight)
		end
	end, { totalHeight })

	React.useLayoutEffect(function()
		setBounds(calculateBounds(props.virtualizedItems, windowHeight, lastScrollHeightRef.current))
	end, { windowHeight :: any, props.virtualizedItems })

	local scrollToKey = React.useCallback(function(key: string)
		local scrollingFrame = (props.scrollingFrameRef :: { current: ScrollingFrame? }).current
		assert(scrollingFrame ~= nil, "VirtualizedList has not been mounted yet")

		local totalY = 0

		for _, item in props.virtualizedItems do
			if item.key == key then
				scrollingFrame.CanvasPosition = Vector2.new(0, totalY)
				return
			end

			totalY += item.height
		end
	end, { props.virtualizedItems })

	local itemNodes: { [string]: React.Node } = {}
	local startY = 0

	for index = 1, bounds.X - 1 do
		local virtualizedItem = props.virtualizedItems[index]
		if virtualizedItem == nil then
			break
		end

		startY += virtualizedItem.height
	end

	for index = bounds.X, bounds.Y do
		local virtualizedItem = props.virtualizedItems[index]
		if virtualizedItem == nil then
			break
		end

		itemNodes[virtualizedItem.key] = React.createElement("Frame", {
			BackgroundTransparency = 1,
			BorderSizePixel = 0,
			Position = UDim2.fromOffset(0, startY),
			Size = UDim2.new(1, 0, 0, virtualizedItem.height),
		}, props.renderItem(virtualizedItem))

		startY += virtualizedItem.height
	end

	return itemNodes, scrollToKey
end

return useVirtualizedList
