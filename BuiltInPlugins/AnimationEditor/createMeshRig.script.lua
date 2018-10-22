local rigCreator = require(script.Parent.RigCreator)

local toolbar = plugin:CreateToolbar("Animations")
local button = toolbar:CreateButton(
	"", -- The text next to the icon. Leave this blank if the icon is sufficient.
	"Create Mesh Rig", -- hover text
	"http://www.roblox.com/asset/?id=142301531" -- The icon file's name.
)

button.Click:connect(function()
	if (_G["AnimationEdit"] == true) then
		print("Cannot create rig while in edit mode.")
		return
	end
	
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


	rig:MoveTo(Vector3.new(0, 5.2, 0))
end)