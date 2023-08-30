local CorePackages = game:GetService("CorePackages")
local CoreGui = game:GetService("CoreGui")
local ReplicatedStorage = game:GetService("ReplicatedStorage")
local RobloxGui = CoreGui:WaitForChild("RobloxGui")
local CoreGuiModules = RobloxGui:WaitForChild("Modules")

-- exposing head tracking data through a bindable function for Iris
local getFFlagExposeHeadTrackingData = require(CorePackages.Workspace.Packages.SharedFlags).GetFFlagExposeHeadTrackingData

if getFFlagExposeHeadTrackingData() then
    local bindableFunction: BindableFunction = Instance.new("BindableFunction")
    bindableFunction.Name = "GetHeadTrackingCFrameFromPlayer"
    bindableFunction.Parent = ReplicatedStorage

    local function getTrackerDataFromPlayingTracks(playingTracks): CFrame?
        for i, trackS in playingTracks do
            if trackS.Animation:IsA("TrackerStreamAnimation") then
                local _, trackerData: CFrame?, _ = trackS:GetTrackerData()

                return trackerData
            end
        end

        return nil
    end

    bindableFunction.OnInvoke = function(player): CFrame?
        local character = player.Character
        local humanoid = character:FindFirstChild("Humanoid")
        local animator = humanoid:FindFirstChildOfClass("Animator")
        local playingTracks = animator:GetPlayingAnimationTracksCoreScript()

        return getTrackerDataFromPlayingTracks(playingTracks)
    end
end
