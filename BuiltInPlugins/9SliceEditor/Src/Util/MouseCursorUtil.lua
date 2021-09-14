local pluginObject = nil
local currentIconPath = ""

local function setPluginObject(newPluginObject)
	pluginObject = newPluginObject
end

local function setMouseCursor(iconPath)
	if (iconPath == currentIconPath) then
		return
	end
	pluginObject:Activate(false)
	local mouse = pluginObject:GetMouse()
	mouse.Icon = iconPath
	currentIconPath = iconPath
end

local function resetMouseCursor()
	currentIconPath = ""
	pluginObject:Activate(false)
	local mouse = pluginObject:GetMouse()
	mouse.Icon = currentIconPath
end

MouseCursorUtil = {
	pluginObject = nil,
	currentIconPath = "",
	setPluginObject = setPluginObject,
	setMouseCursor = setMouseCursor,
	resetMouseCursor = resetMouseCursor,
}

return MouseCursorUtil
