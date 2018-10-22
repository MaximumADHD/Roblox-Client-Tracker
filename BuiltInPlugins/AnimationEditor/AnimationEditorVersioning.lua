local versioning = {}

versioning.animationEditorLuaWidgetsFlagExists = nil
versioning.animationEditorLuaWidgetsFlagValue = nil

function versioning:isRunningLuaWidgetsVersion()
	if nil == versioning.animationEditorLuaWidgetsFlagExists then
		versioning.animationEditorLuaWidgetsFlagExists, versioning.animationEditorLuaWidgetsFlagValue = pcall(function () return settings():GetFFlag("AnimationEditorLuaWidgetsVersion") end)
	end
	return versioning.animationEditorLuaWidgetsFlagExists and versioning.animationEditorLuaWidgetsFlagValue
end

function versioning:isRunningViewportWidgetsVersion()
	return not versioning:isRunningLuaWidgetsVersion()
end

return versioning
