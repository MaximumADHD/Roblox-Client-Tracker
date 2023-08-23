--!strict
-- Hook that returns the current state of animation tracking
local CorePackages = game:GetService("CorePackages")
local Packages = CorePackages.Packages
local React = require(Packages.React)
local VideoCaptureService = game:GetService("VideoCaptureService")
local FaceAnimatorService = game:GetService("FaceAnimatorService")
local FaceChatUtils = require(script.Parent.Parent.Utils.FaceChatUtils)

local CoreGui = game:GetService("CoreGui")
local RobloxGui = CoreGui:WaitForChild("RobloxGui")
local Analytics = require(RobloxGui.Modules.SelfView.Analytics).new()

local TrackerMode = Enum.TrackerMode
type TrackerMode = Enum.TrackerMode

-- As of now we always start with no tracking but this is left here
-- in case we want to startup with some tracking in the future.
local trackerMode: TrackerMode = FaceChatUtils.getTrackerMode()
local savedCamState: boolean = trackerMode == TrackerMode.Video or trackerMode == TrackerMode.AudioVideo
local savedMicState: boolean = trackerMode == TrackerMode.Audio or trackerMode == TrackerMode.AudioVideo

return function(): TrackerMode
	local trackerMode: TrackerMode, setTrackerMode: (TrackerMode) -> () = React.useState(TrackerMode.None)

	local updateTrackerMode = React.useCallback(function()
		local trackerMode: TrackerMode = FaceChatUtils.getTrackerMode()

		-- Analytics
		-- Report cam/mic state if changed
		local newCamState: boolean = trackerMode == TrackerMode.Video or trackerMode == TrackerMode.AudioVideo
		if newCamState ~= savedCamState then
			Analytics:reportCamState(newCamState)
			savedCamState = newCamState
		end
		local newMicState: boolean = trackerMode == TrackerMode.Audio or trackerMode == TrackerMode.AudioVideo
		if newMicState ~= savedMicState then
			Analytics:reportMicState(newMicState)
			savedMicState = newMicState
		end

		setTrackerMode(trackerMode)
	end)

	React.useEffect(function()
		if VideoCaptureService then
			updateTrackerMode()
			local videoCaptureStartedConnection = VideoCaptureService.Started:Connect(updateTrackerMode)
			local videoCaptureStoppedConnection = VideoCaptureService.Stopped:Connect(updateTrackerMode)
			local videoCaptureDevicesChangedConnection = VideoCaptureService.DevicesChanged:Connect(updateTrackerMode)
			local videoAnimationEnabledConnection =
				FaceAnimatorService:GetPropertyChangedSignal("VideoAnimationEnabled"):Connect(updateTrackerMode)
			local audioAnimationEnabledConnection =
				FaceAnimatorService:GetPropertyChangedSignal("AudioAnimationEnabled"):Connect(updateTrackerMode)
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
