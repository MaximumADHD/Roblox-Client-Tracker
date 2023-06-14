--!nonstrict
local VRService 	= game:GetService("VRService")
local CoreGui 		= game:GetService("CoreGui")
local CorePackages	= game:GetService("CorePackages")

local RobloxGui 	= CoreGui.RobloxGui
local CommonUtil	= require(RobloxGui.Modules.Common.CommonUtil)

local MATERIAL = Enum.Material.Granite
local SCALE = Vector3.new(0.032, 0.032, 0.032)

local RiftController = {}
RiftController.__index = RiftController

function RiftController.new(userCFrame)
	local self = setmetatable({}, RiftController)
	self.userCFrame = userCFrame

	self.model = CommonUtil.Create("Model") {
		Name = "RiftController",
		Archivable = false
	}	

	self.origin = CommonUtil.Create("Part") {
		Parent = self.model,		
		Name = "Origin",
		Anchored = true,
		Transparency = 1,
		Size = Vector3.new(0.05, 0.05, 0.05),
		CanCollide = false,
		CanQuery = false,
		CanTouch = false,
	}
	
	self.parts = {}
	local partName = "body"
	local part = CommonUtil.Create("Part") {
		Parent = self.model,
		Name = partName,
		Anchored = true,
		Material = MATERIAL,
		Size = Vector3.new(0.05, 0.05, 0.05),
		Transparency = 0.25,
		CFrame = self.origin.CFrame,
		CanCollide = false,
		CanQuery = false,
		CanTouch = false,
	}
	local mesh = CommonUtil.Create("SpecialMesh") {
		Parent = part,
		Name = "Mesh",
		MeshId = userCFrame == Enum.UserCFrame.LeftHand and "rbxassetid://9597097835" or "rbxassetid://9597101144",
		TextureId = "rbxassetid://9597123835",
		Scale = SCALE,
	}
	self.mesh = mesh
	local weld = CommonUtil.Create("Weld") {
		Parent = part,
		Name = "Weld",
		Part0 = self.origin,
		Part1 = part,
	}
	self.parts[partName] = part

	self.model.PrimaryPart = self.origin

	return self
end

function RiftController:setCFrame(cframe)
	self.model:SetPrimaryPartCFrame(cframe * CFrame.Angles(math.rad(20), math.rad(0), 0) * CFrame.new(0, -0.03, 0.06))
end

function RiftController:setCFrameAndScale(cframe, scale)
	self.model:SetPrimaryPartCFrame(cframe * CFrame.Angles(math.rad(20), math.rad(0), 0) * CFrame.new(0, -0.03 * scale, 0.06 * scale))
	self.mesh.Scale = SCALE * scale
end

function RiftController:onButtonInputChanged(inputObject, depressed)

end

function RiftController:onInputBegan(inputObject)
	self:onButtonInputChanged(inputObject, true)
end

function RiftController:onInputChanged(inputObject)
end

function RiftController:onInputEnded(inputObject)
	self:onButtonInputChanged(inputObject, false)
end

function RiftController:onTouchpadModeChanged(touchpad, touchpadMode)
end

return RiftController