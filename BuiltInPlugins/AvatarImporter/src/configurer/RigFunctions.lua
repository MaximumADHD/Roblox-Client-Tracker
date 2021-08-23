local RigFunctions = {}

-- Services
local ServerStorage = game:GetService("ServerStorage")
local ContentProvider = game:GetService("ContentProvider")

local Constants = require(script.Parent.Constants)
local FixedRigPositions = require(script.Parent.FixedRigPositions)
local R6 = require(script.Parent.R6)

local R15_PART_MAPPING = {
	["Head"]      = { "Head"                                        },
	["Torso"]     = { "UpperTorso"   , "LowerTorso"                 },
	["Right Arm"] = { "RightUpperArm", "RightLowerArm", "RightHand" },
	["Left Arm"]  = { "LeftUpperArm" , "LeftLowerArm" , "LeftHand"  },
	["Right Leg"] = { "RightUpperLeg", "RightLowerLeg", "RightFoot" },
	["Left Leg"]  = { "LeftUpperLeg" , "LeftLowerLeg" , "LeftFoot"  },
}

local ASSET_URLS = {
    ContentProvider.BaseUrl .."asset/?id=",
    "rbxassetid://"
}

local function idToContentUrl(id)
    if tonumber(id) then
        return ContentProvider.BaseUrl .."asset/?id=" ..id
    end

    return id
end

function RigFunctions.GetLimbNames()
    local result = {}
    for key, _ in pairs(R15_PART_MAPPING) do
		result[#result + 1] = key
	end
	return result
end

function RigFunctions.GetBodyPartNames()
    local result = {}
    for _, enum in pairs(Enum.BodyPart:GetEnumItems()) do
        result[#result + 1] = enum.Name
    end
    return result
end

function RigFunctions.RemoveAssetUrlFromText(contentId)
    if typeof(contentId) ~= "string" then
        return contentId
    end

    for _, assetUrl in pairs(ASSET_URLS) do
        if string.find(contentId, assetUrl, 1, true) ~= nil then
            return string.sub(contentId, assetUrl:len() + 1)
        end
    end
    return contentId
end

function RigFunctions.GetCurrentTextureIdFromRig(rig, limbName)
    for _, partName in pairs(R15_PART_MAPPING[limbName]) do
        local part = rig:FindFirstChild(partName)
        if part and part.TextureID ~= "" then
            return RigFunctions.RemoveAssetUrlFromText(part.TextureID)
        end
    end

    return nil
end

local function isCharacterMeshPropertyValid(property)
    if typeof(property) == "string" and property ~= "" then
        return true
    elseif typeof(property) == "number" and property ~= 0 then
        return true
    end
end

local function faceTextureIsValid(texture)
    return texture ~= "" and texture ~= Constants.DEFAULT_FACE_TEXTURE
end

function RigFunctions.FindFaceTexture(r15Avatar, r6Avatar)
    if r6Avatar then
        local head = r6Avatar:FindFirstChild("Head")
        if head then
            local face = head:FindFirstChild("face")
            if face and faceTextureIsValid(face.Texture) then
                return face.Texture
            end
        end
    end

    if r15Avatar then
        local head = r15Avatar:FindFirstChild("Head")
        if head then
            if head:IsA("MeshPart") and head.TextureID ~= "" then
                return head.TextureID
            end

            local face = head:FindFirstChild("face")
            if face and faceTextureIsValid(face.Texture) then
                return face.Texture
            end
        end
    end

    return nil
end

function RigFunctions.GetCurrentCharacterMeshIdFromRig(rig, bodyPartName)
    for _, item in pairs(rig:GetChildren()) do
        if item:IsA("CharacterMesh") and item.BodyPart.Name == bodyPartName then
            if isCharacterMeshPropertyValid(item.MeshId) then
                return item.MeshId
            end
        elseif item:IsA("Part") and item.Name == bodyPartName then
            local specialMesh = item:FindFirstChildWhichIsA("SpecialMesh")
            if specialMesh and isCharacterMeshPropertyValid(specialMesh.MeshId) then
                return RigFunctions.RemoveAssetUrlFromText(specialMesh.MeshId)
            end
        end
    end

    return nil
end

function RigFunctions.GetCharacterMeshPropertyFromRig(rig, propertyName)
    for _, item in pairs(rig:GetChildren()) do
        if item:IsA("CharacterMesh") then
            local property = item[propertyName]
            if isCharacterMeshPropertyValid(property) then
                return property
            end
        end
    end

    return nil
end

local function applyTextureToParts(rig, partNames, textureId)
    for _, name in pairs(partNames) do
        local part = rig:FindFirstChild(name)
        if part then
            part.TextureID = idToContentUrl(textureId)
        end
    end
end

local function applyCharacterMeshPropertyToRig(rig, propertyName, propertyValue)
    for _, item in pairs(rig:GetChildren()) do
        if item:IsA("CharacterMesh") then
            local success, err = pcall(function() item[propertyName] = propertyValue end)
            if not success then
                warn("Expected CharacterMesh property, got " ..propertyName.. "\n" ..
                     "Error: " ..err.. "\n"..
                     "Traceback: " ..debug.traceback())
            end
        end
    end
end

local function getCharacterMesh(bodyPartEnum, rig)
    for _, characterObject in pairs(rig:GetChildren()) do
        if characterObject:IsA("CharacterMesh") and characterObject.BodyPart == bodyPartEnum then
            return characterObject
        end
    end

    return nil
end

local function getCharacterPart(partName, rig)
    for _, characterObject in pairs(rig:GetChildren()) do
        if characterObject:IsA("Part") and characterObject.Name == partName then
            return characterObject
        end
    end

    return nil
end

function RigFunctions.CopyCharacterMeshesToRig(characterMeshesMap, rig)
    for _, enum in pairs(Enum.BodyPart:GetEnumItems()) do
        local meshId = tonumber(characterMeshesMap[enum.Name])

        if meshId and enum ~= Enum.BodyPart.Head then
            local characterMesh = getCharacterMesh(enum, rig)
            if not characterMesh then
                characterMesh = Instance.new("CharacterMesh")
                characterMesh.BodyPart = enum
                characterMesh.Parent = rig
            end

            characterMesh.MeshId = meshId
        end
    end

    -- Special Case for SpecialMesh Head
    local headName = Enum.BodyPart.Head.Name
    local headPart = getCharacterPart(headName, rig)
    local headMeshId = tonumber(characterMeshesMap[headName])
    if headMeshId and headPart then
        local specialMesh = headPart:FindFirstChildWhichIsA("SpecialMesh")
        if specialMesh then
            specialMesh.MeshId = idToContentUrl(headMeshId)
        end
    end
end

function RigFunctions.CopyTexturesToRig(texturesMap, rig)
    for textureKey, textureId in pairs(texturesMap) do
        if R15_PART_MAPPING[textureKey] then
            applyTextureToParts(rig, R15_PART_MAPPING[textureKey], textureId)
        else
            applyCharacterMeshPropertyToRig(rig, textureKey, textureId)
        end
    end
end

function RigFunctions.AddFaceToRig(faceTextureId, rig)
    if not faceTextureId then
        return
    end

    local head = rig:FindFirstChild("Head")
    if head then
        if head:IsA("MeshPart") and head.TextureID ~= "" then
            return
        end

        local face = head:FindFirstChild("face")
        if not face then
            face = Instance.new("Decal")
            face.Name = "face"
            face.Parent = head
        end

        face.Texture = idToContentUrl(faceTextureId)
    end
end

local function setupR6(importedAvatar, fbxImportModel)
    local r6Avatar = R6.Create()

    local r15CFrame = importedAvatar.HumanoidRootPart.CFrame
    r6Avatar.HumanoidRootPart.CFrame = r15CFrame + (r15CFrame.rightVector * 5)

    r6Avatar.Parent = fbxImportModel
end

local function getAvatarPartScaleType(part)
    local scaleTypeValue = part:FindFirstChild("AvatarPartScaleType")
    if scaleTypeValue then
        return scaleTypeValue.Value
    end

    return Constants.AVATAR_PART_SCALE_TYPE.PROPORTIONS_CLASSIC
end

local function getFixedAttachmentPosition(attachment)
    local avatarPartScaleType = getAvatarPartScaleType(attachment.Parent)
    if avatarPartScaleType == Constants.AVATAR_PART_SCALE_TYPE.PROPORTIONS_NORMAL then
        return FixedRigPositions.AnthroNormalFixedRigAttachmentMap[attachment.Name]
    elseif avatarPartScaleType == Constants.AVATAR_PART_SCALE_TYPE.PROPORTIONS_SLENDER then
        return FixedRigPositions.AnthroSlenderFixedRigAttachmentMap[attachment.Name]
    else
        return FixedRigPositions.R15FixedRigAttachmentMap[attachment.Name]
    end
end

-- Adjust positioning relative to the RootRigAttachment position
local function adjustModelAttachmentsToMatchR15Fixed(rootRigAttachment, instance)
    if instance:IsA("Motor6D") then
        -- Remove Current Character Rigging
		instance:Destroy()
    elseif instance:IsA("Attachment") then
        local attachmentDesiredPos = getFixedAttachmentPosition(instance)
        if attachmentDesiredPos then
            -- Found rig attachment to move
            local part = instance.Parent

            local originalPosition = instance:FindFirstChild("OriginalPosition")
            if originalPosition then
                originalPosition:Destroy()
            end

            local partCFrameTranslated = part.CFrame - rootRigAttachment.WorldPosition
            local localSpaceDesiredPos = partCFrameTranslated:inverse() * CFrame.new(attachmentDesiredPos)
            instance.Position = localSpaceDesiredPos.p
        end
	end

    if instance.Name ~= "HumanoidRootPart" then
        for _, child in pairs(instance:GetChildren()) do
            adjustModelAttachmentsToMatchR15Fixed(rootRigAttachment, child)
        end
    end
end

local function breakRigJointsRecursive(instance)
	if instance:IsA("Motor6D") then
		instance:Destroy()
	end

	for _, child in pairs(instance:GetChildren()) do
		breakRigJointsRecursive(child)
	end
end

local function setupR15Fixed(importedAvatar, fbxImportModel)
    local r15Fixed = importedAvatar:Clone()
	r15Fixed.Name = Constants.R15_FIXED_FOLDER_NAME

    breakRigJointsRecursive(r15Fixed)
	adjustModelAttachmentsToMatchR15Fixed(r15Fixed.HumanoidRootPart.RootRigAttachment, r15Fixed)
    local humanoid = r15Fixed:FindFirstChildOfClass("Humanoid")
    if humanoid then
        humanoid.NameOcclusion = Enum.NameOcclusion.NoOcclusion
        humanoid:BuildRigFromAttachments()
    end

    local r15CFrame = importedAvatar.HumanoidRootPart.CFrame
    r15Fixed.HumanoidRootPart.CFrame = r15CFrame + (r15CFrame.rightVector * -5)

    r15Fixed.Parent = fbxImportModel
end

function RigFunctions.CreateImportedFbxModel(importedAvatar)
	-- Remove duplicates if re-importing
	for _, obj in pairs(workspace:GetChildren()) do
		if obj.Name == Constants.IMPORTED_RIGS_MODEL_NAME then
			obj:Destroy()
		end
	end

    local rigModel = Instance.new("Model")
	rigModel.Name = Constants.IMPORTED_RIGS_MODEL_NAME

    importedAvatar.Name = Constants.R15_ARTIST_INTENT_FOLDER_NAME
    importedAvatar.Parent = rigModel
    setupR6(importedAvatar, rigModel)
    setupR15Fixed(importedAvatar, rigModel)

    rigModel.Parent = workspace
    return rigModel
end

-- Find current copies of imported rigs in workspace
-- Used for re-configuring rigs after opening/closing Studio for example
function RigFunctions.FindExistingImportedFbx()
    local importedFbxModel = workspace:FindFirstChild(Constants.IMPORTED_RIGS_MODEL_NAME)
    return importedFbxModel
end

local function addPartToExportFolder(characterModel, partName, partFolder)
    local rootPartPosition = characterModel.HumanoidRootPart.Position

    local part = characterModel:FindFirstChild(partName)
    if part then
        local savedPart = part:Clone()
        savedPart.CFrame = CFrame.new() + part.Position - rootPartPosition

        savedPart.Parent = partFolder
    end
end

local function getCharacterMeshForPartName(characterModel, partName)
    for _, child in pairs(characterModel:GetChildren()) do
        if child:IsA("CharacterMesh") then
            local enumName = partName:gsub("%s+", "")
            if child.BodyPart.Name == enumName then
                return child:Clone()
            end
        end
    end
end

function RigFunctions.MakeExportVersion(importedRigsModel)
    -- Remove existing export models
    for _, model in pairs(ServerStorage:GetChildren()) do
        if model.Name == Constants.PACKAGE_EXPORT_MODEL_NAME then
            model:Destroy()
        end
    end

    local exportModel = Instance.new("Model")
    exportModel.Name = Constants.PACKAGE_EXPORT_MODEL_NAME
    exportModel.Parent = ServerStorage

    local function populateExportModel()
        -- The model is repopulated every time a property of any descendant changes
        exportModel:ClearAllChildren()

        local r15ArtistIntentModel = importedRigsModel:FindFirstChild(Constants.R15_ARTIST_INTENT_FOLDER_NAME)
        local r15FixedModel = importedRigsModel:FindFirstChild(Constants.R15_FIXED_FOLDER_NAME)
        local r6Model = importedRigsModel:FindFirstChild(Constants.R6_FOLDER_NAME)

        if not r15ArtistIntentModel or not r15FixedModel or not r6Model then
            return
        end

        for r6Name, r15Names in pairs(R15_PART_MAPPING) do
            local partFolder = Instance.new("Folder", exportModel)
            partFolder.Name = r6Name

            local artistIntentFolder = Instance.new("Folder", partFolder)
            artistIntentFolder.Name = Constants.R15_ARTIST_INTENT_FOLDER_NAME

            local fixedFolder = Instance.new("Folder", partFolder)
            fixedFolder.Name = Constants.R15_FIXED_FOLDER_NAME

            for _, r15Name in pairs(r15Names) do
                addPartToExportFolder(r15ArtistIntentModel, r15Name, artistIntentFolder)
                addPartToExportFolder(r15FixedModel, r15Name, fixedFolder)
            end

            local r6Folder = Instance.new("Folder", partFolder)
            r6Folder.Name = "R6"

            local head = Enum.BodyPart.Head.Name
            if r6Name == head then
                local r6Head = getCharacterPart(head, r6Model)
                local r15head = getCharacterPart(head, r15ArtistIntentModel)

                local headMesh = r6Head and r6Head:FindFirstChildWhichIsA("SpecialMesh") or nil
                if headMesh and r15head then
                    headMesh = headMesh:Clone()
                    headMesh:ClearAllChildren()

                    for _, item in pairs(r15head:GetChildren()) do
                        if item:IsA("ValueBase") then
                            item:Clone().Parent = headMesh
                        elseif item:IsA("Attachment") then
                            local attachmentValue = Instance.new("Vector3Value")
                            attachmentValue.Name = item.Name
                            attachmentValue.Value = item.Position
                            attachmentValue.Parent = headMesh
                        end
                    end

                    headMesh.Parent = r6Folder
                end
            else
                local characterMesh = getCharacterMeshForPartName(r6Model, r6Name)
                if characterMesh then
                    characterMesh.Parent = r6Folder
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
        while importedRigsModel and importedRigsModel.Parent ~= nil do
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
    recurCheckChanged(importedRigsModel)

    local r6Model = importedRigsModel:FindFirstChild(Constants.R6_FOLDER_NAME)
    -- For added CharacterMesh objects
    if r6Model then
        r6Model.ChildAdded:connect(function(child)
            child.Changed:connect(populateExportModel)
            changed = true
        end)
        r6Model.ChildRemoved:connect(function() changed = true end)
    end
end

function RigFunctions.Export(plugin)
    local exportModel = ServerStorage:FindFirstChild(Constants.PACKAGE_EXPORT_MODEL_NAME)
    if not exportModel then
        return
    end

    for _, folder in pairs(exportModel:GetChildren()) do
        game.Selection:Set(folder:GetChildren())
        local outputFileName = folder.Name
        plugin:PromptSaveSelection(outputFileName)
    end
end

return RigFunctions