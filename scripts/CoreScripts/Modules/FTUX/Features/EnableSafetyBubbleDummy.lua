local RunService = game:GetService("RunService")
local VRService = game:GetService("VRService")
local UserGameSettings = UserSettings():GetService("UserGameSettings")

local CoreGui = game:GetService("CoreGui")
local Workspace = game:GetService("Workspace")
local RobloxGui = CoreGui:WaitForChild("RobloxGui")

local GenerateDummy = require(script.Parent.Parent.Utility.GenerateDummy)
local currentCamera = workspace.CurrentCamera :: Camera

local SafetyBubbleEnabled = require(RobloxGui.Modules.Flags.FFlagSafetyBubbleEnabled)

-- Define the minimum and maximum transparency values
local MAX_SAFETY_DIST = require(RobloxGui.Modules.Flags.FIntSafetyBubbleRadius)
local MAX_TRANSPARENCY = require(RobloxGui.Modules.Flags.FIntSafetyBubbleTransparencyPercent) * 0.01

--Check whether safety bubble is on or off in settings
local safetyBubbleEnabled = true

--Safety Bubble Radius
local safetyRadius = math.max(MAX_SAFETY_DIST * currentCamera.HeadScale, 0.1)

local dummy
function initDummy()
	dummy = GenerateDummy(Vector3.new(0, 8.8, -50.5), Vector3.new(0, 180, 0))
	dummy.Parent = Workspace
end

local function calculateTransparency(player, safetyBubbleEnabled)
	if not safetyBubbleEnabled then
		return 0
	end

	local userHeadCF = VRService:GetUserCFrame(Enum.UserCFrame.Head)
	local userHeadCameraCF = currentCamera.CFrame * userHeadCF
	local dist = (userHeadCameraCF.Position - dummy.HumanoidRootPart.Position).Magnitude
	local transparency = 0

	local maxTransparencyRadius = safetyRadius * 0.75
	if dist < maxTransparencyRadius then
		transparency = MAX_TRANSPARENCY -- set to max transparency
	else
		local transparencyDelta = 1.0 - ((dist - maxTransparencyRadius) / (safetyRadius - maxTransparencyRadius))
		transparency = transparencyDelta * MAX_TRANSPARENCY -- linear ramp of transparency
	end

	transparency = math.clamp(transparency, 0, 1)

	return transparency
end

function EnableSafetyBubbleDummy()
	if not SafetyBubbleEnabled then
		return
	end

	initDummy()

	local function onStep()
		local dummyParts = dummy:GetChildren()

		if UserGameSettings.VRSafetyBubbleMode == Enum.VRSafetyBubbleMode.Anyone then
			safetyBubbleEnabled = false
		else
			safetyBubbleEnabled = true
		end

		for _, player in ipairs(game.Players:GetPlayers()) do
			if player.Character then
				local transparency = calculateTransparency(player, safetyBubbleEnabled)

				--Manually set face transparency
				dummy.Head.Face.Transparency = transparency

				for i = 1, #dummyParts do
					if dummyParts[i]:IsA("Part") then
						dummyParts[i].Transparency = transparency
					end
				end
			end
		end
	end

	RunService.Stepped:Connect(onStep)
end

return EnableSafetyBubbleDummy
