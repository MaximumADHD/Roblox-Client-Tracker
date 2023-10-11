local Workspace = game:GetService("Workspace")
local UserInputService = game:GetService("UserInputService")
local utils = require(script.Parent.ChromeUtils)
local ObservableValue = utils.ObservableValue

export type ObservableScreenSize = utils.ObservableValue<Vector2>
export type ObservableMobileDevice = utils.ObservableValue<boolean>

local screenSize: ObservableScreenSize = ObservableValue.new(Vector2.new(0, 0))
local mobileDevice: ObservableMobileDevice = ObservableValue.new(false)

local connectionViewportSize: RBXScriptConnection | nil = nil

function setCurrentCamera(camera: Camera?)
	if connectionViewportSize then
		pcall(function()
			connectionViewportSize:Disconnect()
		end)
		connectionViewportSize = nil
	end

	if camera then
		local platform = UserInputService:GetPlatform()
		mobileDevice:set(platform == Enum.Platform.IOS or platform == Enum.Platform.Android)

		connectionViewportSize = camera:GetPropertyChangedSignal("ViewportSize"):Connect(function()
			screenSize:set(Vector2.new(camera.ViewportSize.X, camera.ViewportSize.Y))
		end)
		screenSize:set(Vector2.new(camera.ViewportSize.X, camera.ViewportSize.Y))
	end
end

Workspace:GetPropertyChangedSignal("CurrentCamera"):Connect(function()
	setCurrentCamera(Workspace.CurrentCamera)
end)
setCurrentCamera(Workspace.CurrentCamera)

return {
	screenSize = screenSize,
	mobileDevice = mobileDevice,
	isSmallTouchScreen = function()
		-- clone of isSmallTouchScreen from Utility.lua
		local viewportSize = screenSize:get()
		return UserInputService.TouchEnabled and (viewportSize.Y < 500 or viewportSize.X < 700)
	end,
}
