--!nonstrict
--Modules/VR/VRUtil.lua

local CorePackages = game:GetService("CorePackages")

local EngineFeatureEnableVRUpdate3 = game:GetEngineFeature("EnableVRUpdate3")
local GetFFlagIGMVRQuestControlsInstructions =
require(CorePackages.Workspace.Packages.SharedFlags).GetFFlagIGMVRQuestControlsInstructions

local VRService = game:GetService("VRService")
if GetFFlagIGMVRQuestControlsInstructions() then
	VRService = require(script.Parent.VRServiceWrapper)
end

local VRUtil = {}

function VRUtil.GetUserCFrameWorldSpace(userCFrameType)
	local userCFrame = VRService:GetUserCFrame(userCFrameType)

	if not (workspace.CurrentCamera :: Camera).HeadLocked then
		local headCFrame = VRService:GetUserCFrame(Enum.UserCFrame.Head)
		userCFrame = headCFrame:Inverse() * userCFrame
	end

	return (workspace.CurrentCamera :: Camera).CFrame * (CFrame.new(userCFrame.p * (workspace.CurrentCamera :: Camera).HeadScale) * (userCFrame - userCFrame.p))
end

if GetFFlagIGMVRQuestControlsInstructions() then
	function VRUtil.getCurrentControllerType()
		local currentVRDeviceName = EngineFeatureEnableVRUpdate3 and VRService.VRDeviceName or nil

		local isQuest = (currentVRDeviceName:match("Oculus") or
			currentVRDeviceName:match("Meta") or
			currentVRDeviceName:match("OpenXr") or
			currentVRDeviceName:match("OpenXR"))

		if currentVRDeviceName:match("Vive") then
			return "Vive"
		elseif currentVRDeviceName:match("Rift") then
			return "Rift"
		elseif currentVRDeviceName:match("Index") then
			return "Index"
		elseif isQuest then
			return "Touch"
		else
			return "Rift"
		end
	end
end


return VRUtil
