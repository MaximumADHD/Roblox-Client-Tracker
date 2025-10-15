local function calculateSVFromPosition(
	dragPosition: Vector2,
	pickerPosition: Vector2,
	pickerSize: Vector2
): (number, number)
	local localX = math.clamp(dragPosition.X - pickerPosition.X, 0, pickerSize.X)
	local localY = math.clamp(dragPosition.Y - pickerPosition.Y, 0, pickerSize.Y)

	local newS = localX / pickerSize.X
	local newV = 1 - (localY / pickerSize.Y)

	return newS, newV
end

local function createHSVUpdateHandler(
	setCurrentHue,
	setCurrentSaturation,
	setCurrentValue,
	onColorChanged,
	isUpdatingFromHSV
)
	return function(newH: number, newS: number, newV: number)
		isUpdatingFromHSV.current = true
		setCurrentHue(newH)
		setCurrentSaturation(newS)
		setCurrentValue(newV)

		--selene: allow(roblox_internal_custom_color)
		local newColor = Color3.fromHSV(newH, newS, newV)
		onColorChanged(newColor)

		isUpdatingFromHSV.current = false
	end
end

local function createColorInputChangeHandler(
	onColorChanged,
	isUpdatingFromHSV,
	setCurrentHue,
	setCurrentSaturation,
	setCurrentValue
)
	return function(newColor: Color3)
		onColorChanged(newColor)

		if not isUpdatingFromHSV.current then
			local newH, newS, newV = newColor:ToHSV()
			setCurrentHue(newH)
			setCurrentSaturation(newS)
			setCurrentValue(newV)
		end
	end
end

return {
	calculateSVFromPosition = calculateSVFromPosition,
	createHSVUpdateHandler = createHSVUpdateHandler,
	createColorInputChangeHandler = createColorInputChangeHandler,
}
