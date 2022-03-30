local Framework = script.Parent.Parent.Parent
local Types = require(Framework.Types)

local Dash = require(Framework.packages.Dash)
local reduce = Dash.reduce

type Props = {
	MinSizes: Types.Array<UDim>,
	Sizes: Types.Array<UDim>,
	UseScale: boolean?,
	UseDeficit: boolean?,
	ClampSize: boolean?,
}

-- Calculate the new sizes of the panes based on a drag by the mouse
local function getNextSizes(props: Props, offset: number, outerSize: number, isForwards: boolean, draggingPaneIndex: number)
	local nextSizes = {}
	local count = #props.Sizes
	local step = isForwards and 1 or -1
	local start = isForwards and 1 or count
	local finish = isForwards and count or 1
	
	-- Convert a UDim to absolute size
	local function toOffset(udim: UDim)
		return udim.Scale * outerSize + udim.Offset
	end

	-- Sum an array of UDims
	local function sum(array: Types.Array<UDim>)
		return reduce(array, function(acc: number, udim: UDim)
			return acc + toOffset(udim)
		end, 0)
	end

	local usedSize = 0 -- How much space has been used so far
	local remainingSize = sum(props.MinSizes) -- How much space there is left to use
	local sizeChange = 0 -- How much the size of the pane being dragged has changed by

	-- Iterate from the pane at the back of the drag to the pane at the very front of the drag
	for i = start, finish, step do
		local prevOffset = toOffset(props.Sizes[i])
		local nextOffset = prevOffset
		local minSize = toOffset(props.MinSizes[i])

		remainingSize -= minSize
		local maxSize = outerSize - usedSize - remainingSize

		if i == draggingPaneIndex then
			-- Change the size of the pane to the left/above
			nextOffset = math.min(math.max(minSize, offset - usedSize), maxSize)
			-- Store the change in size required for the right/below
			sizeChange = nextOffset - prevOffset
			
		elseif props.ClampSize then
			if i == draggingPaneIndex + step then
				-- Change the size of the pane to the right/below
				nextOffset = math.max(minSize, math.min(prevOffset - sizeChange, maxSize))
			else
				nextOffset = math.max(minSize, math.min(prevOffset, maxSize))
			end
		end

		nextSizes[i] = props.UseScale and UDim.new(nextOffset / outerSize, 0) or UDim.new(0, nextOffset)
		usedSize += nextOffset
	end

	-- The last pane of a clamped split pane using offsets should fill remaining space
	if props.UseDeficit and props.ClampSize and not props.UseScale then
		nextSizes[count] = UDim.new(1, nextSizes[count].Offset - outerSize)
	end
	
	return nextSizes
end

return getNextSizes
