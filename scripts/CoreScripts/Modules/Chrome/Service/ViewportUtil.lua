local Workspace = game:GetService("Workspace")
local UserInputService = game:GetService("UserInputService")
local utils = require(script.Parent.ChromeUtils)
local ObservableValue = utils.ObservableValue

export type ObservableScreenSize = utils.ObservableValue<Vector2>
export type ObservableMobileDevice = utils.ObservableValue<boolean>

export type ViewportInfo = {
	size: Vector2,
	portraitOrientation: boolean,
	tinyPortrait: boolean,
	isMobileDevice: boolean,
}

export type ObservableViewport = utils.ObservableValue<ViewportInfo>

local screenSize: ObservableScreenSize = ObservableValue.new(Vector2.new(0, 0))
local mobileDevice: ObservableMobileDevice = ObservableValue.new(false)
local connectionViewportSize: RBXScriptConnection | nil = nil
local smallPortraitLimitPx = 360

function createViewportInfo(viewportSize: Vector2)
	local isPortrait = viewportSize.Y > viewportSize.X
	local platform = UserInputService:GetPlatform()
	local isMobileDevice = platform == Enum.Platform.IOS or platform == Enum.Platform.Android
	return {
		size = viewportSize,
		portraitOrientation = isPortrait,
		tinyPortrait = isMobileDevice and isPortrait and viewportSize.X < smallPortraitLimitPx,
		isMobileDevice = isMobileDevice,
	}
end

local viewport: ObservableViewport = ObservableValue.new(createViewportInfo(Vector2.zero))

function updateViewportSize(cameraViewportSize: Vector2)
	local viewportSize = Vector2.new(cameraViewportSize.X, cameraViewportSize.Y)
	screenSize:set(viewportSize)
	viewport:set(createViewportInfo(viewportSize))
end

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
			updateViewportSize(camera.ViewportSize)
		end)
		updateViewportSize(camera.ViewportSize)
	end
end

Workspace:GetPropertyChangedSignal("CurrentCamera"):Connect(function()
	setCurrentCamera(Workspace.CurrentCamera)
end)
setCurrentCamera(Workspace.CurrentCamera)

return {
	screenSize = screenSize,
	mobileDevice = mobileDevice,
	viewport = viewport,
	isSmallTouchScreen = function()
		-- clone of isSmallTouchScreen from Utility.lua
		local viewportSize = screenSize:get()
		return UserInputService.TouchEnabled and (viewportSize.Y < 500 or viewportSize.X < 700)
	end,
}
