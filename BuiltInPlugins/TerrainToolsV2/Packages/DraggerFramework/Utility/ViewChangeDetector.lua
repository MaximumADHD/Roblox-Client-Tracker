--[[
	Checks whether the current mouse location or camera orientation has changed.
	Used to response to the world position under the mouse changing.
]]

local DraggerFramework = script.Parent.Parent

local getFFlagMoreLuaDraggerFixes = require(DraggerFramework.Flags.getFFlagMoreLuaDraggerFixes)

local Workspace = game:GetService("Workspace")

local ViewChangeDetector = {}
ViewChangeDetector.__index = ViewChangeDetector

function ViewChangeDetector.new(mouse)
	if getFFlagMoreLuaDraggerFixes() then
		local currentCamera = Workspace.CurrentCamera
		return setmetatable({
			_mouse = mouse,
			_lastCameraCFrame = currentCamera and currentCamera.CFrame or CFrame.new(),
			_lastMouseX = mouse.X,
			_lastMouseY = mouse.Y,
		}, ViewChangeDetector)
	else
		return setmetatable({
			_mouse = mouse,
			_lastCameraCFrame = Workspace.CurrentCamera.CFrame,
			_lastMouseX = mouse.X,
			_lastMouseY = mouse.Y,
		}, ViewChangeDetector)
	end
end

function ViewChangeDetector:poll()
	local camera = Workspace.CurrentCamera
	if getFFlagMoreLuaDraggerFixes() and not camera then
		return false
	end
	
	local mouse = self._mouse

	if (self._lastCameraCFrame ~= camera.CFrame) or (self._lastMouseX ~= mouse.X) or (self._lastMouseY ~= mouse.Y) then
		self._lastCameraCFrame = camera.CFrame
		self._lastMouseX = mouse.X
		self._lastMouseY = mouse.Y
		return true
	end
	return false
end

return ViewChangeDetector
