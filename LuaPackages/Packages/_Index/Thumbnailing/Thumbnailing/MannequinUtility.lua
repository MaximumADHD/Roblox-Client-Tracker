-- Utility module for functions related to loading mannequins for thumbnails

local MannequinUtility = {}

local InsertService = game:GetService("InsertService")

type ObjectsFormat = {
	[number]: Folder,
}

local R6_MANNEQUIN_CONTENT_ID = "rbxasset://models/Thumbnails/Mannequins/R6.rbxm"
local R15_MANNEQUIN_CONTENT_ID = "rbxasset://models/Thumbnails/Mannequins/R15.rbxm"
local RTHRO_MANNEQUIN_CONTENT_ID = "rbxasset://models/Thumbnails/Mannequins/Rthro.rbxm"

local BODYPART_FOLDER_NAMES = {
	R6 = true,
	R15 = true,
	R15ArtistIntent = true,
}

MannequinUtility.CharacterPartNames = {
	R6 = {
		HumanoidRootPart = true,

		Head = true,
		Torso = true,

		["Left Arm"] = true,
		["Left Leg"] = true,
		["Right Arm"] = true,
		["Right Leg"] = true,
		CharacterMesh = true,
	},

	R15 = {
		HumanoidRootPart = true,

		Head = true,
		UpperTorso = true,
		LowerTorso = true,

		LeftUpperLeg = true,
		LeftLowerLeg = true,
		LeftFoot = true,

		RightUpperLeg = true,
		RightLowerLeg = true,
		RightFoot = true,

		LeftUpperArm = true,
		LeftLowerArm = true,
		LeftHand = true,

		RightUpperArm = true,
		RightLowerArm = true,
		RightHand = true,
	},
}

MannequinUtility.R15PartNameToEnum = {
	Head = Enum.BodyPartR15.Head,
	UpperTorso = Enum.BodyPartR15.UpperTorso,
	LowerTorso = Enum.BodyPartR15.LowerTorso,

	LeftUpperLeg = Enum.BodyPartR15.LeftUpperLeg,
	LeftLowerLeg = Enum.BodyPartR15.LeftLowerLeg,
	LeftFoot = Enum.BodyPartR15.LeftFoot,

	RightUpperLeg = Enum.BodyPartR15.RightUpperLeg,
	RightLowerLeg = Enum.BodyPartR15.RightLowerLeg,
	RightFoot = Enum.BodyPartR15.RightFoot,

	LeftUpperArm = Enum.BodyPartR15.LeftUpperArm,
	LeftLowerArm = Enum.BodyPartR15.LeftLowerArm,
	LeftHand = Enum.BodyPartR15.LeftHand,

	RightUpperArm = Enum.BodyPartR15.RightUpperArm,
	RightLowerArm = Enum.BodyPartR15.RightLowerArm,
	RightHand = Enum.BodyPartR15.RightHand,
}

MannequinUtility.CharacterPartNames.All = {}

for name, _ in pairs(MannequinUtility.CharacterPartNames.R6) do
	MannequinUtility.CharacterPartNames.All[name] = true
end

for name, _ in pairs(MannequinUtility.CharacterPartNames.R15) do
	MannequinUtility.CharacterPartNames.All[name] = true
end

local function loadMannequin(contentId): Model
	local mannequin = InsertService:LoadLocalAsset(contentId) :: Model
	local humanoid = mannequin:FindFirstChild("Humanoid") :: Humanoid
	assert(humanoid, "Assert Humanoid is not nil to silence type checker")
	humanoid.DisplayDistanceType = Enum.HumanoidDisplayDistanceType.None
	mannequin.Parent = workspace

	return mannequin
end

function MannequinUtility.LoadR15Mannequin(): Model
	return loadMannequin(R15_MANNEQUIN_CONTENT_ID)
end

function MannequinUtility.LoadR6Mannequin(): Model
	return loadMannequin(R6_MANNEQUIN_CONTENT_ID)
end

function MannequinUtility.LoadRthroMannequin(): Model
	return loadMannequin(RTHRO_MANNEQUIN_CONTENT_ID)
end

function MannequinUtility.LoadMannequinForScaleType(scaleType): Model
	if scaleType == "Classic" then
		return MannequinUtility.LoadR15Mannequin()
	else
		return MannequinUtility.LoadRthroMannequin()
	end
end

--[[
    Checks that the `objects` table has at least one folder with a name contained in objectsFolderNames
    `objects` is the table used to pass in BodyParts to create thumbnails
    Also confirm that all children under the folders are BodyParts
]]
function MannequinUtility.AssertObjectsFormat(objects: ObjectsFormat)
	local hasName = false
	for _, object in objects do
		assert(object:IsA("Folder"), "object should always be a Folder")
		if BODYPART_FOLDER_NAMES[object.Name] then
			hasName = true
			for _, child in object:GetChildren() do
				assert(
					MannequinUtility.CharacterPartNames.All[child.Name],
					string.format("Name of %s of Folder %s does not exist in CharacterParts", child.Name, object.Name)
				)
			end
		end
	end
	assert(hasName, "objects does not have at least one of R15ArtistIntent, R15, and R6 folders")
end

--[[
	Creates the mannequin from `objects` such as from game:GetObjects(assetUrl) or InsertService:LoadLocalAsset(assetUrl)
	`objects` is the body parts to be used in a format like:
	{
		[1] = R15ArtistIntent
		[2] = R15
		[3] = R6
	}
	Where R15ArtistIntent, R15, R6 are Folder Instances. It's expected at least one Folder should have the
	body parts as children and at least one of these Folders is present.
	This function just loads the mannequin model appropriate for the objects without inserting the new body part
	returns useR15, useR15NewNames, mannequin to be used for SetupBodyPartMannequin
]]
function MannequinUtility.CreateBodyPartMannequin(objects: ObjectsFormat): (boolean, boolean, Model)
	local useR15 = false
	local useR15NewNames = false
	local bodyPartProportion = "Classic"

	MannequinUtility.AssertObjectsFormat(objects)
	for _, object in objects do
		if object.Name == "R15" or object.Name == "R15ArtistIntent" then
			useR15 = true

			-- Check to see if there are native scale parts in this object
			local partScaleType = object:FindFirstChild("AvatarPartScaleType", true) :: StringValue
			if partScaleType then
				bodyPartProportion = partScaleType.Value
			end
			break
		end
	end

	for _, object in objects do
		if object.Name == "R15ArtistIntent" then
			useR15NewNames = true
			break
		end
	end

	local mannequin
	if useR15 then
		mannequin = MannequinUtility.LoadMannequinForScaleType(bodyPartProportion)
	else
		mannequin = MannequinUtility.LoadR6Mannequin()
	end
	local humanoid = mannequin:FindFirstChildOfClass("Humanoid") :: Humanoid

	humanoid.DisplayDistanceType = Enum.HumanoidDisplayDistanceType.None
	local typeObject = humanoid:FindFirstChild("BodyTypeScale") :: NumberValue

	if typeObject == nil then
		typeObject = Instance.new("NumberValue")
		typeObject.Name = "BodyTypeScale"
		typeObject.Value = 0
		typeObject.Parent = humanoid
	end

	local proportionObject = humanoid:FindFirstChild("BodyProportionScale") :: NumberValue
	if proportionObject == nil then
		proportionObject = Instance.new("NumberValue")
		proportionObject.Name = "BodyProportionScale"
		proportionObject.Value = 0
		proportionObject.Parent = humanoid
	end

	if bodyPartProportion == "ProportionsNormal" then
		typeObject.Value = 1
		proportionObject.Value = 0
	elseif bodyPartProportion == "ProportionsSlender" then
		typeObject.Value = 1
		proportionObject.Value = 1
	end

	return useR15, useR15NewNames, mannequin
end

--[[
	Meant to be used with CreateBodyPartMannequin to rig the mannequin and insert the body parts in
	`objects`.
	customUrl is the asset url of a given Classic Shirt or Classic Pants to highlight body parts ** RCC ONLY!!!
	What you might use to highlight:
		Torso: http://www.roblox.com/Asset/?id=25251062
		Left Arm: http://www.roblox.com/Asset/?id=25251081
		Right Arm: http://www.roblox.com/Asset/?id=25251071
		Left Leg: http://www.roblox.com/Asset/?id=25251138
		Right Leg: http://www.roblox.com/Asset/?id=25251144

    returns
        faceRight: whether the mannequin should face right in a thumbnail
        focusPartNames: the names of the body parts for the camera to focus on
    returned values should be used with CameraUtility.SetupBodyPartCamera
]]
function MannequinUtility.SetupBodyPartMannequin(
	useR15: boolean,
	useR15NewNames: boolean,
	mannequin: Model,
	objects: ObjectsFormat,
	customClothingUrl: string?
): (boolean, { [number]: string })
	MannequinUtility.AssertObjectsFormat(objects)
	local faceRight = false
	-- classic clothing item that highlights parts with a blue checker pattern
	-- should only be used on RCC as it uses game:GetObjects which wouldn't work in Client
	if customClothingUrl then
		game:GetObjects(customClothingUrl)[1].Parent = mannequin
	end

	local function addFolderChildren(
		folder: Folder,
		focusPartNamesOut: { [number]: string },
		focusPartsOut: { [number]: BasePart }
	)
		for _, child in pairs(folder:GetChildren()) do
			assert(child:IsA("BasePart"), "Only BaseParts should be in Folders")
			-- check if it's a right arm or leg part
			if string.find(child.Name, "Right") then
				faceRight = true
			end
			local humanoid = mannequin:FindFirstChild("Humanoid") :: Humanoid
			humanoid:ReplaceBodyPartR15(MannequinUtility.R15PartNameToEnum[child.Name], child)
			table.insert(focusPartNamesOut, child.Name)
			table.insert(focusPartsOut, child)
		end
	end

	local r15FolderName = "R15"
	if useR15 and useR15NewNames then
		r15FolderName = "R15ArtistIntent"
	end

	local focusParts = {}
	local focusPartNames = {}

	for _, object in pairs(objects) do
		if (useR15 and object.Name == r15FolderName) or (not useR15 and object.Name == "R6") then
			addFolderChildren(object, focusPartNames, focusParts)
		elseif not string.find(object.Name, "R15") then -- There will now be MULTIPLE R15 Folders. Ignore the ones we didn't search for.
			object.Parent = mannequin
		end
	end

	if useR15 then
		-- Build R15 rig
		local humanoidRootPart = mannequin:FindFirstChild("HumanoidRootPart") :: BasePart
		mannequin.PrimaryPart = humanoidRootPart
		humanoidRootPart.CFrame = CFrame.new(Vector3.new(0, 5, 0)) * CFrame.Angles(0, math.pi, 0)
		humanoidRootPart.Anchored = true
		local humanoid = mannequin:FindFirstChildOfClass("Humanoid") :: Humanoid
		humanoid:BuildRigFromAttachments()
	end
	return faceRight, focusPartNames
end

--[[
	For creating a model to be used in a Head thumbnail/viewport, is not on a mannequin and
    head just floats in the picture
]]
function MannequinUtility.CreateHeadModel(head: MeshPart): Model
	local model = Instance.new("Model")

	-- Ensure name is "Head"
	head.Name = "Head"
	head.Parent = model

	-- Humanoid is necessary for 3D thumbnails to work correctly
	-- enables Humanoid-specific rendering which gives the Head a "smooth plastic" visual
	-- and makes the face decal work correctly in the 3D view (due to texture compositing behavior?)
	local humanoid = Instance.new("Humanoid")
	humanoid.RigType = Enum.HumanoidRigType.R15
	humanoid.Parent = model

	humanoid.DisplayDistanceType = Enum.HumanoidDisplayDistanceType.None

	return model
end

return MannequinUtility
