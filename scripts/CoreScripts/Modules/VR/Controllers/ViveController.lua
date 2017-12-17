local VRService 	= game:GetService("VRService")
local CoreGui 		= game:GetService("CoreGui")

local RobloxGui 	= CoreGui.RobloxGui
local CommonUtil	= require(RobloxGui.Modules.Common.CommonUtil)

local EnableVRServiceTouchpadAPISuccess, EnableVRServiceTouchpadAPIValue = pcall(function() return settings():GetFFlag("EnableVRServiceTouchpadAPI") end)
local FFlagEnableVRServiceTouchpadAPI = EnableVRServiceTouchpadAPISuccess, EnableVRServiceTouchpadAPIValue

local PARTS_INFO = {
	Body = {
		size = Vector3.new(0.391, 0.277, 0.731),
		meshId = "rbxassetid://433286977",
		textureId = "rbxassetid://433287000",
		offset = CFrame.new(0, -0.115, 0.213)
	},
	RightGrip = {
		meshId = "rbxassetid://433290663",
		textureId = "rbxassetid://433290688",
		offset = CFrame.new(0.057, -0.047, 0.29),
		moveOffset = CFrame.new(-0.005, 0, 0)
	},
	LeftGrip = {
		meshId = "rbxassetid://433289821",
		textureId = "rbxassetid://433289832",
		offset = CFrame.new(-0.057, -0.047, 0.29),
		moveOffset = CFrame.new(0.005, 0, 0)
	},
	SystemButton = {
		meshId = "rbxassetid://433291265",
		textureId = "rbxassetid://433291278",
		offset = CFrame.new(0, 0.005, 0.294),
		moveOffset = CFrame.new(Vector3.new(0, 0.997420907, 0.071774438) * -0.001)
	},
	MenuButton = {
		meshId = "rbxassetid://433288124",
		textureId = "rbxassetid://433288134",
		offset = CFrame.new(0, 0.016, 0.068),
		moveOffset = CFrame.new(Vector3.new(0, 0.999877751, -0.0156304892) * -0.001)
	},
	Trackpad = {
		meshId = "rbxassetid://433288821",
		textureId = "rbxassetid://433288836",
		offset = CFrame.new(0, 0.000, 0.163),
		moveOffset = CFrame.new(Vector3.new(0, 0.993506849, 0.113772281) * -0.001)
	},
	Trigger = {
		meshId = "rbxassetid://433288767",
		textureId = "rbxassetid://433288775",
		offset = CFrame.new(0, -0.093, 0.163),
	},
	LED = {
		meshId = "rbxassetid://433293218",
		textureId = "rbxassetid://433293231",
		offset = CFrame.new(0, 0.007, 0.32)
	},
	ButtonA = {
		meshId = "rbxassetid://922444331",
		textureId = "rbxasset://textures/ui/VR/ButtonA.png",
		offset = CFrame.new(-0, 0.0115499999, 0.197307006) * CFrame.Angles(0, math.pi, 0),
		moveOffset = CFrame.new(0, -0.005, 0)
	},
	ButtonB = {
		meshId = "rbxassetid://922454202",
		textureId = "rbxasset://textures/ui/VR/ButtonB.png",
		offset = CFrame.new(0.0391042456, 0.0154935224, 0.161779419) * CFrame.Angles(0, math.pi, 0),
		moveOffset = CFrame.new(0, -0.005, 0)
	},
	ButtonX = {
		meshId = "rbxassetid://922453111",
		textureId = "rbxasset://textures/ui/VR/ButtonX.png",
		offset = CFrame.new(-0.0390719995, 0.0154770007, 0.161733001) * CFrame.Angles(0, math.pi, 0),
		moveOffset = CFrame.new(0, -0.005, 0)
	},
	ButtonY = {
		meshId = "rbxassetid://922455502",
		textureId = "rbxasset://textures/ui/VR/ButtonY.png",
		offset = CFrame.new(0, 0.0197229274, 0.126810834) * CFrame.Angles(0, math.pi, 0),
		moveOffset = CFrame.new(0, -0.005, 0)
	}
}
local MATERIAL = Enum.Material.Granite
local SCALE = Vector3.new(0.033, 0.033, 0.033)

local ViveController = {}
ViveController.__index = ViveController

local touchpadForUserCFrame = FFlagEnableVRServiceTouchpadAPI and {
	[Enum.UserCFrame.LeftHand] = Enum.VRTouchpad.Left,
	[Enum.UserCFrame.RightHand] = Enum.VRTouchpad.Right
} or {}

function ViveController.new(userCFrame)
	if not FFlagEnableVRServiceTouchpadAPI then
		return nil
	end

	local self = setmetatable({}, ViveController)
	self.userCFrame = userCFrame
	self.touchpad = touchpadForUserCFrame[self.userCFrame]
	self.touchpadMode = VRService:GetTouchpadMode(self.touchpad)
	self.onTouchpadModeChangedConn = VRService.TouchpadModeChanged:connect(function(...)
		self:onTouchpadModeChanged(...)
	end)

	self.model = CommonUtil.Create("Model") {
		Name = "ViveController",
		Archivable = false
	}	
	
	self.origin = CommonUtil.Create("Part") {
		Parent = self.model,		
		Name = "Origin",
		Anchored = false,
		Transparency = 1,
		Size = Vector3.new(0.05, 0.05, 0.05),
		CanCollide = false
	}
	
	self.parts = {}
	
	for partName, partInfo in pairs(PARTS_INFO) do
		local partScale = SCALE
		if partInfo.scale then
			partScale = partScale * partInfo.scale
		end

		local part = CommonUtil.Create("Part") {
			Parent = self.model,
			Name = partName,
			Anchored = false,
			CanCollide = false,
			Material = MATERIAL,
			Size = partInfo.size or Vector3.new(0.05, 0.05, 0.05),
			CFrame = self.origin.CFrame * partInfo.offset
		}
		local mesh = CommonUtil.Create("SpecialMesh") {
			Parent = part,
			Name = "Mesh",
			MeshId = partInfo.meshId,
			TextureId = partInfo.textureId,
			Scale = partScale
		}
		local weld = CommonUtil.Create("Weld") {
			Parent = part,
			Name = "Weld",
			Part0 = self.origin,
			Part1 = part,
			C0 = partInfo.offset
		}

		self.parts[partName] = part
	end

	local trackpadIndicator = CommonUtil.Create("Part") {
		Parent = self.model,
		Name = "TrackpadIndicator",
		Material = Enum.Material.Neon,
		BrickColor = BrickColor.new("Institutional white"),
		Shape = Enum.PartType.Ball,
		Anchored = false,
		Transparency = 1,
		Size = Vector3.new(0.05, 0.05, 0.05),
		CanCollide = false
	}
	CommonUtil.Create("Weld") {
		Parent = trackpadIndicator,
		Name = "Weld",
		Part0 = self.origin,
		Part1 = trackpadIndicator,
		C0 = PARTS_INFO.Trackpad.offset
	}
	self.parts.TrackpadIndicator = trackpadIndicator
	self.model.PrimaryPart = self.origin

	self:onTouchpadModeChanged(self.touchpad, VRService:GetTouchpadMode(self.touchpad))

	return self
end

function ViveController:setPartVisible(partName, visible)
	local part = self.parts[partName]
	if part then
		part.Transparency = visible and 0 or 1
	end
end

function ViveController:setABXYEnabled(enabled)
	self:setPartVisible("ButtonA", enabled)
	self:setPartVisible("ButtonB", enabled)
	self:setPartVisible("ButtonX", enabled)
	self:setPartVisible("ButtonY", enabled)
end

function ViveController:setCFrame(cframe)
	self.model:SetPrimaryPartCFrame(cframe)
end

function ViveController:setButtonState(partName, depressed)
	local partInfo = PARTS_INFO[partName]
	if not partInfo then return end

	local offset = partInfo.offset
	local moveOffset = partInfo.moveOffset

	if offset and moveOffset then
		local part = self.parts[partName]
		if part then
			local mesh = part:FindFirstChild("Mesh")
			local weld = part:FindFirstChild("Weld")
			if weld then
				if depressed then
					part.CFrame = self.origin.CFrame * offset * moveOffset
					weld.C0 = offset * moveOffset
				else
					part.CFrame = self.origin.CFrame * offset
					weld.C0 = offset
				end
			end
			if mesh then
				if depressed then
					mesh.VertexColor = Vector3.new(0.5, 0.5, 0.5)
				else
					mesh.VertexColor = Vector3.new(1, 1, 1)
				end
			end
		end
	end
end

function ViveController:setTriggerState(state)
	local partInfo = PARTS_INFO.Trigger
	local offset = partInfo.offset

	local part = self.parts.Trigger
	local weld = part:FindFirstChild("Weld")
	if weld then
		local angleMin, angleMax = math.rad(0), math.rad(-20)
		local angleRange = angleMax - angleMin
		local rotCenter = Vector3.new(0, 0.05, -0.025)
		local angle = (state * angleRange) + angleMin
		local newOffset = offset * CFrame.new(rotCenter) * CFrame.Angles(angle, 0, 0) * CFrame.new(-rotCenter)
		part.CFrame = self.origin.CFrame * newOffset
		weld.C0 = newOffset
	end
end

function ViveController:setTrackpadState(pos)
	local part = self.parts.TrackpadIndicator
	local weld = part:FindFirstChild("Weld")
	if weld then
		local pos3d = Vector3.new(pos.X, 0, -pos.Y) * 0.055
		local trackpadSpace = CFrame.Angles(math.rad(6.5), 0, 0) * CFrame.new(0, 0.002 * (pos.magnitude ^ 3), 0)
		local newOffset = PARTS_INFO.Trackpad.offset  * CFrame.new(0, 0.01, 0) * trackpadSpace:toWorldSpace(CFrame.new(pos3d))
		part.CFrame = self.origin.CFrame * newOffset
		weld.C0 = newOffset
	end
end

function ViveController:onButtonInputChanged(inputObject, depressed)
	--Trackpad is bound to L3 or R3 depending on controller
	if 	(self.userCFrame == Enum.UserCFrame.RightHand and inputObject.KeyCode == Enum.KeyCode.ButtonR3) or
		(self.userCFrame == Enum.UserCFrame.LeftHand and inputObject.KeyCode == Enum.KeyCode.ButtonL3) then
		self:setButtonState("Trackpad", depressed)
		return
	end

	--Grips are bound to L2 or R2 depending on controller
	if 	(self.userCFrame == Enum.UserCFrame.RightHand and inputObject.KeyCode == Enum.KeyCode.ButtonR1) or
		(self.userCFrame == Enum.UserCFrame.LeftHand and inputObject.KeyCode == Enum.KeyCode.ButtonL1) then
		self:setButtonState("LeftGrip", depressed)
		self:setButtonState("RightGrip", depressed)
		return
	end

	--ButtonStart on the right, ButtonSelect on the left
	if 	(self.userCFrame == Enum.UserCFrame.RightHand and inputObject.KeyCode == Enum.KeyCode.ButtonStart) or
		(self.userCFrame == Enum.UserCFrame.LeftHand and inputObject.KeyCode == Enum.KeyCode.ButtonSelect) then
		self:setButtonState("MenuButton", depressed)
		return
	end

	--If the touchpad mode is ABXY, then we have four buttons to deal with
	if self.touchpadMode == Enum.VRTouchpadMode.ABXY then
		if inputObject.KeyCode == Enum.KeyCode.ButtonA then
			self:setButtonState("ButtonA", depressed)
			return
		end
		if inputObject.KeyCode == Enum.KeyCode.ButtonB then
			self:setButtonState("ButtonB", depressed)
			return
		end
		if inputObject.KeyCode == Enum.KeyCode.ButtonX then
			self:setButtonState("ButtonX", depressed)
			return
		end
		if inputObject.KeyCode == Enum.KeyCode.ButtonY then
			self:setButtonState("ButtonY", depressed)
			return
		end
	end
end

function ViveController:onInputBegan(inputObject)
	self:onButtonInputChanged(inputObject, true)
	if 	(self.userCFrame == Enum.UserCFrame.RightHand and inputObject.KeyCode == Enum.KeyCode.Thumbstick2) or
		(self.userCFrame == Enum.UserCFrame.LeftHand and inputObject.KeyCode == Enum.KeyCode.Thumbstick1) then
		self:setPartVisible("TrackpadIndicator", true)
	end
end

function ViveController:onInputChanged(inputObject)
	if 	(self.userCFrame == Enum.UserCFrame.RightHand and inputObject.KeyCode == Enum.KeyCode.ButtonR2) or
		(self.userCFrame == Enum.UserCFrame.LeftHand and inputObject.KeyCode == Enum.KeyCode.ButtonL2) then
		self:setTriggerState(inputObject.Position.Z)
	end
	if 	(self.userCFrame == Enum.UserCFrame.RightHand and inputObject.KeyCode == Enum.KeyCode.Thumbstick2) or
		(self.userCFrame == Enum.UserCFrame.LeftHand and inputObject.KeyCode == Enum.KeyCode.Thumbstick1) then
		self:setTrackpadState(inputObject.Position)
	end
end

function ViveController:onInputEnded(inputObject)
	self:onButtonInputChanged(inputObject, false)
	if 	(self.userCFrame == Enum.UserCFrame.RightHand and inputObject.KeyCode == Enum.KeyCode.Thumbstick2) or
		(self.userCFrame == Enum.UserCFrame.LeftHand and inputObject.KeyCode == Enum.KeyCode.Thumbstick1) then
		self:setPartVisible("TrackpadIndicator", false)
	end
end

function ViveController:onTouchpadModeChanged(touchpad, touchpadMode)
	if touchpad ~= self.touchpad then
		return
	end

	self.touchpadMode = touchpadMode

	if touchpadMode == Enum.VRTouchpadMode.ABXY then
		self:setABXYEnabled(true)
	else
		self:setABXYEnabled(false)
	end
end

function ViveController:destroy()
	if self.onTouchpadModeChangedConn then
		self.onTouchpadModeChangedConn:disconnect()
		self.onTouchpadModeChangedConn = nil
	end
	self.model:Destroy()
end

return ViveController