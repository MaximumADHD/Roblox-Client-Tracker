-- Places a Host so its start is min(start, endLimit - its painted length)
-- without knowing that length: the frame's end edge sits at `endLimit`, a
-- spacer makes it at least `endLimit - start` long, and the Host sits at its
-- start. AutomaticSize grows the frame to the longer of the two.
local Root = script:FindFirstAncestor("ViewRecyclerRoblox")
local Core = require(Root.Parent.ViewRecycler)

local transparentFrame = require(Root.RobloxAdapter.transparentFrame)

local Axis = Core.Axis

export type EndLimitFrame = {
	instance: Frame,
	place: (parent: Instance, axis: Core.Axis, start: number, endLimit: number, zIndex: number) -> (),
	destroy: () -> (),
}

local EndLimitFrame = {}

function EndLimitFrame.new(): EndLimitFrame
	local frame = transparentFrame("ViewRecyclerEndLimit")
	local spacer = transparentFrame("Spacer")
	spacer.Parent = frame

	return {
		instance = frame,
		place = function(parent, axis, start, endLimit, zIndex)
			local gap = math.max(0, endLimit - start)
			if axis == Axis.X then
				frame.AnchorPoint = Vector2.xAxis
				frame.Position = UDim2.fromOffset(endLimit, 0)
				frame.Size = UDim2.fromScale(0, 1)
				frame.AutomaticSize = Enum.AutomaticSize.X
				spacer.Size = UDim2.fromOffset(gap, 0)
			else
				frame.AnchorPoint = Vector2.yAxis
				frame.Position = UDim2.fromOffset(0, endLimit)
				frame.Size = UDim2.fromScale(1, 0)
				frame.AutomaticSize = Enum.AutomaticSize.Y
				spacer.Size = UDim2.fromOffset(0, gap)
			end
			frame.ZIndex = zIndex
			frame.Parent = parent
		end,
		destroy = function()
			frame:Destroy()
		end,
	}
end

return EndLimitFrame
