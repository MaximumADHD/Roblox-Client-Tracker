local UserInputService = game:GetService("UserInputService")

local MB_TAP_LENGTH = 0.3 -- length of time for a short mouse button tap to be registered

local rmbDown, rmbUp
do
	local rmbDownBindable = Instance.new("BindableEvent")
	local rmbUpBindable = Instance.new("BindableEvent")

	rmbDown = rmbDownBindable.Event
	rmbUp = rmbUpBindable.Event

	UserInputService.InputBegan:Connect(function(input, gpe)
		if not gpe and input.UserInputType == Enum.UserInputType.MouseButton2 then
			rmbDownBindable:Fire()
		end
	end)

	UserInputService.InputEnded:Connect(function(input, gpe)
		if input.UserInputType == Enum.UserInputType.MouseButton2 then
			rmbUpBindable:Fire()
		end
	end)
end

local holdPan = false
local togglePan = false
local lastRmbDown = 0 -- tick() timestamp of the last right mouse button down event

local CameraInput = {}

function CameraInput.getHoldPan()
	return holdPan
end

function CameraInput.getTogglePan()
	return togglePan
end

function CameraInput.getPanning()
	return togglePan or holdPan
end

function CameraInput.setTogglePan(value)
	togglePan = value
end

local cameraToggleInputEnabled = false
local rmbDownConnection
local rmbUpConnection

function CameraInput.enableCameraToggleInput()
	if cameraToggleInputEnabled then
		return
	end
	cameraToggleInputEnabled = true

	holdPan = false
	togglePan = false

	if rmbDownConnection then
		rmbDownConnection:Disconnect()
	end

	if rmbUpConnection then
		rmbUpConnection:Disconnect()
	end

	rmbDownConnection = rmbDown:Connect(function()
		holdPan = true
		lastRmbDown = tick()
	end)

	rmbUpConnection = rmbUp:Connect(function()
		holdPan = false
		if tick() - lastRmbDown < MB_TAP_LENGTH and (togglePan or UserInputService:GetMouseDelta().Magnitude < 2) then
			togglePan = not togglePan
		end
	end)
end

function CameraInput.disableCameraToggleInput()
	if not cameraToggleInputEnabled then
		return
	end
	cameraToggleInputEnabled = false

	if rmbDownConnection then
		rmbDownConnection:Disconnect()
		rmbDownConnection = nil
	end
	if rmbUpConnection then
		rmbUpConnection:Disconnect()
		rmbUpConnection = nil
	end
end

return CameraInput