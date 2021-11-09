local GlobalValues = require(script.Parent.GlobalValues)

local GetFFlagFixResizingWithPadding = require(script.Parent.Flags.FFlagFixResizingWithPadding)

local Convert = {}

function Convert:convertAbsoluteToScaleOrOffset(positionUDimTypeIsScale, sizeUDimTypeIsScale, absPosition, absSize, pos, size, parent)
	
	local finalPosition
	local finalSize

	local padding = parent:FindFirstChildWhichIsA("UIPadding")
	local paddingTL = Vector2.new(0, 0)
	local paddingBR = Vector2.new(0, 0)
	if padding then
		paddingTL = Vector2.new(padding.PaddingLeft.Offset, padding.PaddingTop.Offset)
			+ Vector2.new(padding.PaddingLeft.Scale, padding.PaddingTop.Scale) * parent.AbsoluteSize
		paddingBR = Vector2.new(padding.PaddingRight.Offset, padding.PaddingBottom.Offset)
			+ Vector2.new(padding.PaddingRight.Scale, padding.PaddingBottom.Scale) * parent.AbsoluteSize
	end

	if (positionUDimTypeIsScale) then
		--scale
		local scalePosition
		if GetFFlagFixResizingWithPadding() then
			scalePosition = ((absPosition - paddingTL - Vector2.new(pos.X.Offset, pos.Y.Offset)) - parent.AbsolutePosition) / (parent.AbsoluteSize - paddingTL - paddingBR)
		else
			scalePosition = ((absPosition - Vector2.new(pos.X.Offset, pos.Y.Offset)) - parent.AbsolutePosition) / parent.AbsoluteSize
		end
		finalPosition = UDim2.new( scalePosition.X, pos.X.Offset, scalePosition.Y, pos.Y.Offset)
	else
		--offset
		local offsetPosition
		if GetFFlagFixResizingWithPadding() then
			offsetPosition = absPosition - paddingTL - (Vector2.new(pos.X.Scale, pos.Y.Scale) * parent.AbsoluteSize) - parent.AbsolutePosition
		else
			offsetPosition = absPosition - (Vector2.new(pos.X.Scale, pos.Y.Scale) * parent.AbsoluteSize) - parent.AbsolutePosition
		end
		finalPosition = UDim2.new( pos.X.Scale, offsetPosition.X, pos.Y.Scale, offsetPosition.Y)
	end
	
	if (sizeUDimTypeIsScale) then
		--scale
		local scaleSize
		if GetFFlagFixResizingWithPadding() then
			scaleSize = (absSize - Vector2.new(size.X.Offset, size.Y.Offset)) / (parent.AbsoluteSize - paddingTL - paddingBR)
		else
			scaleSize = (absSize - Vector2.new(size.X.Offset, size.Y.Offset)) / parent.AbsoluteSize
		end
		finalSize = UDim2.new( scaleSize.X, size.X.Offset, scaleSize.Y, size.Y.Offset)
	else
		--offset
		local offsetSize = absSize - (Vector2.new(size.X.Scale, size.Y.Scale) * parent.AbsoluteSize)
		finalSize = UDim2.new( size.X.Scale, offsetSize.X, size.Y.Scale, offsetSize.Y)
	end
	
	return finalPosition, finalSize
end

return Convert
