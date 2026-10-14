local Framework = script:FindFirstAncestor("UI").Parent
local Types = require(Framework.Types)

type Props = {
	MinSizes: Types.Array<UDim>,
	MaxSizes: Types.Array<UDim>?,
	Sizes: Types.Array<UDim>,
	UseScale: boolean?,
	UseDeficit: boolean?,
	ClampSize: boolean?,
}

-- Calculate the new sizes of the panes based on a drag by the mouse
local function getNextSizes(
	props: Props,
	offset: number,
	outerSize: number,
	isForwards: boolean,
	draggingPaneIndex: number
)
	local nextSizes = {}
	local count = #props.Sizes
	local step = isForwards and 1 or -1

	-- Convert a UDim to absolute size
	local function toOffset(udim: UDim?)
		return if udim then udim.Scale * outerSize + udim.Offset else 0
	end

	local maxSizes = props.MaxSizes or {}
	local frontMinSize = 0
	local frontMaxSize = 0
	local backMinSize = 0
	local backMaxSize = 0
	-- Calculate the range of the current dragger
	for i = 1, count do
		-- Measure the min and max sizes of panes in front and behind the direction of drag
		local minSize = toOffset(props.MinSizes[i])
		-- A pane's maxSize is "huge" if not defined
		local maxSize = if maxSizes[i] then toOffset(maxSizes[i]) else math.huge
		local inFront = if isForwards then i > draggingPaneIndex else i < draggingPaneIndex
		if inFront then
			frontMinSize += minSize
			frontMaxSize += maxSize
		else
			backMinSize += minSize
			backMaxSize += maxSize
		end
	end
	-- Clamp the offset of the bar so elements are not crushed or stretched
	local frontClampedOffset =
		math.min(outerSize - frontMinSize, math.max(if frontMaxSize then outerSize - frontMaxSize else 0, offset))
	local clampedOffset = math.min(backMaxSize, math.max(backMinSize, frontClampedOffset))

	-- Calculate the previous offset
	local backStart = draggingPaneIndex
	local backFinish = if isForwards then 1 else count
	local prevPaneOffset = 0
	for i = backStart, backFinish, -step do
		prevPaneOffset += toOffset(props.Sizes[i])
	end
	local shrink = clampedOffset - prevPaneOffset
	local grow = shrink
	-- Push elements in front of the drag
	local frontStart = draggingPaneIndex + step
	local frontFinish = if isForwards then count else 1
	for i = frontStart, frontFinish, step do
		local unclamped = not props.ClampSize and isForwards
		local prevSize = toOffset(props.Sizes[i])
		local minSize = toOffset(props.MinSizes[i])
		local nextSize = if not unclamped and shrink > 0 then math.max(prevSize - shrink, minSize) else prevSize
		shrink -= prevSize - nextSize
		nextSizes[i] = if props.UseScale then UDim.new(nextSize / outerSize, 0) else UDim.new(0, nextSize)
	end
	-- Pull elements in front of the drag
	for i = backStart, backFinish, -step do
		local unclamped = not props.ClampSize and not isForwards
		local prevSize = toOffset(props.Sizes[i])
		local maxSize = if maxSizes[i] then toOffset(maxSizes[i]) else math.huge
		local nextSize = if not unclamped and grow > 0 then math.min(prevSize + grow, maxSize) else prevSize
		grow -= nextSize - prevSize
		nextSizes[i] = if props.UseScale then UDim.new(nextSize / outerSize, 0) else UDim.new(0, nextSize)
	end

	-- The last pane of a clamped split pane using offsets should fill remaining space
	if props.UseDeficit and props.ClampSize and not props.UseScale then
		nextSizes[count] = UDim.new(1, nextSizes[count].Offset - outerSize)
	end

	return nextSizes
end

return getNextSizes
