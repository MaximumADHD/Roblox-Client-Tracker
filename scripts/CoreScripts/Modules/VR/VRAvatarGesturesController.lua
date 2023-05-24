--!nonstrict
-- This script is responsible for allowing the in game avatar to mirror the actions
-- of VR Controllers and head tilt. The Avatar must be R15 with all the necessary parts and
-- attachments

local VRService = game:GetService("VRService")
local Players = game:GetService("Players")
local RunService = game:GetService("RunService")
local CoreGui = game:GetService("CoreGui")
local RobloxGui = CoreGui:WaitForChild("RobloxGui")
local VRUtil = require(RobloxGui.Modules.VR.VRUtil)

export type VRAvatarGesturesControllerType = {
	-- Methods
	new: () -> any,
	updateCFrames: (BasePart, Enum.UserCFrame, CFrame) -> nil,
	connectInputCFrames: () -> nil
}

local VRAvatarGesturesController: VRAvatarGesturesControllerType = {} :: VRAvatarGesturesControllerType
(VRAvatarGesturesController :: any).__index = VRAvatarGesturesController

function VRAvatarGesturesController.new()
	local self: any = setmetatable({}, VRAvatarGesturesController)

	self:connectInputCFrames()

	return (self :: any) :: VRAvatarGesturesControllerType
end

function VRAvatarGesturesController:updateCFrames(partName, cframeType, cframeOffset)
	if not Players.LocalPlayer then
		return
	end
		
	if not Players.LocalPlayer.Character then
		return
	end
		
	local part = Players.LocalPlayer.Character:FindFirstChild(partName)
	if not part then
		return
	end
	
	local camera = workspace.CurrentCamera :: Camera
	if not camera then
		return
	end
	
	local attachment = part:FindFirstChild(partName .. "Attachment")
	if not attachment then
		return
	end
	
	local alignPosition = part:FindFirstChild(partName .. "AlignPosition")
	if not alignPosition then
		return
	end
	
	local alignOrientation = part:FindFirstChild(partName .. "AlignOrientation")
	if not alignOrientation then
		return
	end
	
	
	if VRService.VREnabled then
		local worldCFrame = VRUtil.GetUserCFrameWorldSpace(cframeType)
		
		local head = Players.LocalPlayer.Character:FindFirstChild("Head")
		
		-- third person
		if Players.LocalPlayer:GetAttribute("InFirstPerson") == false and head then
			local headWorld = VRUtil.GetUserCFrameWorldSpace(Enum.UserCFrame.Head)			

			if partName ~= "VRHead" then
				alignPosition.Position = head.CFrame:ToWorldSpace(headWorld:ToObjectSpace(worldCFrame)).Position
				alignOrientation.CFrame = worldCFrame * CFrame.Angles(math.pi/2, 0, 0)
			else
				local head = Players.LocalPlayer.Character:FindFirstChild("Head")
				if head then
					alignPosition.Position = head.Position
				else
					alignPosition.Position = Players.LocalPlayer.Character.WorldPivot
				end
				alignOrientation.CFrame = worldCFrame
			end
		else

			alignPosition.Position = worldCFrame.Position
			if partName ~= "VRHead" then
				alignOrientation.CFrame = worldCFrame * CFrame.Angles(math.pi/2, 0, 0)
			else
				alignOrientation.CFrame = worldCFrame
			end
		end
		
	else -- Simulate VR Input
		local hrp = Players.LocalPlayer.Character:FindFirstChild("HumanoidRootPart")
		
		local cframe
		if partName ~= "VRHead" then
			cframe =  hrp.CFrame  * cframeOffset * CFrame.Angles(0, 0, math.rad(time() * 30)) * CFrame.new(1, 0, -0.5)
		else
			cframe = hrp.CFrame * cframeOffset
		end
		
		if hrp then
			alignPosition.Position = cframe.Position
			alignOrientation.CFrame = cframe
		end
	end
end

function VRAvatarGesturesController:connectInputCFrames()
	if VRService.VREnabled then
		VRService.UserCFrameChanged:Connect(function(type, cframe)
			if type == Enum.UserCFrame.LeftHand then
				self:updateCFrames("VRLeftHand", type, cframe)
			elseif type == Enum.UserCFrame.RightHand then
				self:updateCFrames("VRRightHand", type, cframe)
			elseif type == Enum.UserCFrame.Head then
				self:updateCFrames("VRHead", type, cframe)
			end
		end)
	else -- Simulate VR Input
		RunService:BindToRenderStep("SimulateVRHands", Enum.RenderPriority.Character.Value, function()
			self:updateCFrames("VRLeftHand", Enum.UserCFrame.LeftHand, CFrame.new(-0.5, 0, -0.5))
			self:updateCFrames("VRRightHand", Enum.UserCFrame.RightHand, CFrame.new(0.5, 0, -0.5))
			self:updateCFrames("VRHead", Enum.UserCFrame.Head, CFrame.new(0, 1, 0))
		end)
	end
end

return VRAvatarGesturesController.new()