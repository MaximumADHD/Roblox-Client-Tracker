local Workspace = game:GetService("Workspace")
local CollectionService = game:GetService("CollectionService")
local InsertService = game:GetService("InsertService")

local root = script:FindFirstAncestor("root")

local constants = require(root.src.constants)

local R15_DEFAULT_RIG_ID = 1664543044

local function forceSetNumberValue(parent, name, value)
	local existing = parent:FindFirstChild(name)
	if existing then
		existing:Destroy()
	end
	local instance = Instance.new("NumberValue")
	instance.Name = name
	instance.Value = value
	instance.Parent = parent
end

return function(plugin)
	return function(store)
		local starterCharacter = InsertService:LoadAsset(R15_DEFAULT_RIG_ID):GetChildren()[1]
		starterCharacter.Name = "StarterCharacter"

		CollectionService:AddTag(starterCharacter, constants.TAG)

		local humanoid = starterCharacter:FindFirstChildOfClass("Humanoid")

		for _, folder in ipairs(Workspace:GetChildren()) do
			if folder:IsA("Folder") and CollectionService:HasTag(folder, constants.TAG) then
				for _, child in ipairs(folder:GetChildren()) do
					if folder.Name == "Head" and child:IsA("MeshPart") then
						humanoid:ReplaceBodyPartR15(Enum.BodyPartR15.Head, child:Clone())
					elseif child.Name == "R15ArtistIntent" then
						for _, bodyPart in ipairs(child:GetChildren()) do
							if bodyPart:IsA("MeshPart") then
								humanoid:ReplaceBodyPartR15(Enum.BodyPartR15[bodyPart.Name], bodyPart:Clone())
							end
						end
					end
				end
			end
		end

		forceSetNumberValue(humanoid, "BodyDepthScale", 1)
		forceSetNumberValue(humanoid, "BodyHeightScale", 1)
		forceSetNumberValue(humanoid, "BodyWidthScale", 1)
		forceSetNumberValue(humanoid, "HeadScale", 1)

		local bodyTypeScale
		local bodyProportionScale

		local avatarPartScaleType = starterCharacter.Head:FindFirstChild("AvatarPartScaleType")
		local avatarPartScaleTypeValue = avatarPartScaleType and avatarPartScaleType.Value or "Classic"
		if avatarPartScaleTypeValue == "Classic" then
			bodyTypeScale = 0
			bodyProportionScale = 0
		elseif avatarPartScaleTypeValue == "ProportionsNormal" then
			bodyTypeScale = 1
			bodyProportionScale = 0
		elseif avatarPartScaleTypeValue == "ProportionsSlender" then
			bodyTypeScale = 1
			bodyProportionScale = 1
		end

		forceSetNumberValue(humanoid, "BodyTypeScale", bodyTypeScale)
		forceSetNumberValue(humanoid, "BodyProportionScale", bodyProportionScale)

		humanoid:BuildRigFromAttachments()

		starterCharacter.Parent = Workspace
	end
end
