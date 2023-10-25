-- Multiple touches should not affect dragging the Self View. Only the original touch.
-- the check inputType == Enum.UserInputType.Touch is so it does not block mouse dragging
return function(inputObj: InputObject?, inputChangedObj: InputObject?)
	if inputObj == nil or inputChangedObj == nil then
		return false
	else
		return inputObj.UserInputType == Enum.UserInputType.Touch and inputChangedObj ~= inputObj
	end
end
