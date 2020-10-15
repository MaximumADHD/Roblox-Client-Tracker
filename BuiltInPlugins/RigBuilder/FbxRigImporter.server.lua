--!nolint LocalUnused
--^ DEVTOOLS-4490
local ContentProvider = game:GetService("ContentProvider")
local BaseUrl = ContentProvider.BaseUrl
local AssetUrl = BaseUrl .."asset/?id="
local InsertService = game:GetService("InsertService")

local GUIsFolder = InsertService:LoadLocalAsset("rbxasset://models/RigBuilder/RigBuilderGUI.rbxm")

local rigCreator = require(script.Parent.RigCreator)

local toolbar = nil
local fbxFlagExists, fbxFlagValue = pcall(function() return settings():GetFFlag("DebugStudioRigImporter") end)
local newR15IntermediateStateExists, newR15IntermediateStateValue = pcall(function() return settings():GetFFlag("AnthroArtistIntentFBXImporterIntermediateState") end)
local anthroProportionsFlagExists, anthroProportionsFlagValue = pcall(function() return settings():GetFFlag("ImporterUseAnthroProportions") end)
local useBaseUrlFlagExists, useBaseUrlFlagValue = pcall(function() return settings():GetFFlag("UseBaseUrlInPlugins") end)
local useBaseUrl = useBaseUrlFlagExists and useBaseUrlFlagValue

local ANTHRO_PROPORTIONS_CLASSIC = "Classic"
local ANTHRO_PROPORTIONS_SLENDER = "ProportionsSlender"
local ANTHRO_PROPORTIONS_NORMAL = "ProportionsNormal"

local R15PartMapping = {
	["Head"] = {"Head"},
	["Left Leg"] = {"LeftFoot", "LeftLowerLeg", "LeftUpperLeg"},
	["Right Leg"] = {"RightFoot", "RightLowerLeg", "RightUpperLeg"},
	["Torso"] = {"UpperTorso", "LowerTorso"},
	["Right Arm"] = {"RightUpperArm", "RightLowerArm", "RightHand"},
	["Left Arm"] = {"LeftUpperArm", "LeftLowerArm", "LeftHand"}
}

-- If the old CharacterMeshs are imported by ID then this will contain a map in the format:
-- BodyPart.Name => AssetId
local assetIdMap = {}

local function setupTextClearOnFocus(textbox)
	-- We do want to clear the text on focus if it is the template text
	textbox.Focused:connect(function()
		if string.find(textbox.Text, "<") ~= nil then
			textbox.Text = ""
		end
	end)
end

local function textboxListSetup(frame, template, nameList)
	table.sort(nameList)
	for i = 1, #nameList do
		local newTextbox = template:Clone()
		newTextbox.Name = nameList[i]
		newTextbox.Parent = frame
		newTextbox.Position = template.Position + UDim2.new(0, 0, 0, (i-1)*newTextbox.Size.Y.Offset)
		newTextbox.Description.Text = nameList[i]
		for _, obj in pairs(newTextbox:GetChildren()) do
			if obj:IsA("TextBox") then
				setupTextClearOnFocus(obj)
			end
		end
	end
	template:Destroy()
end

local function createConfigureGui(R15Folder, R6Folder, R15FixedFolder, R15LegacyFolder)
	local screenGui = GUIsFolder.FBXimport:Clone()
	screenGui.Parent = game:GetService("CoreGui")


	local rigConfigurationFrame = screenGui.RigConfiguration

	rigConfigurationFrame.Cancel.MouseButton1Down:connect(function()
		screenGui:Destroy()
	end)

	-- Do initial setup of TextBox fields
	local R15TextureIds = rigConfigurationFrame.R15.TextureIDs
	local textboxTemplate = R15TextureIds.TextboxTemplate
	local nameList = {}

	for key, _ in pairs(R15PartMapping) do
		table.insert(nameList, key)
	end
	textboxListSetup(R15TextureIds, textboxTemplate, nameList)

	nameList = {}
	for _, enum in pairs(Enum.BodyPart:GetEnumItems()) do
		table.insert(nameList, enum.Name)
	end

	local R6CharaterMeshes = rigConfigurationFrame.R6.CharacterMeshIDs
	textboxTemplate = R6CharaterMeshes.TextboxTemplate
	textboxListSetup(R6CharaterMeshes, textboxTemplate, nameList)

	local R6TextureTextboxes = rigConfigurationFrame.R6.TextureIDs.Textboxes
	setupTextClearOnFocus(R6TextureTextboxes.BaseTextureId)
	setupTextClearOnFocus(R6TextureTextboxes.OverlayTextureId)

	local assetUrls = {
		useBaseUrl and AssetUrl or "http://roblox.com/asset/?id=",
		"rbxassetid://"
	}

	local function getTextureIdFromContent(contentId)
		for _, assetUrl in pairs(assetUrls) do
			if string.find(contentId, assetUrl, 1, true) ~= nil then
				return string.sub(contentId, assetUrl:len() + 1)
			end
		end
		return contentId
	end

	-- Show the current values from the rig
	for _, obj in pairs(R15TextureIds:GetChildren()) do
		for _, name in pairs(R15PartMapping[obj.Name]) do
			local part = R15Folder:FindFirstChild(name)
			if part and part:IsA("MeshPart") and part.TextureID ~= "" then
				local textureId = getTextureIdFromContent(part.TextureID)
				obj.TextureID.Text = textureId

				if (not R15FixedFolder and not R15LegacyFolder) then
					break
				end
			end

			if (R15FixedFolder) then
				local part = R15FixedFolder:FindFirstChild(name)
				if part and part:IsA("MeshPart") and part.TextureID ~= "" then
					local textureId = getTextureIdFromContent(part.TextureID)
					obj.TextureID.Text = textureId
					if (not R15LegacyFolder) then
						break
					end
				end
			end

			if (R15LegacyFolder) then
				local part = R15LegacyFolder:FindFirstChild(name)
				if part and part:IsA("MeshPart") and part.TextureID ~= "" then
					local textureId = getTextureIdFromContent(part.TextureID)
					obj.TextureID.Text = textureId
					break
				end
			end
		end
	end

	local R6AssetIdFrame = rigConfigurationFrame.R6.AssetId
	R6AssetIdFrame.Visible = true
	setupTextClearOnFocus(R6AssetIdFrame.OldAssetId)

	for _, obj in pairs(R6Folder:GetChildren()) do
		if obj:IsA("CharacterMesh") then
			if tostring(obj.BaseTextureId) ~= "" and obj.BaseTextureId ~= 0 then
				R6TextureTextboxes.BaseTextureId.Text = tostring(obj.BaseTextureId)
			end

			if tostring(obj.OverlayTextureId) ~= "" and obj.OverlayTextureId ~= 0 then
				R6TextureTextboxes.OverlayTextureId.Text = tostring(obj.OverlayTextureId)
			end

			if tostring(obj.MeshId) ~= "" and obj.MeshId ~= 0 then
				R6CharaterMeshes[obj.BodyPart.Name].MeshId.Text = tostring(obj.MeshId)
			end
		end
	end

	rigConfigurationFrame.Done.MouseButton1Down:connect(function()
		if R15Folder and R6Folder then
			-- Fill the values from the TextBox fields into the rig
			for _, obj in pairs(R15TextureIds:GetChildren()) do
				local id = obj.TextureID.Text
				if id ~= "" and string.find(id, "<") == nil then
					local assetString = useBaseUrl and AssetUrl or "http://roblox.com/asset/?id="
					if string.find(id, assetString, 1, true) == nil then
						id = assetString.. "" ..id
					end

					for _, name in pairs(R15PartMapping[obj.Name]) do
						local part = R15Folder:FindFirstChild(name)
						if part and part:IsA("MeshPart") then
							part.TextureID = id
						end

						if (R15FixedFolder) then
							local part = R15FixedFolder:FindFirstChild(name)
							if part and part:IsA("MeshPart") then
								part.TextureID = id
							end
						end

						if (R15LegacyFolder) then
							local part = R15LegacyFolder:FindFirstChild(name)
							if part and part:IsA("MeshPart") then
								part.TextureID = id
							end
						end
					end

				end
			end

			local R6TextureTextboxes = rigConfigurationFrame.R6.TextureIDs.Textboxes

			if tonumber(R6AssetIdFrame.OldAssetId.Text) == nil then
				for _, enum in pairs(Enum.BodyPart:GetEnumItems()) do
					local meshId = tonumber(R6CharaterMeshes[enum.Name].MeshId.Text)
					local baseTextureId = tonumber(R6TextureTextboxes.BaseTextureId.Text)
					local overlayTextureId = tonumber(R6TextureTextboxes.OverlayTextureId.Text)

					if meshId or baseTextureId or overlayTextureId then
						local characterMesh = nil

						for _, characterObject in pairs(R6Folder:GetChildren()) do
							if characterObject:IsA("CharacterMesh") and characterObject.BodyPart == enum then
								characterMesh = characterObject
							end
						end

						if not characterMesh then
							characterMesh = Instance.new("CharacterMesh")
							characterMesh.BodyPart = enum
							characterMesh.Parent = R6Folder
						end

						if meshId then
							characterMesh.MeshId = meshId
						end

						if baseTextureId then
							characterMesh.BaseTextureId = baseTextureId
						end

						if overlayTextureId then
							characterMesh.OverlayTextureId = overlayTextureId
						end
					end
				end
			else
				-- We can get the R6 package information from the asset of the old packages
				local R6PackageAssetId = tonumber(R6AssetIdFrame.OldAssetId.Text)
				local bodyPartAssetIds = game:GetService("AssetService"):GetAssetIdsForPackage(R6PackageAssetId)
				for _, assetId in pairs(bodyPartAssetIds) do
					local model = game:GetService("InsertService"):LoadAsset(assetId)
					local children = model:GetChildren()
					if model:FindFirstChild("R6") then
						-- This is the new dual format for packages
						children = model.R6:GetChildren()
					end
					for _, child in pairs(children) do
						if child:IsA("CharacterMesh") then
							assetIdMap[child.BodyPart.Name] = assetId
							-- Destroy duplicates of this Character mesh if there are any
							for _, existingPart in pairs(R6Folder:GetChildren()) do
								if existingPart:IsA("CharacterMesh") and existingPart.BodyPart == child.BodyPart then
									existingPart:Destroy()
								end
							end
							child.Parent = R6Folder
						end
					end
					model:Destroy()
				end
			end
		end
		screenGui:Destroy()
	end)
end

-----------------------------------------------------
--- --- --- TEMP ASSET MIGRATION CODE --- --- --- ---
-----------------------------------------------------
--- DELETE THIS SECTION WHEN REMOVING R15ToArtistIntentAssetMigratorEnabled
local migratorFlagExists, migratorFlagTrue =  pcall(function () return settings():GetFFlag("R15ToArtistIntentAssetMigratorEnabled") end)
-- -- We need to shift the top RightUpperArm down by 0.047.
local shoulderShiftY = -0.047															-- Defined by Art Spec (New R15 compared to old R15)
local originalR15UpperArmSize = Vector3.new(1, 1.4, 1); 								-- See Client\content\avatar\characterR15.rbxm
local newR15UpperArmSize = originalR15UpperArmSize + Vector3.new(0, shoulderShiftY, 0)
local R15MigrationScales =
{
	["RightUpperArm"] = 	newR15UpperArmSize / originalR15UpperArmSize,
	["LeftUpperArm"] =		newR15UpperArmSize / originalR15UpperArmSize
}

-- -- When we shrink and object is actually shrinks around its 0,0,0. This means we have to shift the part down by
-- -- half the shrink margin to make sure that the part only shrinks from the top.
local R15MigrationPartOffsets = {
	["RightUpperArm"] = 	Vector3.new( 0, (shoulderShiftY / 2), 0),
	["LeftUpperArm"] =		Vector3.new( 0, (shoulderShiftY / 2), 0),
}

-- --- Resizing using Part.Size does not automatically drag the attachment relatively with the part
local R15AttachmentPositionOffsets = {
	["RightShoulderAttachment"] = 		Vector3.new( 0, (shoulderShiftY / 2), 0),
	["LeftShoulderAttachment"] =		Vector3.new( 0, (shoulderShiftY / 2), 0),
}

-- -- Old R15 Spec to new R15 Spec moves the RootRigJoint down by 0.350 (to the hip rig joints)
local r15AnthroMigrationAdjust = Vector3.new(0, -0.350, 0)

-- -- JOINT POSITION VERIFICATION MAP -- --
-- -- This is technically Duplicate date (some of it anyway) to a map used in the
-- -- FBX importer above.
local r15FixedAttachmentVerificationMap = {
		["RootRigAttachment"] = 			Vector3.new(0, 0, 0),
		["WaistRigAttachment"] = 			Vector3.new(0, 0.4, 0),
		["NeckRigAttachment"] = 			Vector3.new(0, 2, 0),
		["LeftShoulderRigAttachment"] = 	Vector3.new(-1, 1.763, 0),
		["RightShoulderRigAttachment"] =	Vector3.new(1, 1.763, 0),
		["LeftElbowRigAttachment"] =		Vector3.new(-1.5, 1.035, 0),
		["RightElbowRigAttachment"] =		Vector3.new(1.5, 1.035, 0),
		["LeftWristRigAttachment"] =		Vector3.new(-1.5, 0.275, 0),
		["RightWristRigAttachment"] =		Vector3.new(1.5, 0.275, 0),
		["LeftHipRigAttachment"] =			Vector3.new(-0.5, 0, 0),
		["RightHipRigAttachment"] =			Vector3.new(0.5, 0, 0),
		["LeftKneeRigAttachment"] =			Vector3.new(-0.5, -0.822, 0),
		["RightKneeRigAttachment"] =		Vector3.new(0.5, -0.822, 0),
		["LeftAnkleRigAttachment"] =		Vector3.new(-0.5, -1.748, 0),
		["RightAnkleRigAttachment"] =		Vector3.new(0.5, -1.748, 0),
		["RightShoulderAttachment"] = 		Vector3.new(1.5, 1.953, 0),
		["LeftShoulderAttachment"] = 		Vector3.new(-1.5, 1.953, 0),
		["FaceCenterAttachment"] = 			Vector3.new(0, 2.5, 0),
		["FaceFrontAttachment"] = 			Vector3.new(0, 2.5, -0.6),
		["HairAttachment"] = 				Vector3.new(0, 3.1, 0),
		["HatAttachment"] = 				Vector3.new(0, 3.1, 0),
		["NeckAttachment"] = 				Vector3.new(0, 2, 0),
		["BodyFrontAttachment"] = 			Vector3.new(0, 1, -0.5),
		["BodyBackAttachment"] = 			Vector3.new(0, 1, 0.5),
		["LeftCollarAttachment"] = 			Vector3.new(-1, 2, 0),
		["RightCollarAttachment"] = 		Vector3.new(1, 2, 0),
		["WaistBackAttachment"] = 			Vector3.new(0, 0, 0.5),
		["WaistCenterAttachment"] = 		Vector3.new(0, 0, 0),
		["WaistFrontAttachment"] = 			Vector3.new(0, 0, -0.5)
}

-- -- Pre R15Fixed Process Steps
-- -- When migrating packages from R15 to new R15 we must adjust Arms and Hands by 0.047 studs down, before reprojecting attachments.
local function findAdjustArmParts( inst )
	local scaleValue = R15MigrationScales[inst.Name]
	if inst:IsA("BasePart") and scaleValue then
		inst.Size = inst.Size * scaleValue
	end

	local offsetValue = R15MigrationPartOffsets[inst.Name]
	if inst:IsA("BasePart") and offsetValue then
		inst.CFrame = inst.CFrame + offsetValue
	end

	local attachmentOffsetValue = R15AttachmentPositionOffsets[inst.Name]
	if inst:IsA("Attachment") and attachmentOffsetValue then
		inst.Position = inst.Position + attachmentOffsetValue
	end

	for i,v in pairs(inst:GetChildren()) do
		findAdjustArmParts( v )
	end
end

local epsilon = 0.0001
local function verifyAllAttachmentPositionsRecursively( inst )
	local attachmentWorldSpace = r15FixedAttachmentVerificationMap[inst.Name]
	if attachmentWorldSpace then
	    local delta = (attachmentWorldSpace - inst.WorldPosition)
		if (delta.Magnitude > epsilon) then
			spawn(
				function() error("Attachment: " .. inst.Name .. " - Parent: " .. tostring(inst.Parent.Name) .. " Position Expected: " .. tostring(attachmentWorldSpace) .. " result " .. tostring(inst.WorldPosition))
			end)
			wait(1)
		end
	end

	for i,v in pairs(inst:GetChildren()) do
		verifyAllAttachmentPositionsRecursively( v )
	end
end

local function breakRigJointsRecursive( inst )
	if inst:IsA("Motor6D") then
		inst:Destroy()
	end

	for i,v in pairs(inst:GetChildren()) do
		breakRigJointsRecursive( v )
	end
end

-- -- Main Functions for Shoulder Adjust
local function adjustShouldersForNewR15( model )
	breakRigJointsRecursive( model )
	findAdjustArmParts( model )
end

local exportModels = nil
local dummyRootPart = nil

-- -- Folder Names -- --
-- -- As Expected in C++ -- --
local r15AIFolderName = "R15ArtistIntent"
local r15FixedFolderName = "R15Fixed"

-- -- Load Package from a Package ID
local function loadPackage(id, processForAnthro)
	local partIDs = game:GetService("AssetService"):GetAssetIdsForPackage(id)
	local avatarModel = Instance.new("Model", exportModels)
	avatarModel.Name = tostring(id)
	local R15AIRig
	local R15FixedRig
	if (processForAnthro == true) then
			R15AIRig = Instance.new("Model", avatarModel)
			R15AIRig.Name = "R15AIRig"
			local AIRoot = dummyRootPart:Clone()
			AIRoot.Parent = R15AIRig

			R15FixedRig = Instance.new("Model", avatarModel)
			R15FixedRig.Name = "R15FixedRig"
			local FixedRoot = dummyRootPart:Clone()
			FixedRoot.Parent = R15FixedRig
	end

	for i,partID in pairs(partIDs) do
		local model
		local success = pcall(function()
		  model = game:GetService("InsertService"):LoadAsset(partID)
		end)

		if (success) then
			model.Name = tostring(partID)
			model.Parent = avatarModel

			if (processForAnthro == true) then
				local R15 = model:FindFirstChild("R15")
				if (R15) then
					local R15AI = model:FindFirstChild(r15AIFolderName)
					local R15Fixed = model:FindFirstChild(r15FixedFolderName)
					if (R15AI) then
						R15AI:Destroy()
					end

					if (R15Fixed) then
						R15Fixed:Destroy()
					end

					R15AI = Instance.new("Folder", model)
					R15AI.Name = r15AIFolderName

					R15Fixed = Instance.new("Folder", model)
					R15Fixed.Name = r15FixedFolderName

					for j, inst in pairs(R15:GetChildren()) do
						local AIClone = inst:Clone()
						AIClone.Parent = R15AIRig
						local aiPtr = Instance.new("ObjectValue", AIClone)
						aiPtr.Value = R15AI
						aiPtr.Name = "AssetPtr"

						local FixedClone = inst:Clone()
						FixedClone.Parent = R15FixedRig
						local fixedPtr = Instance.new("ObjectValue", FixedClone)
						fixedPtr.Value = R15Fixed
						fixedPtr.Name = "AssetPtr"
					end
				end
			end

		end
	end
	return avatarModel
end

-- -- Hack. Current system expects there to be a String Value to parse with PackageIDs
local function getPackageListFromStringValue()
	local screenGui = Instance.new("ScreenGui",  game:GetService("CoreGui"))

	local textBox = Instance.new("TextBox", screenGui)
	textBox.Text = "Paste PackageID CSV here"
	textBox.Size = UDim2.new(0, 400, 0, 50)
	textBox.Position = UDim2.new(0.5, -200, 0.5, 0)
	textBox.BackgroundColor3 = Color3.new(255, 255, 255)

	local confirmButton = Instance.new("TextButton", textBox)
	confirmButton.Position = UDim2.new(0.25, 0, 1.2, 0)
	confirmButton.Size = UDim2.new(0.5, 0, 0.5, 0)
	confirmButton.BackgroundColor3 = Color3.new( 50, 50, 50)
	confirmButton.Text = "Confirm"


	local clicked = false
	local stringOut = ""
	confirmButton.MouseButton1Click:connect( function()
		stringOut = textBox.Text
		clicked = true
		print(stringOut)
		screenGui:Destroy()
	end)

	while( not clicked ) do
		wait()
	end

	local packageIds = {}
	for word in string.gmatch(stringOut, '([^,]+)') do
	    table.insert(packageIds, tonumber(word))
	end

	return packageIds
end

-- -- Finds Humanoid Root Parts
local function recursiveFindRootPart( model)
	for i,v in pairs(model:GetChildren()) do
		local root = recursiveFindRootPart(v)
		if (root) then
			return root
		end
	end

	if ( model:IsA("BasePart") and model.Name == "HumanoidRootPart" ) then
		return model
	else
		return nil
	end
end

-- -- Goes through newly allocated R15 Packages and puts them back into
-- -- Export format.
local function recursivelyTryToRepackRigParts( inst )
	if inst:IsA("BasePart") then
		for i,v in pairs (inst:GetChildren()) do
			if (v:IsA("Motor6D")) then
				v:Destroy()
			end
		end

		local assetPtr = inst:FindFirstChild("AssetPtr")
		if (assetPtr) then
			inst.Parent = assetPtr.Value
			assetPtr:Destroy()
		end
	end

	for i,v in pairs(inst:GetChildren()) do
		recursivelyTryToRepackRigParts( v )
	end
end

local function buildJoint(parentAttachment, partForJointAttachment)
    local newMotor = Instance.new("Motor6D")
	newMotor.Name = parentAttachment.Name:gsub("RigAttachment", "")

    newMotor.Part0 = parentAttachment.Parent
    newMotor.Part1 = partForJointAttachment.Parent

	newMotor.C0 = parentAttachment.CFrame
    newMotor.C1 = partForJointAttachment.CFrame

	local oldMotor = partForJointAttachment.Parent:FindFirstChild(newMotor.Name)
	while oldMotor do
		oldMotor:Destroy()
		oldMotor = partForJointAttachment.Parent:FindFirstChild(newMotor.Name)
	end

    newMotor.Parent = partForJointAttachment.Parent
    return newMotor
end

-- Removes old Motor6Ds and builds the rig from the attachments in the parts
-- Call this with nil, HumanoidRootPart
local function buildRigFromAttachments(last, part)
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

-- -- Moves the entire model by the deltaCFrame by shifting all the part
-- -- CFrames
local function displaceModelRecursively( inst , deltaCFrame, rigged)
	if ( inst:IsA("BasePart") ) then
		if (not rigged or inst.Name == "HumanoidRootPart") then
			inst.CFrame =  deltaCFrame * inst.CFrame
		end
	end

	for i,v in pairs(inst:GetChildren()) do
		displaceModelRecursively(v, deltaCFrame, rigged)
	end
end

-- Old R15 to new R15 Anthro Spec Adjustment Values/Map
-- -- R15 Fixed Rig Attachment Pos Map
local R15FixedRigAttachmentMap = {
	["RootRigAttachment"] = 			Vector3.new( 0, 	0, 		0),	--HumanoidRootPart to LowerTorso
	["WaistRigAttachment"] = 			Vector3.new( 0, 	0.4, 	0), --UpperTorso to LowerTorso
	["NeckRigAttachment"] =				Vector3.new( 0,		2.0,	0), --UpperTorso to Head
	["LeftShoulderRigAttachment"] =		Vector3.new( -1,	1.763,  0), --UpperTorso to LeftShoulder
	["RightShoulderRigAttachment"] =	Vector3.new( 1,		1.763,	0),	--UpperTorso to RightUpperArm
	["RightElbowRigAttachment"] =		Vector3.new( 1.5,	1.035,	0),	--RightUpperArm to RightLowerArm
	["RightWristRigAttachment"] =		Vector3.new( 1.5,	0.275,  0), --RightLowerArm to RightHand
	["LeftElbowRigAttachment"] =		Vector3.new( -1.5,  1.035,  0), --LeftUpperArm to LeftLowerArm
	["LeftWristRigAttachment"] =		Vector3.new( -1.5,	0.275,  0), --LeftLowerArm to LeftHand
	["RightHipRigAttachment"] = 		Vector3.new( 0.5,	0,		0), --LowerTorso to RightUpperLeg
	["RightKneeRigAttachment"] =		Vector3.new( 0.5,	-0.822,	0), --RightUpperLeg to RightLowerLeg
	["RightAnkleRigAttachment"] =		Vector3.new( 0.5,	-1.748, 0), --RightLowerLeg to RightFoot
	["LeftHipRigAttachment"] =			Vector3.new( -0.5,	0,		0), --LowerTorso to LeftUpperLeg
	["LeftKneeRigAttachment"] =			Vector3.new( -0.5,	-0.822,	0),	--LeftUpperLeg to LeftLowerLeg
	["LeftAnkleRigAttachment"] = 		Vector3.new( -0.5,	-1.748,	0), --LeftLowerLeg to LeftFoot

	["LeftGripAttachment"] = 			Vector3.new(-1.5, 	0, 		0),
	["LeftShoulderAttachment"] = 		Vector3.new(-1.5, 	1.953, 	0),
	["RightGripAttachment"] = 			Vector3.new(1.5, 	0, 		0),
	["RightShoulderAttachment"] = 		Vector3.new(1.5, 	1.953, 	0),
	["BodyFrontAttachment"] = 			Vector3.new(0, 		1, 		-0.5),
	["BodyBackAttachment"] = 			Vector3.new(0, 		1, 		0.5),
	["LeftCollarAttachment"] = 			Vector3.new(-1, 	2, 		0),
	["RightCollarAttachment"] = 		Vector3.new(1, 		2, 		0),
	["NeckAttachment"] = 				Vector3.new(0, 		2, 		0),
	["LeftFootAttachment"] = 			Vector3.new(-0.5, 	-2, 	0),
	["RightFootAttachment"] = 			Vector3.new(0.5, 	-2, 	0),
	["WaistCenterAttachment"] = 		Vector3.new(0, 		0, 		0),
	["WaistFrontAttachment"] = 			Vector3.new(0, 		0, 		-0.5),
	["WaistBackAttachment"] = 			Vector3.new(0, 		0, 		0.5),
	["FaceCenterAttachment"] = 			Vector3.new(0, 		2.5, 	0),
	["FaceFrontAttachment"] = 			Vector3.new(0, 		2.5, 	-0.6),
	["HairAttachment"] = 				Vector3.new(0, 		3.1, 	0),
	["HatAttachment"] = 				Vector3.new(0, 		3.1, 	0),
}

local AnthroNormalFixedRigAttachmentMap = {
	["RootRigAttachment"] = 			Vector3.new(0, 		0, 		0),	--HumanoidRootPart to LowerTorso
	["WaistRigAttachment"] = 			Vector3.new(0, 		0.488, 	0), --UpperTorso to LowerTorso
	["NeckRigAttachment"] =				Vector3.new(0, 		1.807, 	0), --UpperTorso to Head
	["LeftShoulderRigAttachment"] =		Vector3.new(-0.67, 	1.612, 	0), --UpperTorso to LeftShoulder
	["RightShoulderRigAttachment"] =	Vector3.new(0.67, 	1.612, 	0),	--UpperTorso to RightUpperArm
	["RightElbowRigAttachment"] =		Vector3.new(1, 		0.592, 	0),	--RightUpperArm to RightLowerArm
	["RightWristRigAttachment"] =		Vector3.new(1, 		-0.331, 0), --RightLowerArm to RightHand
	["LeftElbowRigAttachment"] =		Vector3.new(-1, 	0.592, 	0), --LeftUpperArm to LeftLowerArm
	["LeftWristRigAttachment"] =		Vector3.new(-1, 	-0.331, 0), --LeftLowerArm to LeftHand
	["RightHipRigAttachment"] = 		Vector3.new(0.325, 	0, 		0), --LowerTorso to RightUpperLeg
	["RightKneeRigAttachment"] =		Vector3.new(0.325, 	-1.431, 0), --RightUpperLeg to RightLowerLeg
	["RightAnkleRigAttachment"] =		Vector3.new(0.325, 	-3.031, 0), --RightLowerLeg to RightFoot
	["LeftHipRigAttachment"] =			Vector3.new(-0.325, 0, 		0), --LowerTorso to LeftUpperLeg
	["LeftKneeRigAttachment"] =			Vector3.new(-0.325,	-1.431, 0),	--LeftUpperLeg to LeftLowerLeg
	["LeftAnkleRigAttachment"] = 		Vector3.new(-0.325, -3.031, 0), --LeftLowerLeg to LeftFoot

	["LeftGripAttachment"] = 			Vector3.new(-1, 	-0.606, 0),
	["LeftShoulderAttachment"] = 		Vector3.new(-1, 	1.877, 	0),
	["RightGripAttachment"] = 			Vector3.new(1, 		-0.606, 0),
	["RightShoulderAttachment"] = 		Vector3.new(1, 		1.877, 	0),
	["BodyFrontAttachment"] = 			Vector3.new(0, 		0.983, 	-0.335),
	["BodyBackAttachment"] = 			Vector3.new(0, 		0.983, 	0.335),
	["LeftCollarAttachment"] = 			Vector3.new(-0.67, 	1.807, 	0),
	["RightCollarAttachment"] = 		Vector3.new(0.67, 	1.807, 	0),
	["NeckAttachment"] = 				Vector3.new(0, 		1.807, 	0),
	["LeftFootAttachment"] = 			Vector3.new(-0.325, -3.602, 0),
	["RightFootAttachment"] = 			Vector3.new(0.325, 	-3.602, 0),
	["WaistCenterAttachment"] = 		Vector3.new(0, 		0, 		0),
	["WaistFrontAttachment"] = 			Vector3.new(0, 		0, 		-0.335),
	["WaistBackAttachment"] = 			Vector3.new(0, 		0, 		0.335),
	["FaceCenterAttachment"] = 			Vector3.new(0, 		2.261, 	0),
	["FaceFrontAttachment"] = 			Vector3.new(0, 		2.261, 	-0.45),
	["HairAttachment"] = 				Vector3.new(0, 		2.807, 	0),
	["HatAttachment"] = 				Vector3.new(0, 		2.807, 	0),
}

local AnthroSlenderFixedRigAttachmentMap = {
	["RootRigAttachment"] = 			Vector3.new(0, 		0, 		0),	--HumanoidRootPart to LowerTorso
	["WaistRigAttachment"] = 			Vector3.new(0, 		0.375, 	0), --UpperTorso to LowerTorso
	["NeckRigAttachment"] =				Vector3.new(0, 		1.587, 	0), --UpperTorso to Head
	["LeftShoulderRigAttachment"] =		Vector3.new(-0.587, 1.408, 	0), --UpperTorso to LeftShoulder
	["RightShoulderRigAttachment"] =	Vector3.new(0.587, 	1.408, 	0),	--UpperTorso to RightUpperArm
	["RightElbowRigAttachment"] =		Vector3.new(0.881, 	0.49, 	0),	--RightUpperArm to RightLowerArm
	["RightWristRigAttachment"] =		Vector3.new(0.881, 	-0.341, 0), --RightLowerArm to RightHand
	["LeftElbowRigAttachment"] =		Vector3.new(-0.881, 0.49, 	0), --LeftUpperArm to LeftLowerArm
	["LeftWristRigAttachment"] =		Vector3.new(-0.881, -0.341, 0), --LeftLowerArm to LeftHand
	["RightHipRigAttachment"] = 		Vector3.new(0.31, 	0, 		0), --LowerTorso to RightUpperLeg
	["RightKneeRigAttachment"] =		Vector3.new(0.31, 	-1.332, 0), --RightUpperLeg to RightLowerLeg
	["RightAnkleRigAttachment"] =		Vector3.new(0.31, 	-2.715, 0), --RightLowerLeg to RightFoot
	["LeftHipRigAttachment"] =			Vector3.new(-0.31, 	0, 		0), --LowerTorso to LeftUpperLeg
	["LeftKneeRigAttachment"] =			Vector3.new(-0.31, 	-1.332, 0),	--LeftUpperLeg to LeftLowerLeg
	["LeftAnkleRigAttachment"] = 		Vector3.new(-0.31, 	-2.715, 0), --LeftLowerLeg to LeftFoot

	["LeftGripAttachment"] = 			Vector3.new(-0.881, -0.616, 0),
	["LeftShoulderAttachment"] = 		Vector3.new(-0.881, 1.647, 	0),
	["RightGripAttachment"] = 			Vector3.new(0.881, 	-0.616, 0),
	["RightShoulderAttachment"] = 		Vector3.new(0.881, 	1.647, 	0),
	["BodyFrontAttachment"] = 			Vector3.new(0, 		0.83, 	-0.294),
	["BodyBackAttachment"] = 			Vector3.new(0, 		0.83, 	0.293),
	["LeftCollarAttachment"] = 			Vector3.new(-0.587, 1.587, 	0),
	["RightCollarAttachment"] = 		Vector3.new(0.587, 	1.587, 	0),
	["NeckAttachment"] = 				Vector3.new(0, 		1.587, 	0),
	["LeftFootAttachment"] = 			Vector3.new(-0.31, 	-3.084, 0),
	["RightFootAttachment"] = 			Vector3.new(0.31, 	-3.084, 0),
	["WaistCenterAttachment"] = 		Vector3.new(0, 		0, 		0),
	["WaistFrontAttachment"] = 			Vector3.new(0, 		0, 		-0.294),
	["WaistBackAttachment"] = 			Vector3.new(0, 		0, 		0.294),
	["FaceCenterAttachment"] = 			Vector3.new(0, 		2.042, 	0),
	["FaceFrontAttachment"] = 			Vector3.new(0, 		2.042, 	-0.428),
	["HairAttachment"] = 				Vector3.new(0, 		2.587, 	0),
	["HatAttachment"] = 				Vector3.new(0, 		2.587, 	0),
}

-- New ANTHRO-BASED R15 UTILS
-- -- Recursively searches for attachment in a model
local function findRigAttachment(model, name)
	for i,v in pairs(model:GetChildren()) do
		local rigAttachment = findRigAttachment(v, name)
		if (rigAttachment ~= nil) then
			return rigAttachment
		end
	end

	if (model:IsA("Attachment") and model.Name == name) then
		return model
	else
		return nil
	end
end

-- -- We want ALL FBX imports to have the RootRigAttachment be at 0,0,0
local function adjustPackageToMoveRootToOrigin(model, rigged, posOffset)
	local rootAttachment = findRigAttachment(model, "RootRigAttachment")
	if (rootAttachment) then
		local waistJointParent = rootAttachment.Parent
		local CFramePos = CFrame.new(rootAttachment.Position) * waistJointParent.CFrame
		if (posOffset) then
			CFramePos = CFramePos + posOffset
		end
		displaceModelRecursively( model, CFramePos:inverse(), rigged)
	else
		spawn( function()
			error(model.Name .. " Could Not Find RootRigAttachment ")
		end)
	end
end

-- -- Shift All Attachments to match the WorldSpace positions of the above map.
-- -- We assume that RootRigAttachment is 0,0,0
local function adjustModelAttachmentsToMatchR15Fixed( inst )
	if inst:IsA("Motor6D") then
		inst:Destroy() -- Remove Current Character Rigging
	elseif inst:IsA("Attachment") then
		if (inst.Parent and inst.Parent.Name == "HumanoidRootPart") then
			-- Humanoid Root Part should already be properly positioned from Prod specific dummy R15s
			-- Skip
			print("Don't displace HumanoidRootPart attachment")
		else
			local attachmentDesiredPos
			if anthroProportionsFlagExists and anthroProportionsFlagValue == true then
				local rigAttachmentMap
				local avatarPartScaleTypeInst = inst.Parent:FindFirstChild("AvatarPartScaleType")
				local avatarPartScaleType = avatarPartScaleTypeInst and avatarPartScaleTypeInst.Value or ANTHRO_PROPORTIONS_CLASSIC
				if avatarPartScaleType == ANTHRO_PROPORTIONS_NORMAL then
					rigAttachmentMap = AnthroNormalFixedRigAttachmentMap
				elseif avatarPartScaleType == ANTHRO_PROPORTIONS_SLENDER then
					rigAttachmentMap = AnthroSlenderFixedRigAttachmentMap
				else
					rigAttachmentMap = R15FixedRigAttachmentMap
				end
				attachmentDesiredPos = rigAttachmentMap[inst.Name]
			else
				attachmentDesiredPos = R15FixedRigAttachmentMap[inst.Name]
			end
			if (attachmentDesiredPos) then
				-- Found Valid Attachment
				local parentPart = inst.Parent
				local localSpaceDesiredPos = parentPart.CFrame:inverse() * CFrame.new( attachmentDesiredPos )
				inst.Position = localSpaceDesiredPos.p
			end
		end
	end


	for i,v in pairs(inst:GetChildren()) do
		adjustModelAttachmentsToMatchR15Fixed( v )
	end
end

-- Mr Grey R15
local r15DummyId = 516159357
local r15NewSpecDummyId = 1664543044

-- Reprocess Packages Main Functions
local function loadAssetsForAnthroDateUpdate()
	-- Cleanup
	if (exportModels) then
		exportModels:Destroy()
	end
	local packageIds = getPackageListFromStringValue()
	exportModels = Instance.new("Folder", workspace)
	exportModels.Name = "ExportModels"
	local R15Dummy = game:GetService("InsertService"):LoadAsset(r15NewSpecDummyId):GetChildren()[1]
	dummyRootPart = recursiveFindRootPart(R15Dummy)
	for i,v in pairs(packageIds) do
		print("Processing Package: "..tostring(v))
		local package = loadPackage(v, true)
		package.Parent = exportModels
		local R15AIRig = package:FindFirstChild("R15AIRig")
		local R15FixedRig = package:FindFirstChild("R15FixedRig")
		if (R15AIRig and R15FixedRig) then
			local AIRoot = recursiveFindRootPart(R15AIRig)
			buildRigFromAttachments(nil, AIRoot)
			AIRoot.Anchored = true
			adjustPackageToMoveRootToOrigin( R15AIRig, true, r15AnthroMigrationAdjust)
			adjustShouldersForNewR15( R15AIRig )
			adjustModelAttachmentsToMatchR15Fixed( R15AIRig )
			buildRigFromAttachments(nil, AIRoot)
			verifyAllAttachmentPositionsRecursively( R15AIRig )
			recursivelyTryToRepackRigParts( R15AIRig )

			local FixedRoot = recursiveFindRootPart(R15FixedRig)
			buildRigFromAttachments(nil, FixedRoot)
			FixedRoot.Anchored = true
			adjustPackageToMoveRootToOrigin( R15FixedRig, true, r15AnthroMigrationAdjust)
			adjustShouldersForNewR15( R15FixedRig )
			adjustModelAttachmentsToMatchR15Fixed( R15FixedRig )
			buildRigFromAttachments(nil, FixedRoot)
			verifyAllAttachmentPositionsRecursively( R15FixedRig )
			recursivelyTryToRepackRigParts( R15FixedRig )

			R15AIRig:Destroy()
			R15FixedRig:Destroy()

			-- Save changes to File
			for j, b in pairs (package:GetChildren()) do
				local name = b.Name
				game.Selection:Set(b:GetChildren())
				plugin:PromptSaveSelection(name)
			end
		end

		package:Destroy()
	end
end


-- -- We need to shift the top RightUpperArm up by 0.047.
local R15ReverseMigrationScales =
{
	["RightUpperArm"] = 	originalR15UpperArmSize / newR15UpperArmSize,
	["LeftUpperArm"] =		originalR15UpperArmSize / newR15UpperArmSize
}

-- -- When we shrink and object is actually shrinks around its 0,0,0. This means we have to shift the part down by
-- -- half the shrink margin to make sure that the part only shrinks from the top.
local R15ReverseMigrationPartOffsets = {
	["RightUpperArm"] = 	Vector3.new( 0, (-shoulderShiftY / 2), 0),
	["LeftUpperArm"] =		Vector3.new( 0, (-shoulderShiftY / 2), 0),
}

-- --- Resizing using Part.Size does not automatically drag the attachment relatively with the part
local R15ReverseAttachmentPositionOffsets = {
	["RightShoulderAttachment"] = 		Vector3.new( 0, (-shoulderShiftY / 2), 0),
	["LeftShoulderAttachment"] =		Vector3.new( 0, (-shoulderShiftY / 2), 0),
}

-- -- Pre R15Fixed Process Steps
-- -- When migrating packages from R15 to new R15 we must adjust Arms and Hands by 0.047 studs down, before reprojecting attachments.
local function findReverseAdjustArmParts( inst )
	local scaleValue = R15ReverseMigrationScales[inst.Name]
	if inst:IsA("BasePart") and scaleValue then
		inst.Size = inst.Size * scaleValue
	end

	local offsetValue = R15ReverseMigrationPartOffsets[inst.Name]
	if inst:IsA("BasePart") and offsetValue then
		inst.CFrame = inst.CFrame + offsetValue
	end

	local attachmentOffsetValue = R15ReverseAttachmentPositionOffsets[inst.Name]
	if inst:IsA("Attachment") and attachmentOffsetValue then
		inst.Position = inst.Position + attachmentOffsetValue
	end

	for i,v in pairs(inst:GetChildren()) do
		findReverseAdjustArmParts( v )
	end
end

-- R15 New to Old Pos Conversion
-- -- R15 Fixed Rig Attachment Pos Map
local R15OldRigAttachmentMap = {
	["RootRigAttachment"] = 			Vector3.new( 0.000,        0.350,        0.000),	--HumanoidRootPart to LowerTorso
	["WaistRigAttachment"] = 			Vector3.new( 0.000,        0.750,        0.000), --UpperTorso to LowerTorso
	["NeckRigAttachment"] =				Vector3.new( 0.000,        2.000,        0.000), --UpperTorso to Head
	["LeftShoulderRigAttachment"] =		Vector3.new(-1.250,        1.750,        0.000), --UpperTorso to LeftShoulder
	["RightShoulderRigAttachment"] =	Vector3.new( 1.250,        1.750,        0.000),	--UpperTorso to RightUpperArm
	["RightElbowRigAttachment"] =		Vector3.new( 1.500,        1.100,        0.000),	--RightUpperArm to RightLowerArm
	["RightWristRigAttachment"] =		Vector3.new( 1.500,        0.300,        0.000), --RightLowerArm to RightHand
	["LeftElbowRigAttachment"] =		Vector3.new(-1.500,        1.100,        0.000), --LeftUpperArm to LeftLowerArm
	["LeftWristRigAttachment"] =		Vector3.new(-1.500,        0.300,        0.000), --LeftLowerArm to LeftHand
	["RightHipRigAttachment"] = 		Vector3.new( 0.500,       -0.000,        0.000), --LowerTorso to RightUpperLeg
	["RightKneeRigAttachment"] =		Vector3.new( 0.500,       -0.800,        0.000), --RightUpperLeg to RightLowerLeg
	["RightAnkleRigAttachment"] =		Vector3.new( 0.500,       -1.800,        0.000), --RightLowerLeg to RightFoot
	["LeftHipRigAttachment"] =			Vector3.new(-0.500,       -0.000,        0.000), --LowerTorso to LeftUpperLeg
	["LeftKneeRigAttachment"] =			Vector3.new(-0.500,       -0.800,        0.000),	--LeftUpperLeg to LeftLowerLeg
	["LeftAnkleRigAttachment"] = 		Vector3.new(-0.500,       -1.800,        0.000), --LeftLowerLeg to LeftFoot
}

-- -- Shift All Attachments to match the WorldSpace positions of the above map.
-- -- We assume that RootRigAttachment is 0,0,0
local function adjustModelAttachmentsToMatchR15Legacy( inst )
	if inst:IsA("Motor6D") then
		inst:Destroy() -- Remove Current Character Rigging
	elseif inst:IsA("Attachment") then
		local attachmentDesiredPos = R15OldRigAttachmentMap[inst.Name]
		if (attachmentDesiredPos) then
			-- Found Valid Attachment
			local parentPart = inst.Parent
			local localSpaceDesiredPos = parentPart.CFrame:inverse() * CFrame.new( attachmentDesiredPos )
			inst.Position = localSpaceDesiredPos.p
		end
	end


	for i,v in pairs(inst:GetChildren()) do
		adjustModelAttachmentsToMatchR15Legacy( v )
	end
end
-----------------------------------------------------
--- --- --- END TEMP ASSET MIGRATION CODE --- --- ---
-----------------------------------------------------

-- Makes a copy of the rig in the export format
local function makeExportVersion(R15Model, R6Model, R15FixedModel, R15LegacyModel)
	-- Remove existing export models
	for _, model in pairs(game.ServerStorage:GetChildren()) do
		if model.Name == "PackageExport" then
			model:Destroy()
		end
	end

	local exportModel = Instance.new("Model")
	exportModel.Name = "PackageExport"
	exportModel.Parent = game.ServerStorage

	local function populateExportModel()
		-- The model is repopulated every time a property of any descendant changes
		exportModel:ClearAllChildren()

		for r6Name, r15Names in pairs(R15PartMapping) do
			local partFolder = Instance.new("Folder", exportModel)
			partFolder.Name = r6Name

			if (R15FixedModel) then
				local R15subfolder = Instance.new("Folder", partFolder)
				R15subfolder.Name = "R15ArtistIntent"

				local R15FixedSubfolder = Instance.new("Folder", partFolder)
				R15FixedSubfolder.Name = "R15Fixed"

				local R15LegacyFolder
				if (R15LegacyModel) then
					R15LegacyFolder = Instance.new("Folder", partFolder)
					R15LegacyFolder.Name = "R15"
				end

				for _, r15Name in pairs(r15Names) do
					local R15part = R15Model:FindFirstChild(r15Name)
					if R15part then
						R15part:Clone().Parent = R15subfolder
					end

					local R15FixedPart = R15FixedModel:FindFirstChild(r15Name)
					if R15FixedPart then
						R15FixedPart:Clone().Parent = R15FixedSubfolder
					end

					if (R15LegacyModel) then
						local R15LegacyPart = R15LegacyModel:FindFirstChild(r15Name)
						if (R15LegacyPart) then
							R15LegacyPart:Clone().Parent = R15LegacyFolder
						end
					end
				end
			else
				local R15subfolder = Instance.new("Folder", partFolder)
				R15subfolder.Name = "R15"

				for _, r15Name in pairs(r15Names) do
					local R15part = R15Model:FindFirstChild(r15Name)
					if R15part then
						R15part:Clone().Parent = R15subfolder
					end
				end
			end

			local R6subfolder = Instance.new("Folder", partFolder)
			R6subfolder.Name = "R6"

			for _, child in pairs(R6Model:GetChildren()) do
				if child:IsA("CharacterMesh") then
					local R6EnumName = r6Name:gsub("%s+", "")
					if child.BodyPart.Name == R6EnumName then
						child:Clone().Parent = R6subfolder
					end
				end
			end
		end
	end
	populateExportModel()


	local changed = false
	spawn(function()
		-- Refresh export model every second if it's been updates
		-- Should be fast enough that export model is always up to date
		-- but slow enough to not effect performance too much
		while R15Model and R6Model do
			if changed then
				populateExportModel()
				changed = false
			end
			wait(1)
		end
	end)

	local function recurCheckChanged(obj)
		obj.Changed:connect(function() changed = true end)
		for _, childObj in pairs(obj:GetChildren()) do
			recurCheckChanged(childObj)
		end
	end
	recurCheckChanged(R15Model)
	recurCheckChanged(R6Model)

	-- For added CharacterMesh objects
	R6Model.ChildAdded:connect(function(child)
		child.Changed:connect(populateExportModel)
		changed = true
	end)
	R6Model.ChildRemoved:connect(function() changed = true end)
end

local function fbxRigImported(R15Rig, rigProportionType)
	-- This wait is necessary because the imported rig is added to workspace
	-- before all the parts are loaded
	wait(.5)

	-- Not all packages have all their parts, we load MrGreyR15 first then substitute the parts we did load
	local dummyId = r15NewSpecDummyId
	local R15Dummy = game:GetService("InsertService"):LoadAsset(dummyId):GetChildren()[1]

	local destroyAfter = {}
	for _, part in pairs(R15Rig:GetChildren()) do
		local matchingPart = R15Dummy:FindFirstChild(part.Name)
		if matchingPart then
			if (matchingPart.Name == "HumanoidRootPart") then
			    table.insert(destroyAfter, part)
			else
			    matchingPart:Destroy()
			end
		end
		part.Parent = R15Dummy
	end

	for _, v in pairs(destroyAfter) do
		v:Destroy()
	end
	R15Rig:Destroy()

	R15Rig = R15Dummy
	buildRigFromAttachments(nil, R15Rig.HumanoidRootPart)

	R15Rig.Parent = game.Workspace
	R15Rig:MoveTo(Vector3.new(0, 0, 0))

	if anthroProportionsFlagExists and anthroProportionsFlagValue == true then
		for _, part in pairs(R15Rig:GetChildren()) do
			if part:IsA("BasePart") and part.Name ~= "HumanoidRootPart" then
				local stringValue = Instance.new("StringValue")
				stringValue.Name = "AvatarPartScaleType"
				stringValue.Value = rigProportionType
				stringValue.Parent = part
			end
		end
	end

	local r15Head = R15Rig:WaitForChild("Head", 1) -- 1 second timeout

	if not r15Head:FindFirstChildOfClass("Decal") then
		local Face = Instance.new("Decal", r15Head)
		Face.Name = "face"
		Face.Texture = "rbxasset://textures/face.png"
	end

	-- Remove duplicates if re-importing
	for _, obj in pairs(game.Workspace:GetChildren()) do
		if obj.Name == "ImportedFbx" then
			obj:Destroy()
		end
	end

	local rigModel = Instance.new("Model")
	rigModel.Name = "ImportedFbx"
	rigModel.Parent = game.Workspace

	local R6Folder = Instance.new("Model")
	R6Folder.Name = "R6"
	R6Folder.Parent = rigModel

	local R15Folder = Instance.new("Model")
	R15Folder.Name = r15AIFolderName
	R15Folder.Parent = rigModel

	for _, obj in pairs(R15Rig:GetChildren()) do
		obj.Parent 			= R15Folder
	end
	R15Rig:Destroy()

	adjustPackageToMoveRootToOrigin(R15Folder, true)
	local R15FixedFolder = R15Folder:Clone()
	R15FixedFolder.Name = r15FixedFolderName
	R15FixedFolder.Parent = rigModel

	adjustModelAttachmentsToMatchR15Fixed( R15FixedFolder )
	buildRigFromAttachments( nil, R15FixedFolder.HumanoidRootPart )
	adjustPackageToMoveRootToOrigin(R15FixedFolder, true)

	local R15LegacyFolder = nil
	if (newR15IntermediateStateExists and newR15IntermediateStateValue) then
		adjustPackageToMoveRootToOrigin(R15Folder, true)
		R15LegacyFolder = R15Folder:Clone()
		R15LegacyFolder.Name = "R15"
		R15LegacyFolder.Parent = rigModel

		breakRigJointsRecursive( R15LegacyFolder )
		findReverseAdjustArmParts( R15LegacyFolder )
		adjustModelAttachmentsToMatchR15Legacy( R15LegacyFolder )
		buildRigFromAttachments( nil, R15LegacyFolder.HumanoidRootPart )
		adjustPackageToMoveRootToOrigin(R15LegacyFolder, true, Vector3.new(0, -0.350, 0))
	end

	local R6Rig = rigCreator.CreateR6Rig()
	R6Rig.HumanoidRootPart.Transparency = 1
	R6Rig:MoveTo(Vector3.new(5, 0, 0))

	local HeadMesh = Instance.new("SpecialMesh", R6Rig.Head)
	HeadMesh.MeshType = 0
	HeadMesh.Scale = Vector3.new(1.25, 1.25, 1.25)

	for _, obj in pairs(R6Rig:GetChildren()) do
		obj.Parent = R6Folder
	end
	R6Rig:Destroy()

	createConfigureGui(R15Folder, R6Folder, R15FixedFolder, R15LegacyFolder)
	makeExportVersion(R15Folder, R6Folder, R15FixedFolder, R15LegacyFolder)
end

local function getRigProportionType()
	local promptGui = GUIsFolder.RigTypePrompt:Clone()
	promptGui.Parent = game:GetService("CoreGui")
	local buttonsContainer = promptGui.Frame.Buttons
	local result = nil
	buttonsContainer.ProportionsClassic.MouseButton1Down:Connect(function() result = ANTHRO_PROPORTIONS_CLASSIC end)
	buttonsContainer.ProportionsNormal.MouseButton1Down:Connect(function() result = ANTHRO_PROPORTIONS_NORMAL end)
	buttonsContainer.ProportionsSlender.MouseButton1Down:Connect(function() result = ANTHRO_PROPORTIONS_SLENDER end)
	while result == nil do
		wait()
	end
	promptGui:Destroy()
	return result
end

-- Hook up events to make export copy of rig for already imported Fbx rigs
for _, obj in pairs(game.Workspace:GetChildren()) do
	if obj.Name == "ImportedFbx" then
		local R15Folder = obj:FindFirstChild("R15")
		local R6Folder = obj:FindFirstChild("R6")
		if R15Folder and R6Folder then
			makeExportVersion(R15Folder, R6Folder)
		end
	end
end

if fbxFlagExists and fbxFlagValue == true then
	toolbar = plugin:CreateToolbar("FBX Importer [Internal]")
	local button = toolbar:CreateButton(
		"", -- The text next to the icon. Leave this blank if the icon is sufficient.
		"Import FBX Rig", -- hover text
		"rbxasset://textures/AnimationEditor/fbximportlogo.png" -- The icon file's name.
	)

	button.Click:connect(function()
		if (_G["AnimationEdit"] == true) then
			print("Cannot import rig while in edit mode.")
			return
		end

		local rigProportionType
		if anthroProportionsFlagExists and anthroProportionsFlagValue == true then
			rigProportionType = getRigProportionType()
		end

		warn("This operation may take a few seconds depending on rig complexity!")
		local importedRig = plugin:ImportFbxRig()
		if importedRig then
			fbxRigImported(importedRig, rigProportionType)
		end
	end)

	if migratorFlagExists and migratorFlagTrue == true then
		local batchReprocessButton = toolbar:CreateButton(
			"",
			"Reprocess Selected Rigs",
			"rbxasset://textures/AnimationEditor/fbximportlogo.png"
		)

		batchReprocessButton.Click:connect(function()
			loadAssetsForAnthroDateUpdate()
		end)
	end

	local configureButton = toolbar:CreateButton(
		"",
		"Configure FBX rig",
		"rbxasset://textures/AnimationEditor/fbximportlogo.png"
	)

	configureButton.Click:connect(function()
		local fbxImport = game.Workspace:FindFirstChild("ImportedFbx")

		if fbxImport then
		    local R15ArtistIntent = fbxImport:FindFirstChild("R15ArtistIntent")
			local R15Fixed = fbxImport:FindFirstChild("R15Fixed")
			local R15Model = fbxImport:FindFirstChild("R15")
			local R6Model = fbxImport:FindFirstChild("R6")

			if (R15ArtistIntent and R15Fixed) then
				createConfigureGui(R15ArtistIntent, R6Model, R15Fixed, R15Model)
			else
				createConfigureGui(R15Model, R6Model)
			end
		end
	end)

	local saveButton = toolbar:CreateButton(
		"",
		"Export Package",
		"rbxasset://textures/AnimationEditor/fbximportlogo.png"
	)

	saveButton.Click:connect(function()
		local exportModel = game.ServerStorage:FindFirstChild("PackageExport")
		if exportModel then
			for _, folder in pairs(exportModel:GetChildren()) do
				if folder.Name ~= "Head" then
					game.Selection:Set(folder:GetChildren())
					local outputFileName = folder.Name
					local bodyPartName = folder.Name:gsub("%s+", "")
					if assetIdMap[bodyPartName] then
						outputFileName = assetIdMap[bodyPartName]
					end
					plugin:PromptSaveSelection(outputFileName)
				end
			end
		end
	end)
end
