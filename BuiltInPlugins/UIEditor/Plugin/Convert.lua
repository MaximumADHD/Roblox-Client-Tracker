local GlobalValues = require(script.Parent.GlobalValues)

local Convert = {}

function Convert:convertAbsoluteToScaleOrOffset(positionUDimTypeIsScale, sizeUDimTypeIsScale, absPosition, absSize, pos, size, parent)
	
	local finalPosition
	local finalSize
	
	if (positionUDimTypeIsScale) then
		--scale
		local scalePosition = ((absPosition - Vector2.new(pos.X.Offset, pos.Y.Offset)) - parent.AbsolutePosition) / parent.AbsoluteSize
		finalPosition = UDim2.new( scalePosition.X, pos.X.Offset, scalePosition.Y, pos.Y.Offset)
	else
		--offset
		local offsetPosition = absPosition - (Vector2.new(pos.X.Scale, pos.Y.Scale) * parent.AbsoluteSize) - parent.AbsolutePosition
		finalPosition = UDim2.new( pos.X.Scale, offsetPosition.X, pos.Y.Scale, offsetPosition.Y)
	end
	
	if (sizeUDimTypeIsScale) then
		--scale
		local scaleSize = (absSize - Vector2.new(size.X.Offset, size.Y.Offset)) / parent.AbsoluteSize
		finalSize = UDim2.new( scaleSize.X, size.X.Offset, scaleSize.Y, size.Y.Offset)
	else
		--offset
		local offsetSize = absSize - (Vector2.new(size.X.Scale, size.Y.Scale) * parent.AbsoluteSize)
		finalSize = UDim2.new( size.X.Scale, offsetSize.X, size.Y.Scale, offsetSize.Y)
	end
	
	return finalPosition, finalSize
end

return Convert
