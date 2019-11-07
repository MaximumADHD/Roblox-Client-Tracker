--[[
	Provides builders to create functions that interpolate the current Otter motor
	position into the correct translation for stack cards based upon their associated
	scene.

	Interpolator builders expect the following props as input:
	{
		initialPositionValue = <value of position motor that transition began from>,
		scene = <scene for the particular card being animated>,
		layout = {
			initWidth = <expected width of card>,
			initHeight = <expected height of card>,
			isMeasured = <boolean: true if initWidth+Height have been measured, else false>,
		}
	}

	Each builder returns a props table to be merged onto your other StackViewCard props, ex:
	{
		positionStep = <stepper function, or nil if not needed>,
		initialPosition = <starting position UDim2 for card based upon current active scene index>,
		forceHidden = true, -- May disable card visibility if it's outside interpolating range.
	}

	The props table may contain other changes, depending on the requirements of the animation.
]]
local getSceneIndicesForInterpolationInputRange = require(
	script.Parent.Parent.Parent.utils.getSceneIndicesForInterpolationInputRange)

-- Helper interpolates t with range [0,1] into the range [a,b].
local function lerp(a, b, t)
	return a * (1 - t) + b * t
end

-- Render initial style when layout hasn't been measured yet.
local function forInitial(props)
	local initialPositionValue = props.initialPositionValue
	local scene = props.scene

	local forceHidden = initialPositionValue ~= scene.index
	local translate = forceHidden and 1000000 or 0

	return {
		forceHidden = forceHidden,
		initialPosition = UDim2.new(0, translate, 0, translate),
		positionStep = nil,
	}
end

-- Slide-in from right style (e.g. navigation stack view).
local function forHorizontal(props)
	local initialPositionValue = props.initialPositionValue
	local layout = props.layout
	local scene = props.scene

	if not layout.isMeasured then
		return forInitial(props)
	end

	local interpolate = getSceneIndicesForInterpolationInputRange(props)

	-- getSceneIndices* returns nil if card is not visible and need not be
	-- considered for the animation until state changes.
	if not interpolate then
		return {
			forceHidden = true,
			initialPosition = UDim2.new(0, 100000, 0, 100000),
			positionStep = nil,
		}
	end

	local first = interpolate.first
	local last = interpolate.last
	local index = scene.index

	local width = layout.initWidth

	local function calculate(positionValue)
		-- 3 range LERP
		if positionValue < first then
			return width
		elseif positionValue < index then
			return lerp(width, 0, (positionValue - first) / (index - first))
		elseif positionValue == index then
			return 0
		elseif positionValue < last then
			return lerp(0, -width, (positionValue - index) / (last - index))
		else
			return -width
		end
	end

	local function stepper(cardRef, positionValue)
		local cardInstance = cardRef.current
		if not cardInstance then
			return
		end

		local oldPosition = cardInstance.Position
		cardInstance.Position = UDim2.new(
			oldPosition.X.Scale,
			calculate(positionValue),
			oldPosition.Y.Scale,
			oldPosition.Y.Offset
		)
	end

	local initialPosition = UDim2.new(0, calculate(initialPositionValue), 0, 0)

	return {
		initialPosition = initialPosition,
		positionStep = stepper,
	}
end

-- Slide-in from bottom style (e.g. modals).
local function forVertical(props)
	local initialPositionValue = props.initialPositionValue
	local layout = props.layout
	local scene = props.scene

	if not layout.isMeasured then
		return forInitial(props)
	end

	local interpolate = getSceneIndicesForInterpolationInputRange(props)

	if not interpolate then
		return {
			forceHidden = true,
			initialPosition = UDim2.new(0, 100000, 0, 100000),
			positionStep = nil,
		}
	end

	local first = interpolate.first
	local index = scene.index
	local height = layout.initHeight

	local function calculate(positionValue)
		-- 2 range LERP
		if positionValue < first then
			return height
		elseif positionValue < index then
			return lerp(height, 0, (positionValue - first) / (index - first))
		else
			return 0
		end
	end

	local function stepper(cardRef, positionValue)
		local cardInstance = cardRef.current
		if not cardInstance then
			return
		end

		local oldPosition = cardInstance.Position
		cardInstance.Position = UDim2.new(
			oldPosition.X.Scale,
			oldPosition.X.Offset,
			oldPosition.Y.Scale,
			calculate(positionValue)
		)
	end

	local initialPosition = UDim2.new(0, 0, 0, calculate(initialPositionValue))

	return {
		initialPosition = initialPosition,
		positionStep = stepper,
	}
end

-- Fade in place animation (e.g. popovers and toasts). Note that since we don't currently have
-- group transparency, this 'animation' just pops the views in for now.
local function forFade(props)
	local initialPositionValue = props.initialPositionValue
	local layout = props.layout
	local scene = props.scene

	if not layout.isMeasured then
		return forInitial(props)
	end

	local interpolate = getSceneIndicesForInterpolationInputRange(props)

	if not interpolate then
		return {
			forceHidden = true,
			initialPosition = UDim2.new(0, 100000, 0, 100000),
			positionStep = nil,
		}
	end

	local index = scene.index

	local function calculate(positionValue)
		return positionValue >= index - 0.5
	end

	local function stepper(cardRef, positionValue)
		local cardInstance = cardRef.current
		if not cardInstance then
			return
		end

		cardInstance.Visible = calculate(positionValue)
	end

	return {
		forceHidden = not calculate(initialPositionValue),
		initialPosition = UDim2.new(0, 0, 0, 0),
		positionStep = stepper,
	}
end

return {
	forHorizontal = forHorizontal,
	forVertical = forVertical,
	forFade = forFade,
}
