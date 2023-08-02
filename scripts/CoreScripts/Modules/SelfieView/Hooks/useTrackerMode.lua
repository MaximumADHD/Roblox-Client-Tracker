--!strict
-- Hook that returns the current state of animation tracking
local CorePackages = game:GetService("CorePackages")
local Packages = CorePackages.Packages
local React = require(Packages.React)
local VideoCaptureService = game:GetService("VideoCaptureService")
local FaceAnimatorService = game:GetService("FaceAnimatorService")

local TrackerMode = Enum.TrackerMode
type TrackerMode = Enum.TrackerMode

return function(): TrackerMode
	local trackerMode: TrackerMode, setTrackerMode: (TrackerMode) -> () = React.useState(TrackerMode.None)

	local updateTrackerMode = function()
		local trackerMode: TrackerMode = TrackerMode.None
		if FaceAnimatorService.AudioAnimationEnabled and not FaceAnimatorService.VideoAnimationEnabled then
			trackerMode = TrackerMode.Audio
		elseif
			not FaceAnimatorService.AudioAnimationEnabled
			and FaceAnimatorService.VideoAnimationEnabled
			and FaceAnimatorService:IsStarted()
		then
			trackerMode = TrackerMode.Video
		elseif
			FaceAnimatorService.AudioAnimationEnabled
			and FaceAnimatorService.VideoAnimationEnabled
			and FaceAnimatorService:IsStarted()
		then
			trackerMode = TrackerMode.AudioVideo
		end
		setTrackerMode(trackerMode)
	end

	React.useEffect(function()
		if VideoCaptureService then
			updateTrackerMode()
			local videoCaptureStartedConnection = VideoCaptureService.Started:Connect(function()
				updateTrackerMode()
			end)
			local videoCaptureStoppedConnection = VideoCaptureService.Stopped:Connect(function()
				updateTrackerMode()
			end)
			local videoCaptureDevicesChangedConnection = VideoCaptureService.DevicesChanged:Connect(function()
				updateTrackerMode()
			end)
			local videoAnimationEnabledConnection = FaceAnimatorService
				:GetPropertyChangedSignal("VideoAnimationEnabled")
				:Connect(function()
					updateTrackerMode()
				end)
			local audioAnimationEnabledConnection = FaceAnimatorService
				:GetPropertyChangedSignal("AudioAnimationEnabled")
				:Connect(function()
					updateTrackerMode()
				end)
			return function()
				videoCaptureStartedConnection:Disconnect()
				videoCaptureStoppedConnection:Disconnect()
				videoCaptureDevicesChangedConnection:Disconnect()
				videoAnimationEnabledConnection:Disconnect()
				audioAnimationEnabledConnection:Disconnect()
			end
		end
		return function() end
	end, {})

	return trackerMode
end
