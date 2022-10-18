local MouseCursorManager = {}
local pendingCursor = nil
local cursorLocked = false

function MouseCursorManager.updateMouse(pluginMouse)
	local newCursor = pendingCursor

	if not newCursor then
		newCursor = "rbxasset://SystemCursors/Arrow"
	end

	assert(pluginMouse)
	local mouse = pluginMouse:get()
	if mouse then
		mouse.Icon = newCursor
	end
end

function MouseCursorManager.setCursor(pluginMouse, cursorTexture)
	pendingCursor = cursorTexture

	if not cursorLocked then
		MouseCursorManager.updateMouse(pluginMouse)
	end
end

function MouseCursorManager.resetCursor(pluginMouse)
	MouseCursorManager.setCursor(pluginMouse, nil)
end

function MouseCursorManager.setLocked(pluginMouse, locked: boolean)
	cursorLocked = locked

	if not locked then
		MouseCursorManager.updateMouse(pluginMouse)
	end
end

return MouseCursorManager
