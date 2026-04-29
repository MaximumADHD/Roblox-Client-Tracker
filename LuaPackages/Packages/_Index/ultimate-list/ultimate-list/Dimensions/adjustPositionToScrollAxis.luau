local Src = script:FindFirstAncestor("ultimate-list")

local exhaustiveMatch = require(Src.Util.exhaustiveMatch)

local function adjustPositionToScrollAxis(position: UDim2, scrollAxis: number, direction: "x" | "y"): UDim2
	if direction == "x" then
		return UDim2.new(0, position.X.Offset - scrollAxis, position.Y.Scale, position.Y.Offset)
	elseif direction == "y" then
		return UDim2.new(position.X.Scale, position.X.Offset, 0, position.Y.Offset - scrollAxis)
	else
		return exhaustiveMatch(direction)
	end
end

return adjustPositionToScrollAxis
