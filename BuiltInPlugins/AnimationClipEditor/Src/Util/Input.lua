local Input = {}

function Input.isControl(keyCode)
	return keyCode == Enum.KeyCode.LeftControl
		or keyCode == Enum.KeyCode.RightControl
		or keyCode == Enum.KeyCode.RightSuper
		or keyCode == Enum.KeyCode.LeftSuper
end

function Input.isShift(keyCode)
	return keyCode == Enum.KeyCode.LeftShift
		or keyCode == Enum.KeyCode.RightShift
end

function Input.isDeleteKey(keyCode)
	return keyCode == Enum.KeyCode.Backspace
		or keyCode == Enum.KeyCode.Delete
end

function Input.isMultiSelectKey(keyCode)
	return Input.isShift(keyCode) or Input.isControl(keyCode)
end

function Input.isPlayPauseKey(keyCode)
	return keyCode == Enum.KeyCode.Space
end

function Input.isManipulatorToggleKey(keyCode)
	return keyCode == Enum.KeyCode.R
end

function Input.isWorldSpaceToggleKey(keyCode)
	return keyCode == Enum.KeyCode.L
end

function Input.isUp(keyCode)
	return keyCode == Enum.KeyCode.Up
end

function Input.isDown(keyCode)
	return keyCode == Enum.KeyCode.Down
end

function Input.isLeft(keyCode)
	return keyCode == Enum.KeyCode.Left
end

function Input.isRight(keyCode)
	return keyCode == Enum.KeyCode.Right
end

return Input