local Foundation = script:FindFirstAncestor("Foundation")
local Packages = Foundation.Parent

local React = require(Packages.React)

local Constants = require(Foundation.Constants)
local PopoverSide = require(Foundation.Enums.PopoverSide)
local Radius = require(Foundation.Enums.Radius)
local useTokens = require(Foundation.Providers.Style.useTokens)

local SHADOW_SIZE = Constants.SHADOW_SIZE

type PopoverSide = PopoverSide.PopoverSide
type Radius = Radius.Radius

local function useArrowPosition(
	contentSize: React.Binding<UDim2>,
	sidePosition: PopoverSide,
	radius: Radius,
	alignValue: number,
	arrowHeight: number,
	anchor: GuiBase2d?
): React.Binding<UDim2>
	local tokens = useTokens()
	local baseRadiusInset = React.useMemo(function(): number
		if radius == Radius.XSmall then
			return tokens.Size.Size_50
		elseif radius == Radius.Small then
			return tokens.Size.Size_100
		elseif radius == Radius.Medium then
			return tokens.Size.Size_200
		elseif radius == Radius.Large then
			return tokens.Size.Size_300
		end

		return 0
	end, { radius :: any, tokens })

	return contentSize:map(function(value: UDim2)
		local contentWidth = value.X.Offset
		local contentHeight = value.Y.Offset

		local radiusInset = baseRadiusInset
		if radius == Radius.Circle then
			radiusInset = math.min(contentWidth, contentHeight) / 2
		end

		local cornerInset = radiusInset + arrowHeight
		local isVertical = sidePosition == PopoverSide.Top or sidePosition == PopoverSide.Bottom

		local contentCrossSize = if isVertical then contentWidth else contentHeight
		local rawPosition: number

		if anchor and typeof(anchor) == "Instance" then
			local anchorSize = anchor.AbsoluteSize
			local anchorCrossSize = if isVertical then anchorSize.X else anchorSize.Y

			local anchorStartInContent: number
			if alignValue == 0 then
				anchorStartInContent = 0
			elseif alignValue == 0.5 then
				anchorStartInContent = (contentCrossSize - anchorCrossSize) / 2
			else
				anchorStartInContent = contentCrossSize - anchorCrossSize
			end

			local intersectionStart = math.max(0, anchorStartInContent)
			local intersectionEnd = math.min(contentCrossSize, anchorStartInContent + anchorCrossSize)

			if intersectionStart <= intersectionEnd then
				rawPosition = (intersectionStart + intersectionEnd) / 2
			else
				if contentCrossSize < anchorStartInContent then
					rawPosition = contentCrossSize - arrowHeight
				else
					rawPosition = arrowHeight
				end
			end
		else
			rawPosition = contentCrossSize * alignValue
		end

		local minPosition = cornerInset
		local maxPosition = contentCrossSize - cornerInset
		if maxPosition >= minPosition then
			rawPosition = math.clamp(rawPosition, minPosition, maxPosition)
		else
			rawPosition = contentCrossSize / 2
		end

		if isVertical then
			return UDim2.fromOffset(
				SHADOW_SIZE + rawPosition,
				SHADOW_SIZE + (if sidePosition == PopoverSide.Top then contentHeight else 0)
			)
		else
			return UDim2.fromOffset(
				SHADOW_SIZE + (if sidePosition == PopoverSide.Left then contentWidth else 0),
				SHADOW_SIZE + rawPosition
			)
		end
	end)
end

return useArrowPosition
