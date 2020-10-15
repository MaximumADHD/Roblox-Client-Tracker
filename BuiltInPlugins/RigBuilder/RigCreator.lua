game:DefineFastFlag("RigBuilderNoTwoFace", false)

local RigCreator = {}

local InsertService = game:GetService("InsertService")
local AnthroRigs = InsertService:LoadLocalAsset("rbxasset://models/RigBuilder/AnthroRigs.rbxm")

local function jointBetween(a, b, cfa, cfb)
    local weld = Instance.new("Motor6D")
    weld.Part0 = a
    weld.Part1 = b
    weld.C0 = cfa
    weld.C1 = cfb
    weld.Parent = a
    return weld
end

function RigCreator.CreateR6Rig()
	local parent = Instance.new("Model")
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

	parent.Parent = workspace
	return parent
end

function RigCreator.CreateR6MeshRig()
	local rig = RigCreator.CreateR6Rig()

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

function RigCreator.CreateR6MeshBoyRig()
	local rig = RigCreator.CreateR6Rig()

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

function RigCreator.CreateR6MeshGirlRig()
	local rig = RigCreator.CreateR6Rig()

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

local r15DefaultRigId = 1664543044

local function r15RigImported(rig)
	-- Not all packages have all their parts, we load MrGreyR15 first then substitute the parts we did load
	local R15Dummy = game:GetService("InsertService"):LoadAsset(r15DefaultRigId):GetChildren()[1]

	for _, part in pairs(rig:GetChildren()) do
		local matchingPart = R15Dummy:FindFirstChild(part.Name)
		if matchingPart then
			matchingPart:Destroy()
		end
		part.Parent = R15Dummy
	end
	rig:Destroy()

	rig = R15Dummy
	rig.Parent = workspace

	local humanoid = rig:FindFirstChildOfClass("Humanoid")
	if humanoid then
		humanoid:BuildRigFromAttachments()
	end

	local r15Head = rig:WaitForChild("Head", 1) -- 1 second timeout

	local existingFace = r15Head:FindFirstChild("face") or r15Head:FindFirstChild("Face")
	if not game:GetFastFlag("RigBuilderNoTwoFace") or existingFace == nil then
		local face = Instance.new("Decal", r15Head)
		face.Name = "face"
		face.Texture = "rbxasset://textures/face.png"
	end

	return rig
end

function RigCreator.BuildR15Rig(package)
	--Model, HRP & Head
	local m = Instance.new("Model", workspace)
	local headMesh = nil
	local face = nil
	if package ~= nil then
		local pkIds = game:GetService("AssetService"):GetAssetIdsForPackage(package)
		--Load the assets and parse
		for _, v in pairs(pkIds) do
			local a = game:GetService("InsertService"):LoadAsset(v)
			if a:FindFirstChild("R15ArtistIntent") then
				for _, x in pairs(a.R15ArtistIntent:GetChildren()) do
					x.Parent = m
				end
			elseif a:FindFirstChild("R15") then
				for _, x in pairs(a.R15:GetChildren()) do
					x.Parent = m
				end
			elseif a:FindFirstChild("face") then
				face = a.face
			elseif a:FindFirstChild("Face") then
				face = a.Face
			elseif a:FindFirstChild("Mesh") then
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
		for _, v in pairs(rig.Head:GetChildren()) do
			if v.Name == "face" or v.Name == "Face" then
				v:Destroy()
			end
		end
		face.Parent = rig.Head
	end

	return rig
end

function RigCreator.BuildAnthroRig(rigName)
	local rig = AnthroRigs:FindFirstChild(rigName)
	if not rig then
		error("RigCreator couldn't find Rig with name " ..rigName)
	else
		local newRig = rig:Clone()

		local humanoid = newRig:FindFirstChildOfClass("Humanoid")
		if humanoid then
			humanoid:BuildRigFromAttachments()
		end

		newRig.Parent = workspace
		return newRig
	end
end

return RigCreator
