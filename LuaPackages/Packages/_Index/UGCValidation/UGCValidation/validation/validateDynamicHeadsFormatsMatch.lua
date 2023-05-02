--!strict

local root = script.Parent.Parent

local Constants = require(root.Constants)

local FailureReasonsAccumulator = require(root.util.FailureReasonsAccumulator)

local function doMeshIdsMatch(meshPartHead: MeshPart, specialMeshHead: SpecialMesh): (boolean, { string }?)
	if meshPartHead.MeshId == specialMeshHead.MeshId then
		return true
	end
	return false,
		{ meshPartHead.Name .. "MeshPart.MeshId did not match " .. specialMeshHead.Name .. " SpecialMesh.MeshId" }
end

local function doTextureIdsMatch(meshPartHead: MeshPart, specialMeshHead: SpecialMesh): (boolean, { string }?)
	if meshPartHead.TextureID == specialMeshHead.TextureId then
		return true
	end
	return false,
		{ meshPartHead.Name .. "MeshPart.TextureID did not match " .. specialMeshHead.Name .. " SpecialMesh.TextureId" }
end

local function doScaleTypesMatch(meshPartHead: MeshPart, specialMeshHead: SpecialMesh): (boolean, { string }?)
	if
		(meshPartHead:FindFirstChild("AvatarPartScaleType") :: StringValue).Value
		== (specialMeshHead:FindFirstChild("AvatarPartScaleType") :: StringValue).Value
	then
		return true
	end
	return false,
		{
			meshPartHead.Name
				.. ".AvatarPartScaleType.Value did not match "
				.. specialMeshHead.Name
				.. ".AvatarPartScaleType.Value",
		}
end

local function doAttachmentPositionsMatch(meshPartHead: MeshPart, specialMeshHead: SpecialMesh): (boolean, { string }?)
	local assetInfo = Constants.ASSET_TYPE_INFO[Enum.AssetType.DynamicHead]
	local validationData = assetInfo.subParts["Head"]

	local function doPositionsMatch(attachmentName: string): (boolean, { string }?)
		local function eqV3(vectFrom: Vector3, vectTo: Vector3): boolean
			local toleranceSqr = 0.001 * 0.001
			local magnitudeSqr = (vectFrom - vectTo):Dot((vectFrom - vectTo))
			return magnitudeSqr < toleranceSqr
		end

		if
			eqV3(
				(meshPartHead:FindFirstChild(attachmentName) :: Attachment).Position,
				(specialMeshHead:FindFirstChild(attachmentName) :: Vector3Value).Value
			)
		then
			return true
		end
		return false,
			{
				meshPartHead.Name
					.. "."
					.. attachmentName
					.. ".Position did not match "
					.. specialMeshHead.Name
					.. "."
					.. attachmentName
					.. ".Value",
			}
	end

	local reasonsAccumulator = FailureReasonsAccumulator.new()

	if not reasonsAccumulator:updateReasons(doPositionsMatch(validationData.rigAttachmentToParentName)) then
		return reasonsAccumulator:getFinalResults()
	end

	for attachmentName in pairs(validationData.otherAttachments) do
		if not reasonsAccumulator:updateReasons(doPositionsMatch(attachmentName)) then
			return reasonsAccumulator:getFinalResults()
		end
	end
	return reasonsAccumulator:getFinalResults()
end

local function validateDynamicHeadsFormatsMatch(
	meshPartHead: MeshPart,
	specialMeshHead: SpecialMesh
): (boolean, { string }?)
	assert(meshPartHead)
	assert(specialMeshHead)

	local reasonsAccumulator = FailureReasonsAccumulator.new()

	if not reasonsAccumulator:updateReasons(doMeshIdsMatch(meshPartHead, specialMeshHead)) then
		return reasonsAccumulator:getFinalResults()
	end

	if not reasonsAccumulator:updateReasons(doTextureIdsMatch(meshPartHead, specialMeshHead)) then
		return reasonsAccumulator:getFinalResults()
	end

	if not reasonsAccumulator:updateReasons(doScaleTypesMatch(meshPartHead, specialMeshHead)) then
		return reasonsAccumulator:getFinalResults()
	end

	if not reasonsAccumulator:updateReasons(doAttachmentPositionsMatch(meshPartHead, specialMeshHead)) then
		return reasonsAccumulator:getFinalResults()
	end
	return reasonsAccumulator:getFinalResults()
end

return validateDynamicHeadsFormatsMatch
