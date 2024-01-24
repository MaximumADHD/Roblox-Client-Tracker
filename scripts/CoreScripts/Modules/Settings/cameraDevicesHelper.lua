local VideoCaptureService = game:GetService("VideoCaptureService")

local cameraDevices
VideoCaptureService.DevicesChanged:Connect(function()
	cameraDevices = VideoCaptureService:GetCameraDevices()
end)

local GetDevices = function ()
	if not cameraDevices then
		cameraDevices = VideoCaptureService:GetCameraDevices()
	end

	return cameraDevices
end

return {
	GetDevices = GetDevices
}
