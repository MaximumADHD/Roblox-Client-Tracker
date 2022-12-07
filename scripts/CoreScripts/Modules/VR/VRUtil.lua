--!nonstrict
--Modules/VR/VRUtil.lua

local VRService = game:GetService("VRService")

local VRUtil = {}

function VRUtil.GetUserCFrameWorldSpace(userCFrameType)
	local userCFrame = VRService:GetUserCFrame(userCFrameType)

	if not (workspace.CurrentCamera :: Camera).HeadLocked then
		local headCFrame = VRService:GetUserCFrame(Enum.UserCFrame.Head)
		userCFrame = headCFrame:Inverse() * userCFrame
	end

	return (workspace.CurrentCamera :: Camera).CFrame * (CFrame.new(userCFrame.p * (workspace.CurrentCamera :: Camera).HeadScale) * (userCFrame - userCFrame.p))
end

return VRUtil
