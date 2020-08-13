--[[
	Calculate absolute position of tooltip, as well as caret position / point direction, etc
	return:
		- absolutePosition: UDim2, Tooltip start absolute position
		- position: UDim2, Tooltip start position offset from trigger point
		- animatedDistance: UDim2, diff of animated position and start position
		- updatedOrientation: Enum, tooltip may flip from bottom to top
		- fillDirection: Enum, fill direction of caret and content frame
		- caretLayoutOrder: number, 1: on top or left
		- contentLayoutOrder: number
		- caretPosition: UDim2, caret position relates to tooltip frame and trigger point
		- caretImageSize: UDim2
		- caretAnchorPoint: Vector2
]]

local TooltipOrientation = require(script.Parent.Enum.TooltipOrientation)
local MARGIN = 12
local TRIANGLE_HEIGHT = 8 -- height / width will be swapped if pointing left / right
local TRIANGLE_WIDTH = 16

return function(frameWidth, frameHeight, orientation, triggerPosition, triggerSize, screenSize, userInputPosition)
	local positionInfo = {}

	local triggerCenter = triggerPosition + triggerSize * 0.5
	local triggerEnd = triggerPosition + triggerSize

	local absolutePosX
	local absolutePosY
	local offsetX
	local offsetY
	local animatedOffsetX = 0
	local animatedOffsetY = 0

	local minOffset = MARGIN

	if orientation == TooltipOrientation.Bottom or orientation == TooltipOrientation.Top then
		-- Vertical

		-- if space not enough under target, flip to top
		-- disabled if user set position manually
		if not userInputPosition and frameHeight + TRIANGLE_HEIGHT + MARGIN > screenSize.Y - triggerEnd.Y then
			orientation = TooltipOrientation.Top
		end

		local maxOffsetX = screenSize.X - MARGIN - frameWidth
		absolutePosX = math.clamp(triggerCenter.X - frameWidth * 0.5, minOffset, maxOffsetX)
		-- Tooltip offset from trigger point
		offsetX = absolutePosX - triggerPosition.X

		local caretOffsetX
		local maxCaretOffsetX = frameWidth - MARGIN - TRIANGLE_WIDTH

		if frameWidth < TRIANGLE_WIDTH + 2 * MARGIN then
			positionInfo.caretPosition = UDim2.fromScale(0.5, 0)
		elseif userInputPosition then
			local dist = triggerSize.X * 0.5 + math.abs(triggerSize.X * userInputPosition.X.Scale + userInputPosition.X.Offset)
			caretOffsetX = math.clamp(dist, MARGIN, maxCaretOffsetX)
			positionInfo.caretPosition = UDim2.fromOffset(caretOffsetX, 0)
		-- enough space for both left and right side
		-- or frameWidth is less than TRIANGLE_WIDTH + 2 * MARGIN
		elseif triggerCenter.X - frameWidth * 0.5 >= MARGIN and triggerCenter.X + frameWidth * 0.5 <= screenSize.X - MARGIN
		then
			positionInfo.caretPosition = UDim2.fromScale(0.5, 0)
		else
			caretOffsetX = math.clamp(triggerCenter.X - absolutePosX, MARGIN, maxCaretOffsetX)
			positionInfo.caretPosition = UDim2.fromOffset(caretOffsetX, 0)
		end

		positionInfo.caretFrameSize = UDim2.fromOffset(frameWidth, TRIANGLE_HEIGHT)
		positionInfo.caretImageSize = UDim2.fromOffset(TRIANGLE_WIDTH, TRIANGLE_HEIGHT)
		positionInfo.caretAnchorPoint = Vector2.new(0.5, 0)
		positionInfo.fillDirection = Enum.FillDirection.Vertical

		if orientation == TooltipOrientation.Bottom then
			-- caret pointing top
			absolutePosY = triggerPosition.Y + triggerSize.Y
			offsetY = triggerSize.Y
			positionInfo.caretLayoutOrder = 1
			positionInfo.contentLayoutOrder = 2
			animatedOffsetY = 4
		else
			-- caret pointing bottom
			absolutePosY = triggerPosition.Y - frameHeight - TRIANGLE_HEIGHT
			offsetY = -(frameHeight + TRIANGLE_HEIGHT)
			positionInfo.caretLayoutOrder = 2
			positionInfo.contentLayoutOrder = 1
			animatedOffsetY = -4
		end
	else
		-- Horizontal
		local maxOffsetY = screenSize.Y - MARGIN - frameHeight
		absolutePosY = math.clamp(triggerCenter.Y - frameHeight * 0.5, minOffset, maxOffsetY)
		offsetY = absolutePosY - triggerPosition.Y

		local caretOffsetY
		local maxCaretOffsetY = frameHeight - MARGIN - TRIANGLE_WIDTH
		if userInputPosition then
			local dist = triggerSize.Y * 0.5 + math.abs(triggerSize.Y * userInputPosition.Y.Scale + userInputPosition.Y.Offset)
			caretOffsetY = math.clamp(dist, MARGIN, maxCaretOffsetY)
			positionInfo.caretPosition = UDim2.fromOffset(0, caretOffsetY)
		-- frameHeight always greater than or equal to TRIANGLE_WIDTH + 2 * MARGIN
		-- caret should in center for one-line tooltip
		elseif triggerCenter.Y - frameHeight * 0.5 >= MARGIN and triggerCenter.Y + frameHeight * 0.5 <= screenSize.Y - MARGIN
			or frameHeight <= 40
		then
			positionInfo.caretPosition = UDim2.fromScale(0, 0.5)
		else
			local maxCaretOffset = frameHeight - MARGIN - TRIANGLE_WIDTH
			caretOffsetY = math.clamp(triggerCenter.Y - absolutePosY, MARGIN, maxCaretOffset)
			positionInfo.caretPosition = UDim2.fromOffset(0, caretOffsetY)
		end

		positionInfo.caretFrameSize = UDim2.fromOffset(TRIANGLE_HEIGHT, frameHeight)
		positionInfo.caretImageSize = UDim2.fromOffset(TRIANGLE_HEIGHT, TRIANGLE_WIDTH)
		positionInfo.caretAnchorPoint = Vector2.new(0, 0.5)
		positionInfo.fillDirection = Enum.FillDirection.Horizontal

		if orientation == TooltipOrientation.Right then
			-- caret pointing left
			absolutePosX = triggerEnd.X
			offsetX = triggerSize.X
			positionInfo.caretLayoutOrder = 1
			positionInfo.contentLayoutOrder = 2
			animatedOffsetX = 4
		else
			-- caret pointing right
			absolutePosX = triggerPosition.X - frameWidth - TRIANGLE_HEIGHT
			offsetX = -(frameWidth - TRIANGLE_HEIGHT)
			positionInfo.caretLayoutOrder = 2
			positionInfo.contentLayoutOrder = 1
			animatedOffsetX = -4
		end
	end

	positionInfo.absolutePosition = UDim2.fromOffset(absolutePosX, absolutePosY)
	positionInfo.position = UDim2.fromOffset(offsetX, offsetY)
	positionInfo.animatedDistance = UDim2.fromOffset(animatedOffsetX, animatedOffsetY)
	positionInfo.updatedOrientation = orientation
	return positionInfo
end
