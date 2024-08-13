--!nonstrict
local VRService 	= game:GetService("VRService")
local CoreGui 		= game:GetService("CoreGui")
local CorePackages	= game:GetService("CorePackages")

local RobloxGui 	= CoreGui.RobloxGui
local Create = require(CorePackages.Workspace.Packages.AppCommonLib).Create

local FIntVRTouchControllerTransparency = require(RobloxGui.Modules.Flags.FIntVRTouchControllerTransparency)

local PARTS_INFO = {
	[Enum.UserCFrame.RightHand] = {
		Body = {
			meshId = "rbxassetid://12954883737",
			textureId = "rbxassetid://12954905146",
			offset = CFrame.new(0, 0, 0) * CFrame.Angles(0, math.pi, 0),
		},
		Grip = {
			meshId = "rbxassetid://12954884971",
			textureId = "rbxassetid://12954905146",
			offset = CFrame.new(0.015, -0.078, 0.005) * CFrame.Angles(0, math.pi, 0),
			moveOffset = CFrame.new(-0.01, 0.005, 0) * CFrame.Angles(0, 0, math.rad(-7)),
		},
		Stick = {
			meshId = "rbxassetid://12954884012",
			textureId = "rbxassetid://12954905146",
			offset = CFrame.new(0.056, 0.027, -0.074) * CFrame.Angles(0, math.pi, 0),
			moveOffset = CFrame.new(0, -0.001, 0)
		},
		Trigger = {
			meshId = "rbxassetid://12954885295",
			textureId = "rbxassetid://12954905146",
			offset = CFrame.new(0.014, -0.049, -0.131) * CFrame.Angles(0, math.pi, 0),
		},
		MenuButton = {
			meshId = "rbxassetid://12954884231",
			textureId = "rbxassetid://12954905146",
			offset = CFrame.new(0.07, 0.017, -0.017) * CFrame.Angles(0, math.pi, 0),
			moveOffset = CFrame.new(0, -0.001, 0)
		},
		ButtonA = {
			meshId = "rbxassetid://12954884749",
			textureId = "rbxassetid://12954905146",
			offset = CFrame.new(0.011, 0.014, -0.026) * CFrame.Angles(0, math.pi, 0),
			moveOffset = CFrame.new(0, -0.005, 0)
		},
		ButtonB = {
			meshId = "rbxassetid://12954884464",
			textureId = "rbxassetid://12954905146",
			offset = CFrame.new(-0.013, 0.015, -0.07) * CFrame.Angles(0, math.pi, 0),
			moveOffset = CFrame.new(0, -0.005, 0)
		},
	},
	[Enum.UserCFrame.LeftHand] = {
		Body = {
			meshId = "rbxassetid://12954878407",
			textureId = "rbxassetid://12954905425",
			offset = CFrame.new(0, 0, 0) * CFrame.Angles(0, math.pi, 0),
		},
		Grip = {
			meshId = "rbxassetid://12954878772",
			textureId = "rbxassetid://12954905425",
			offset = CFrame.new(-0.015, -0.078, 0.005) * CFrame.Angles(0, math.pi, 0),
			moveOffset = CFrame.new(0.0125, 0.005, 0.001)
		},
		Stick = {
			meshId = "rbxassetid://12954879211",
			textureId = "rbxassetid://12954905425",
			offset = CFrame.new(-0.056, 0.027, -0.074) * CFrame.Angles(0, math.pi, 0),
			moveOffset = CFrame.new(0, -0.001, 0)
		},
		Trigger = {
			meshId = "rbxassetid://12954878599",
			textureId = "rbxassetid://12954905425",
			offset = CFrame.new(-0.014, -0.049, -0.131) * CFrame.Angles(0, math.pi, 0),
		},
		MenuButton = {
			meshId = "rbxassetid://12954879390",
			textureId = "rbxassetid://12954905425",
			offset = CFrame.new(-0.07, 0.017, -0.017) * CFrame.Angles(0, math.pi, 0),
			moveOffset = CFrame.new(0, -0.001, 0)
		},
		ButtonX = {
			meshId = "rbxassetid://12954879064",
			textureId = "rbxassetid://12954905425",
			offset = CFrame.new(-0.011, 0.013, -0.026) * CFrame.Angles(0, math.pi, 0),
			moveOffset = CFrame.new(0, -0.005, 0)
		},
		ButtonY = {
			meshId = "rbxassetid://12954878913",
			textureId = "rbxassetid://12954905425",
			offset = CFrame.new(0.013, 0.015, -0.07) * CFrame.Angles(0, math.pi, 0),
			moveOffset = CFrame.new(0, -0.005, 0)
		},
	},
}

local KEYCODE_TO_PARTNAME = {
	[Enum.KeyCode.ButtonL1] = "Grip",
	[Enum.KeyCode.ButtonL2] = "Trigger",
	[Enum.KeyCode.ButtonL3] = "Stick",
	[Enum.KeyCode.ButtonR1] = "Grip",
	[Enum.KeyCode.ButtonR2] = "Trigger",
	[Enum.KeyCode.ButtonR3] = "Stick",
	[Enum.KeyCode.Thumbstick1] = "Stick",
	[Enum.KeyCode.Thumbstick2] = "Stick",
	[Enum.KeyCode.ButtonSelect] = "MenuButton",
	[Enum.KeyCode.ButtonStart] = "MenuButton",
	[Enum.KeyCode.ButtonA] = "ButtonA",
	[Enum.KeyCode.ButtonB] = "ButtonB",
	[Enum.KeyCode.ButtonX] = "ButtonX",
	[Enum.KeyCode.ButtonY] = "ButtonY",
}

local MATERIAL = Enum.Material.Granite
local SCALE = Vector3.new(0.032, 0.032, 0.032)

local TouchController = {}
TouchController.__index = TouchController

function TouchController.new(userCFrame)
	local self = setmetatable({}, TouchController)
	self.userCFrame = userCFrame

	self.model = Create("Model") {
		Name = "TouchController",
		Archivable = false
	}	

	self.origin = Create("Part") {
		Parent = self.model,		
		Name = "Origin",
		Anchored = true,
		Transparency = 1,
		Size = Vector3.new(0.05, 0.05, 0.05),
		CanCollide = false,
		CanQuery = false,
		CanTouch = false,
	}

	self.scale = 1
	self.parts = {}

	for partName, partInfo in pairs(PARTS_INFO[userCFrame]) do
		local partScale = SCALE
		if partInfo.scale then
			partScale = partScale * partInfo.scale
		end

		local part = Create("Part") {
			Parent = self.model,
			Name = partName,
			Anchored = true,
			Material = MATERIAL,
			Size = partInfo.size or Vector3.new(0.05, 0.05, 0.05),
			CFrame = self.origin.CFrame * partInfo.offset,
			CanCollide = false,
			CanQuery = false,
			CanTouch = false,
			Transparency = FIntVRTouchControllerTransparency/100,
		}
		local mesh = Create("SpecialMesh") {
			Parent = part,
			Name = "Mesh",
			MeshId = partInfo.meshId,
			TextureId = partInfo.textureId,
			Scale = partScale
		}
		local weld = Create("Weld") {
			Parent = part,
			Name = "Weld",
			Part0 = self.origin,
			Part1 = part,
			C0 = partInfo.offset
		}

		self.parts[partName] = part
	end

	self.model.PrimaryPart = self.origin

	return self
end

function TouchController:setCFrame(cframe)
	if self.userCFrame == Enum.UserCFrame.RightHand then
		self.model:SetPrimaryPartCFrame(cframe * CFrame.Angles(math.rad(20), 0, 0) * CFrame.new(-0.03, 0.08, -0.06))
	else
		self.model:SetPrimaryPartCFrame(cframe * CFrame.Angles(math.rad(20), 0, 0) * CFrame.new(0.03, 0.08, -0.06))
	end

end

function TouchController:setCFrameAndScale(cframe, scale)
	local xScaleSign = if self.userCFrame == Enum.UserCFrame.RightHand then 1 else -1
	self.model:SetPrimaryPartCFrame(cframe * CFrame.Angles(math.rad(20), 0, 0) * CFrame.new(-0.03 * scale * xScaleSign, 0.08 * scale, -0.06 * scale))
	if self.scale ~= scale then
		self.scale = scale
		for partName, partInfo in pairs(PARTS_INFO[self.userCFrame]) do
			local part = self.parts[partName]
			if part then
				local partScale = SCALE
				if partInfo.scale then
					partScale = partScale * partInfo.scale
				end

				local mesh = part:FindFirstChild("Mesh")
				local weld = part:FindFirstChild("Weld")

				local offset = partInfo.offset
				local scaledOffset = CFrame.new(offset.p * self.scale) * (offset - offset.p)
				part.CFrame = self.origin.CFrame * scaledOffset

				if mesh then
					mesh.Scale = partScale * self.scale
				end
				if weld then
					weld.C0 = scaledOffset
				end
			end
		end
	end
end

function TouchController:setButtonState(partName, depressed)
	local partInfo = PARTS_INFO[self.userCFrame][partName]
	if not partInfo then return end

	local offset = partInfo.offset
	local moveOffset = partInfo.moveOffset

	if offset and moveOffset then
		offset = CFrame.new(offset.p * self.scale) * (offset - offset.p)
		moveOffset = CFrame.new(moveOffset.p * self.scale) * (moveOffset - moveOffset.p)

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

function TouchController:setTriggerState(state)
	local offset = PARTS_INFO[self.userCFrame].Trigger.offset
	offset = CFrame.new(offset.p * self.scale) * (offset - offset.p)

	local part = self.parts["Trigger"]
	local weld = part:FindFirstChild("Weld")
	if weld then
		local rotCenter = Vector3.new(0, 0.05, 0.025) * self.scale
		local angleMin, angleMax = math.rad(0), math.rad(20)
		local angleRange = angleMax - angleMin
		local angle = (state * angleRange) + angleMin
		local newOffset = offset * CFrame.new(rotCenter) * CFrame.Angles(angle, 0, 0) * CFrame.new(-rotCenter)
		part.CFrame = self.origin.CFrame * newOffset
		weld.C0 = newOffset
	end
end

function TouchController:setStickState(pos)
	local offset = PARTS_INFO[self.userCFrame].Stick.offset
	offset = CFrame.new(offset.p * self.scale) * (offset - offset.p)

	local part = self.parts["Stick"]
	local weld = part:FindFirstChild("Weld")
	if weld then
		local rotCenter = Vector3.new(-0.0008, -0.0269, 0.0013) * self.scale
		local angleMin, angleMax = math.rad(0), math.rad(20)
		local angleRange = angleMax - angleMin
		local angleZ = (pos.X * angleRange) + angleMin
		local angleX = (pos.Y * angleRange) + angleMin
		local newOffset = offset * CFrame.new(rotCenter) * CFrame.Angles(angleX, 0, angleZ) * CFrame.new(-rotCenter)
		part.CFrame = self.origin.CFrame * newOffset
		weld.C0 = newOffset
	end
end

function TouchController:onInputPositionChanged(inputObject)
	if 	(self.userCFrame == Enum.UserCFrame.RightHand and inputObject.KeyCode == Enum.KeyCode.ButtonR2) or
		(self.userCFrame == Enum.UserCFrame.LeftHand and inputObject.KeyCode == Enum.KeyCode.ButtonL2) then
		self:setTriggerState(inputObject.Position.Z)
		return
	end

	if 	(self.userCFrame == Enum.UserCFrame.RightHand and inputObject.KeyCode == Enum.KeyCode.Thumbstick2) or
		(self.userCFrame == Enum.UserCFrame.LeftHand and inputObject.KeyCode == Enum.KeyCode.Thumbstick1) then
		self:setStickState(inputObject.Position)
		return
	end
end

function TouchController:onButtonInputChanged(inputObject, depressed)
	-- Grip is bound to L1 or R1 depending on controller
	-- Stick is bound to L3 or R3 depending on controller
	-- ButtonSelect on the left, ButtonStart on the right
	if (self.userCFrame == Enum.UserCFrame.LeftHand and inputObject.KeyCode == Enum.KeyCode.ButtonL1) or
		(self.userCFrame == Enum.UserCFrame.RightHand and inputObject.KeyCode == Enum.KeyCode.ButtonR1) or
		(self.userCFrame == Enum.UserCFrame.LeftHand and inputObject.KeyCode == Enum.KeyCode.ButtonL3) or
		(self.userCFrame == Enum.UserCFrame.RightHand and inputObject.KeyCode == Enum.KeyCode.ButtonR3) or
		(self.userCFrame == Enum.UserCFrame.LeftHand and inputObject.KeyCode == Enum.KeyCode.ButtonSelect) or
		(self.userCFrame == Enum.UserCFrame.RightHand and inputObject.KeyCode == Enum.KeyCode.ButtonStart) or
		inputObject.KeyCode == Enum.KeyCode.ButtonA or
		inputObject.KeyCode == Enum.KeyCode.ButtonB or
		inputObject.KeyCode == Enum.KeyCode.ButtonX or
		inputObject.KeyCode == Enum.KeyCode.ButtonY then
		local partName = KEYCODE_TO_PARTNAME[inputObject.KeyCode]
		self:setButtonState(partName, depressed)
	end
end

function TouchController:onInputBegan(inputObject)
	self:onButtonInputChanged(inputObject, true)
end

function TouchController:onInputChanged(inputObject)
	self:onInputPositionChanged(inputObject)
end

function TouchController:onInputEnded(inputObject)
	self:onInputPositionChanged(inputObject)
	self:onButtonInputChanged(inputObject, false)
end

function TouchController:onTouchpadModeChanged(touchpad, touchpadMode)
end

function TouchController:destroy()
	self.model:Destroy()
end

function TouchController:getButtonPart(keyCode)
	local partName = KEYCODE_TO_PARTNAME[keyCode]
	if partName then
		return self.parts[partName]
	end
	return nil
end

return TouchController
