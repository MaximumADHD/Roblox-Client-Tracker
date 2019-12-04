local R6 = {}

local function jointBetween(a, b, cfa, cfb)
    local weld = Instance.new("Motor6D")
    weld.Part0 = a
    weld.Part1 = b
    weld.C0 = cfa
    weld.C1 = cfb
    weld.Parent = a
    return weld;
end

function R6.Create()
	local CharacterModel = Instance.new("Model")
	CharacterModel.Name = "R6"

	local Root = Instance.new("Part")
	Root.Name = "HumanoidRootPart"
	Root.CanCollide = true
    Root.Transparency = 1
	Root.Size = Vector3.new(2, 2, 1)
	Root.CFrame = CFrame.new(0, 5.2, 4.5)
	Root.BottomSurface = "Smooth"
	Root.TopSurface = "Smooth"
    Root.Parent = CharacterModel
	CharacterModel.PrimaryPart = Root

	local Torso = Instance.new("Part")
	Torso.Name = "Torso"
	Torso.Anchored = false
	Torso.CanCollide = false
	Torso.Size = Vector3.new(2, 2, 1)
	Torso.CFrame = CFrame.new(0, 5.2, 4.5)
	Torso.BottomSurface = "Smooth"
	Torso.TopSurface = "Smooth"
	Torso.Parent = CharacterModel

	local RCA = CFrame.new(0, 0, 0, -1, 0, 0, 0, 0, 1, 0, 1, 0 )
	local RCB = RCA
	local RootHip = jointBetween(Root, Torso, RCA, RCB)
	RootHip.Name = "Root Hip"
	RootHip.MaxVelocity = 0.1


	local LeftLeg = Instance.new("Part")
	LeftLeg.Name = "Left Leg"
	LeftLeg.Anchored = false
	LeftLeg.CanCollide = false
	LeftLeg.Size = Vector3.new(1, 2, 1)
	LeftLeg.CFrame = CFrame.new(0.5, 3.2, 4.5)
	LeftLeg.BottomSurface = "Smooth"
    LeftLeg.TopSurface = "Smooth"
    LeftLeg.Parent = CharacterModel

	local LHCA = CFrame.new(-1, -1, 0) * CFrame.fromAxisAngle(Vector3.new(0, 1, 0), -math.pi/2)
	local LHCB = CFrame.new(-0.5, 1, 0) * CFrame.fromAxisAngle(Vector3.new(0, 1, 0), -math.pi/2)
	local LeftHip = jointBetween(Torso, LeftLeg, LHCA, LHCB)
	LeftHip.Name = "Left Hip"
	LeftHip.MaxVelocity = 0.1


	local RightLeg = Instance.new("Part")
	RightLeg.Name = "Right Leg"
	RightLeg.Anchored = false
	RightLeg.CanCollide = false
	RightLeg.Size = Vector3.new(1, 2, 1)
	RightLeg.CFrame = CFrame.new(-0.5, 3.2, 4.5)
	RightLeg.BottomSurface = "Smooth"
    RightLeg.TopSurface = "Smooth"
    RightLeg.Parent = CharacterModel


	local RHCA = CFrame.new(1, -1, 0) * CFrame.fromAxisAngle(Vector3.new(0, -1, 0), -math.pi/2)
	local RHCB = CFrame.new(0.5, 1, 0) * CFrame.fromAxisAngle(Vector3.new(0, 1, 0), math.pi/2)
	local RightHip = jointBetween(Torso, RightLeg, RHCA, RHCB)
	RightHip.Name = "Right Hip"
	RightHip.MaxVelocity = 0.1


	local LeftArm = Instance.new("Part")
	LeftArm.Name = "Left Arm"
	LeftArm.Anchored = false
	LeftArm.CanCollide = false
	LeftArm.Size = Vector3.new(1, 2, 1)
	LeftArm.CFrame = CFrame.new(1.5, 5.2, 4.5)
	LeftArm.BottomSurface = "Smooth"
    LeftArm.TopSurface = "Smooth"
    LeftArm.Parent = CharacterModel


	local LSCA = CFrame.new(-1.0, 0.5, 0) * CFrame.fromAxisAngle(Vector3.new(0, 1, 0), -math.pi/2)
	local LSCB = CFrame.new(0.5, 0.5, 0) * CFrame.fromAxisAngle(Vector3.new(0, 1, 0), -math.pi/2)
	local LeftShoulder = jointBetween(Torso, LeftArm, LSCA, LSCB)
	LeftShoulder.Name = "Left Shoulder"
    LeftShoulder.MaxVelocity = 0.1


	local RightArm = Instance.new("Part")
	RightArm.Name = "Right Arm"
	RightArm.Anchored = false
	RightArm.CanCollide = false
	RightArm.Size = Vector3.new(1, 2, 1)
	RightArm.CFrame = CFrame.new(-1.5, 5.2, 4.5)
	RightArm.BottomSurface = "Smooth"
    RightArm.TopSurface = "Smooth"
    RightArm.Parent = CharacterModel

	local RSCA = CFrame.new(1.0, 0.5, 0) * CFrame.fromAxisAngle(Vector3.new(0, -1, 0), -math.pi/2)
	local RSCB = CFrame.new(-0.5, 0.5, 0) * CFrame.fromAxisAngle(Vector3.new(0, 1, 0), math.pi/2)
	local RightShoulder = jointBetween(Torso, RightArm, RSCA, RSCB)
	RightShoulder.Name = "Right Shoulder"
	RightShoulder.MaxVelocity = 0.1


	local Head = Instance.new("Part")
	Head.Name = "Head"
	Head.Anchored = false
	Head.CanCollide = true
	Head.Size = Vector3.new(2, 1, 1)
	Head.CFrame = CFrame.new(0, 6.7, 4.5)
	Head.BottomSurface = "Smooth"
    Head.TopSurface = "Smooth"
	Head.Parent = CharacterModel

	local HeadMesh = Instance.new("SpecialMesh", Head)
	HeadMesh.MeshType = Enum.MeshType.Head
	HeadMesh.Scale = Vector3.new(1.25, 1.25, 1.25)

	local NCA = CFrame.new(0, 1, 0, -1, 0, 0, 0, 0, 1, 0, 1, 0)
	local NCB = CFrame.new(0, -0.5, 0, -1, 0, 0, 0, 0, 1, 0, 1, 0)
	local Neck = jointBetween(Torso, Head, NCA, NCB)
	Neck.Name = "Neck"
	Neck.MaxVelocity = 0.1

	local Face = Instance.new("Decal")
	Face.Name = "face"
    Face.Texture = "rbxasset://textures/face.png"
    Face.Parent = Head

    local Humanoid = Instance.new("Humanoid")
    Humanoid.Parent = CharacterModel

	return CharacterModel
end

return R6