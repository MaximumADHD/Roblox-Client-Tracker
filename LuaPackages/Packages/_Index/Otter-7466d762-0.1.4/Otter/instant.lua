local function step(self, _state, _dt)
	return {
		value = self.__targetValue,
		complete = true,
	}
end

local function instant(targetValue)
	return {
		__targetValue = targetValue,
		step = step,
	}
end

return instant
