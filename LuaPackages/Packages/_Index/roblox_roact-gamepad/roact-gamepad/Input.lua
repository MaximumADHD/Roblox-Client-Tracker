local function makeInputBinding(state)
	return function(keyCode, action)
		assert(typeof(keyCode) == "EnumItem" and keyCode.EnumType == Enum.KeyCode,
			"Invalid argument #1: expected a member of Enum.KeyCode")
		assert(typeof(action) == "function", "Invalid argument #2: expected a function")

		return {
			keyCode = keyCode,
			state = state,
			action = action,
		}
	end
end

return {
	onBegin = makeInputBinding(Enum.UserInputState.Begin),
	onEnd = makeInputBinding(Enum.UserInputState.End),
}
