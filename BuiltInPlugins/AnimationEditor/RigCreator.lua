local rigCreator = {}

local function weldBetween(a, b)
    local weld = Instance.new("Motor6D")
    weld.Part0 = a
    weld.Part1 = b
    weld.C0 = CFrame.new()
    weld.C1 = b.CFrame:inverse()*a.CFrame
    weld.Parent = a
    return weld;
end

local function jointBetween(a, b, cfa, cfb)
    local weld = Instance.new("Motor6D")
    weld.Part0 = a
    weld.Part1 = b
    weld.C0 = cfa
    weld.C1 = cfb
    weld.Parent = a
    return weld;
end

function rigCreator.CreateR6Rig()
	local parent = Instance.new("Model", game.Workspace)
    parent.Name = "Dummy"
    
	local Root = Instance.new("Part")
	Root.Name = "HumanoidRootPart"	
	Root.Anchored = true
	Root.CanCollide = true
	Root.Transparency = 0.5
	Root.Size = Vector3.new(2, 2, 1)
	Root.Parent = parent	
	Root.CFrame = CFrame.new(0, 5.2, 4.5)
	Root.BottomSurface = "Smooth"
	Root.TopSurface = "Smooth"
	parent.PrimaryPart = Root

	local Torso = Instance.new("Part")
	Torso.Name = "Torso"
	Torso.Anchored = false
	Torso.CanCollide = false
	Torso.Size = Vector3.new(2, 2, 1)
	Torso.Parent = parent
	Torso.CFrame = CFrame.new(0, 5.2, 4.5)
	Torso.BottomSurface = "Smooth"
	Torso.TopSurface = "Smooth"

	local RCA = CFrame.new(0, 0, 0, -1, 0, 0, 0, 0, 1, 0, 1, 0 )
	local RCB = RCA
	local RootHip = jointBetween(Root, Torso, RCA, RCB)
	RootHip.Name = "Root Hip"
	RootHip.MaxVelocity = 0.1


	local LeftLeg = Instance.new("Part", parent)
	LeftLeg.Name = "Left Leg"
	LeftLeg.Anchored = false
	LeftLeg.CanCollide = false
	LeftLeg.Size = Vector3.new(1, 2, 1)
	LeftLeg.CFrame = CFrame.new(0.5, 3.2, 4.5)
	LeftLeg.BottomSurface = "Smooth"
	LeftLeg.TopSurface = "Smooth"

	local LHCA = CFrame.new(-1, -1, 0) * CFrame.fromAxisAngle(Vector3.new(0, 1, 0), -math.pi/2)
	local LHCB = CFrame.new(-0.5, 1, 0) * CFrame.fromAxisAngle(Vector3.new(0, 1, 0), -math.pi/2)
	local LeftHip = jointBetween(Torso, LeftLeg, LHCA, LHCB)
	LeftHip.Name = "Left Hip"
	LeftHip.MaxVelocity = 0.1


	local RightLeg = Instance.new("Part", parent)
	RightLeg.Name = "Right Leg"
	RightLeg.Anchored = false
	RightLeg.CanCollide = false
	RightLeg.Size = Vector3.new(1, 2, 1)
	RightLeg.CFrame = CFrame.new(-0.5, 3.2, 4.5)
	RightLeg.BottomSurface = "Smooth"
	RightLeg.TopSurface = "Smooth"


	local RHCA = CFrame.new(1, -1, 0) * CFrame.fromAxisAngle(Vector3.new(0, -1, 0), -math.pi/2)
	local RHCB = CFrame.new(0.5, 1, 0) * CFrame.fromAxisAngle(Vector3.new(0, 1, 0), math.pi/2)
	local RightHip = jointBetween(Torso, RightLeg, RHCA, RHCB)
	RightHip.Name = "Right Hip"
	RightHip.MaxVelocity = 0.1


	local LeftArm = Instance.new("Part", parent)
	LeftArm.Name = "Left Arm"
	LeftArm.Anchored = false
	LeftArm.CanCollide = false
	LeftArm.Size = Vector3.new(1, 2, 1)
	LeftArm.CFrame = CFrame.new(1.5, 5.2, 4.5)
	LeftArm.BottomSurface = "Smooth"
	LeftArm.TopSurface = "Smooth"


	local LSCA = CFrame.new(-1.0, 0.5, 0) * CFrame.fromAxisAngle(Vector3.new(0, 1, 0), -math.pi/2)
	local LSCB = CFrame.new(0.5, 0.5, 0) * CFrame.fromAxisAngle(Vector3.new(0, 1, 0), -math.pi/2)
	local LeftShoulder = jointBetween(Torso, LeftArm, LSCA, LSCB)
	LeftShoulder.Name = "Left Shoulder"
	LeftShoulder.MaxVelocity = 0.1


	local RightArm = Instance.new("Part", parent)
	RightArm.Name = "Right Arm"
	RightArm.Anchored = false
	RightArm.CanCollide = false
	RightArm.Size = Vector3.new(1, 2, 1)
	RightArm.CFrame = CFrame.new(-1.5, 5.2, 4.5)
	RightArm.BottomSurface = "Smooth"
	RightArm.TopSurface = "Smooth"

	local RSCA = CFrame.new(1.0, 0.5, 0) * CFrame.fromAxisAngle(Vector3.new(0, -1, 0), -math.pi/2)
	local RSCB = CFrame.new(-0.5, 0.5, 0) * CFrame.fromAxisAngle(Vector3.new(0, 1, 0), math.pi/2)
	local RightShoulder = jointBetween(Torso, RightArm, RSCA, RSCB)
	RightShoulder.Name = "Right Shoulder"
	RightShoulder.MaxVelocity = 0.1


	local Head = Instance.new("Part", parent)
	Head.Name = "Head"
	Head.Anchored = false
	Head.CanCollide = true
	Head.Size = Vector3.new(2, 1, 1)
	Head.CFrame = CFrame.new(0, 6.7, 4.5)
	Head.BottomSurface = "Smooth"
	Head.TopSurface = "Smooth"

	local NCA = CFrame.new(0, 1, 0, -1, 0, 0, 0, 0, 1, 0, 1, 0)
	local NCB = CFrame.new(0, -0.5, 0, -1, 0, 0, 0, 0, 1, 0, 1, 0)
	local Neck = jointBetween(Torso, Head, NCA, NCB)
	Neck.Name = "Neck"
	Neck.MaxVelocity = 0.1
	
	local Face = Instance.new("Decal", Head)
	Face.Name = "Face"
	Face.Texture = "rbxasset://textures/face.png"
	
	Instance.new("Humanoid", parent)	
	
	return parent
end

function rigCreator.CreateR6MeshRig()
	local rig = rigCreator.CreateR6Rig()

	local LArmMesh = Instance.new("CharacterMesh", rig)
	LArmMesh.MeshId = 27111419
	LArmMesh.BodyPart = 2

	local RArmMesh = Instance.new("CharacterMesh", rig)
	RArmMesh.MeshId = 27111864
	RArmMesh.BodyPart = 3


	local LLegMesh = Instance.new("CharacterMesh", rig)
	LLegMesh.MeshId = 27111857
	LLegMesh.BodyPart = 4

	local RLegMesh = Instance.new("CharacterMesh", rig)
	RLegMesh.MeshId = 27111882
	RLegMesh.BodyPart = 5

	local TorsoMesh = Instance.new("CharacterMesh", rig)
	TorsoMesh.MeshId = 27111894
	TorsoMesh.BodyPart = 1


	local HeadMesh = Instance.new("SpecialMesh", rig.Head)
	HeadMesh.MeshType = 0
	HeadMesh.Scale = Vector3.new(1.25, 1.25, 1.25)
	return rig
end

function rigCreator.CreateR6MeshBoyRig()
	local rig = rigCreator.CreateR6Rig()

	local LArmMesh = Instance.new("CharacterMesh", rig)
	LArmMesh.MeshId = 82907977
	LArmMesh.BodyPart = 2

	local RArmMesh = Instance.new("CharacterMesh", rig)
	RArmMesh.MeshId = 82908019
	RArmMesh.BodyPart = 3


	local LLegMesh = Instance.new("CharacterMesh", rig)
	LLegMesh.MeshId = 81487640
	LLegMesh.BodyPart = 4

	local RLegMesh = Instance.new("CharacterMesh", rig)
	RLegMesh.MeshId = 81487710
	RLegMesh.BodyPart = 5

	local TorsoMesh = Instance.new("CharacterMesh", rig)
	TorsoMesh.MeshId = 82907945
	TorsoMesh.BodyPart = 1


	local HeadMesh = Instance.new("SpecialMesh", rig.Head)
	HeadMesh.MeshType = 0
	HeadMesh.Scale = Vector3.new(1.25, 1.25, 1.25)
	return rig
end

function rigCreator.CreateR6MeshGirlRig()
	local rig = rigCreator.CreateR6Rig()

	local LArmMesh = Instance.new("CharacterMesh", rig)
	LArmMesh.MeshId = 83001137
	LArmMesh.BodyPart = 2

	local RArmMesh = Instance.new("CharacterMesh", rig)
	RArmMesh.MeshId = 83001181
	RArmMesh.BodyPart = 3


	local LLegMesh = Instance.new("CharacterMesh", rig)
	LLegMesh.MeshId = 81628361
	LLegMesh.BodyPart = 4

	local RLegMesh = Instance.new("CharacterMesh", rig)
	RLegMesh.MeshId = 81628308
	RLegMesh.BodyPart = 5

	local TorsoMesh = Instance.new("CharacterMesh", rig)
	TorsoMesh.MeshId = 82987757
	TorsoMesh.BodyPart = 1

	local HeadMesh = Instance.new("SpecialMesh", rig.Head)
	HeadMesh.MeshType = 0
	HeadMesh.Scale = Vector3.new(1.25, 1.25, 1.25)
	return rig
end

function rigCreator.BuildR15Rig(package)
	--Model, HRP & Head
	local m = Instance.new("Model", workspace)
	local headMesh = nil
	local face = nil
	if package ~= nil then
		local pkIds = game:GetService("AssetService"):GetAssetIdsForPackage(package)
		--Load the assets and parse
		for i, v in pairs(pkIds) do
			local a = game:GetService("InsertService"):LoadAsset(v)
			if a:findFirstChild("R15") then
				for z, x in pairs(a.R15:GetChildren()) do
					x.Parent = m
				end
			elseif a:findFirstChild("face") then
				face = a.face
			elseif a:findFirstChild("Face") then
				face = a.Face
			elseif a:findFirstChild("Mesh") then
				headMesh = a.Mesh
			end
		end
	end
	local rig = r15RigImported(m)
	if headMesh then
		rig.Head.Mesh:Destroy()
		headMesh.Parent = rig.Head
	end
	if face then
		for i, v in pairs(rig.Head:GetChildren()) do
			if v.Name == "face" or v.Name == "Face" then
				v:Destroy()
			end
		end
		face.Parent = rig.Head
	end
	return rig
end

local function buildJoint(parentAttachment, partForJointAttachment)
    local newMotor = Instance.new("Motor6D")
	newMotor.Name = parentAttachment.Name:gsub("RigAttachment", "")
	
    newMotor.Part0 = parentAttachment.Parent
    newMotor.Part1 = partForJointAttachment.Parent
    
	newMotor.C0 = parentAttachment.CFrame
    newMotor.C1 = partForJointAttachment.CFrame
	
	---------------------
	local oldMotor = partForJointAttachment.Parent:FindFirstChild(newMotor.Name)
	while oldMotor do
		oldMotor:Destroy()
		oldMotor = partForJointAttachment.Parent:FindFirstChild(newMotor.Name)
	end
	
    newMotor.Parent = partForJointAttachment.Parent
end

-- Removes old Motor6Ds and builds the rig from the attachments in the parts
-- Call this with nil, HumanoidRootPart
function buildRigFromAttachments(last, part)
	for _, attachment in pairs(part:GetChildren()) do
		if attachment:IsA("Attachment") and string.find(attachment.Name, "RigAttachment") then
			for _, sibling in pairs(part.Parent:GetChildren()) do
				if sibling ~= part and sibling ~= last then
					local matchingAttachment = sibling:FindFirstChild(attachment.Name)
					if matchingAttachment then
						buildJoint(attachment, matchingAttachment)
						-- Continue the recursive tree traversal building joints
						buildRigFromAttachments(part, matchingAttachment.Parent)
					end
				end
			end
		end
	end
end

local r15DefaultRigId = 1664543044

function r15RigImported(R15Rig)
	-- This wait is necessary because the imported rig is added to workspace 
	-- before all the parts are loaded
	wait(.5)
	
	-- Not all packages have all their parts, we load MrGreyR15 first then substitute the parts we did load
	local R15Dummy = game:GetService("InsertService"):LoadAsset(r15DefaultRigId):GetChildren()[1]
	
	for _, part in pairs(R15Rig:GetChildren()) do
		local matchingPart = R15Dummy:FindFirstChild(part.Name)
		if matchingPart then
			matchingPart:Destroy()
		end
		part.Parent = R15Dummy
	end
	R15Rig:Destroy()
	
	R15Rig = R15Dummy
	R15Rig.Parent = game.Workspace
	buildRigFromAttachments(nil, R15Rig.HumanoidRootPart)
	
	local r15Head = R15Rig:WaitForChild("Head", 1) -- 1 second timeout
	
	local Face = Instance.new("Decal", r15Head)
	Face.Name = "face"
	Face.Texture = "rbxasset://textures/face.png"
	return R15Rig
end

return rigCreator
