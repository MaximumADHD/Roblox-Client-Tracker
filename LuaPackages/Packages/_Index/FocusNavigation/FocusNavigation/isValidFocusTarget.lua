local function isValidFocusTarget(maybeInstance: Instance?): (boolean, string?)
	if not maybeInstance then
		return false, "`nil` value provided to isValidFocusTarget"
	end
	local instance = maybeInstance :: Instance
	if not instance:IsA("GuiBase2d") then
		return false, string.format("provided Instance is of class %s, which is not a GuiBase2d", instance.ClassName)
	end
	if not (instance :: GuiBase2d):FindFirstAncestorWhichIsA("LayerCollector") then
		return false, "provided Instance is not a descendant of a LayerCollector like a ScreenGui or SurfaceGui"
	end
	if not (instance :: GuiBase2d):FindFirstAncestorWhichIsA("BasePlayerGui") then
		return false, "provided Instance is not a descendant of a BasePlayerGui like PlayerGui or CoreGui"
	end

	return true
end

return isValidFocusTarget
