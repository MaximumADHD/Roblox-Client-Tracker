local root = script.Parent.Parent.Parent

local AssetService = game:GetService("AssetService")

local Types = require(root.util.Types)
local ValidationEnums = require(root.validationSystem.ValidationEnums)
local ErrorSourceStrings = require(root.validationSystem.ErrorSourceStrings)

local getFFlagUGCValidateEmissiveAreaChecks = require(root.flags.getFFlagUGCValidateEmissiveAreaChecks)
local getFIntUGCValidateMaxEmissivePercentageBody = require(root.flags.getFIntUGCValidateMaxEmissivePercentageBody)
local getFIntUGCValidateMaxEmissivePercentageDynamicHead =
	require(root.flags.getFIntUGCValidateMaxEmissivePercentageDynamicHead)
local getFIntUGCValidateMaxEmissiveAreaRigidAccessory =
	require(root.flags.getFIntUGCValidateMaxEmissiveAreaRigidAccessory)
local getFIntUGCValidateMaxEmissiveAreaLayeredClothing =
	require(root.flags.getFIntUGCValidateMaxEmissiveAreaLayeredClothing)
local getFIntUGCValidateEmissiveR15BlockyBoundingBoxVolume =
	require(root.flags.getFIntUGCValidateEmissiveR15BlockyBoundingBoxVolume)
local getFIntUGCValidationMaxEmissiveStrengthForAreaChecks =
	require(root.flags.getFIntUGCValidationMaxEmissiveStrengthForAreaChecks)
local getFFlagUGCValidateEmissiveFixAreaChecks = require(root.flags.getFFlagUGCValidateEmissiveFixAreaChecks)
local getFFlagUGCValidateEmissiveAreaChecksFixedAlgo =
	require(root.flags.getFFlagUGCValidateEmissiveAreaChecksFixedAlgo)

local EmissiveAreaChecks = {}

EmissiveAreaChecks.fflag = getFFlagUGCValidateEmissiveAreaChecks
EmissiveAreaChecks.categories = {
	ValidationEnums.UploadCategory.TORSO_AND_LIMBS,
	ValidationEnums.UploadCategory.DYNAMIC_HEAD,
	ValidationEnums.UploadCategory.LAYERED_CLOTHING,
	ValidationEnums.UploadCategory.EYEBROW_EYELASH,
	ValidationEnums.UploadCategory.RIGID_ACCESSORY,
}
EmissiveAreaChecks.requiredData = {
	ValidationEnums.SharedDataMember.renderMeshesData,
	ValidationEnums.SharedDataMember.innerCagesData,
	ValidationEnums.SharedDataMember.meshTextures,
	ValidationEnums.SharedDataMember.rootInstance,
	ValidationEnums.SharedDataMember.uploadCategory,
}
EmissiveAreaChecks.expectedFailures = {}

local function getEmissiveStrength(data: Types.SharedData, meshPartName: string): number
	local meshPart = data.rootInstance
	if meshPart.Name ~= meshPartName then
		meshPart = data.rootInstance:FindFirstChild(meshPartName, true)
	end
	if not meshPart then
		return 0
	end
	local surfaceAppearance = meshPart:FindFirstChildWhichIsA("SurfaceAppearance", true)
	return if surfaceAppearance then surfaceAppearance.EmissiveStrength else 0
end

local function getWeightedAreaForTextures(
	meshData: Types.EditableMeshData,
	emissiveEditableImage: EditableImage,
	colorMapEditableImage: EditableImage?
): (number, number)
	local mesh = meshData.editable
	local size = emissiveEditableImage.Size
	local emissivePixels = emissiveEditableImage:ReadPixelsBuffer(Vector2.zero, size)
	local colorMapPixels = nil

	if colorMapEditableImage then
		colorMapPixels = colorMapEditableImage:ReadPixelsBuffer(Vector2.zero, colorMapEditableImage.Size)
	end
	local weightedRedArea = 0
	local totalArea = 0

	for _, faceId in mesh:GetFaces() do
		local vertices = mesh:GetFaceVertices(faceId)
		local firstPosition = mesh:GetPosition(vertices[1])
		local firstEdge = (mesh:GetPosition(vertices[2]) - firstPosition) * meshData.scale
		local secondEdge = (mesh:GetPosition(vertices[3]) - firstPosition) * meshData.scale
		local triangleArea = firstEdge:Cross(secondEdge).Magnitude * 0.5
		if triangleArea == 0 then
			continue
		end

		totalArea += triangleArea

		local uvIds = mesh:GetFaceUVs(faceId)
		local firstUV = mesh:GetUV(uvIds[1])
		local secondUV = mesh:GetUV(uvIds[2])
		local thirdUV = mesh:GetUV(uvIds[3])
		if not firstUV or not secondUV or not thirdUV then
			continue
		end
		local centroidUV = (firstUV + secondUV + thirdUV) / 3
		local pixelX = math.floor((centroidUV.X % 1) * size.X)
		local pixelY = math.floor((centroidUV.Y % 1) * size.Y)
		local pixelOffset = (pixelY * size.X + pixelX) * 4
		local emissiveRed = buffer.readu8(emissivePixels, pixelOffset)

		local colorMapFraction = 1
		if colorMapEditableImage then
			local colorMapSize = colorMapEditableImage.Size
			local colorMapPixelX = math.floor((centroidUV.X % 1) * colorMapSize.X)
			local colorMapPixelY = math.floor((centroidUV.Y % 1) * colorMapSize.Y)
			local colorMapPixelOffset = (colorMapPixelY * colorMapSize.X + colorMapPixelX) * 4
			local colorMapRed = buffer.readu8(colorMapPixels, colorMapPixelOffset)
			local colorMapGreen = buffer.readu8(colorMapPixels, colorMapPixelOffset + 1)
			local colorMapBlue = buffer.readu8(colorMapPixels, colorMapPixelOffset + 2)
			colorMapFraction = (colorMapRed + colorMapGreen + colorMapBlue) / (3 * 255)
		end

		weightedRedArea += triangleArea * emissiveRed * colorMapFraction
	end

	return weightedRedArea / 255, totalArea
end

local function getTotalEmissiveSurfaceArea(meshData: Types.EditableMeshData, image: EditableImage): (number, number)
	local mesh = meshData.editable
	local size = image.Size
	local pixels = image:ReadPixelsBuffer(Vector2.zero, size)
	local totalArea = 0
	local weightedRedArea = 0

	for _, faceId in mesh:GetFaces() do
		local vertices = mesh:GetFaceVertices(faceId)
		local firstPosition = mesh:GetPosition(vertices[1])
		local firstEdge = (mesh:GetPosition(vertices[2]) - firstPosition) * meshData.scale
		local secondEdge = (mesh:GetPosition(vertices[3]) - firstPosition) * meshData.scale
		local triangleArea = firstEdge:Cross(secondEdge).Magnitude * 0.5
		if triangleArea == 0 then
			continue
		end

		local uvIds = mesh:GetFaceUVs(faceId)
		local firstUV = mesh:GetUV(uvIds[1])
		local secondUV = mesh:GetUV(uvIds[2])
		local thirdUV = mesh:GetUV(uvIds[3])
		if not firstUV or not secondUV or not thirdUV then
			continue
		end
		local centroidUV = (firstUV + secondUV + thirdUV) / 3
		local pixelX = math.floor((centroidUV.X % 1) * size.X)
		local pixelY = math.floor((centroidUV.Y % 1) * size.Y)
		local pixelOffset = (pixelY * size.X + pixelX) * 4
		local red = buffer.readu8(pixels, pixelOffset)

		totalArea += triangleArea
		weightedRedArea += triangleArea * red
	end

	return weightedRedArea / 255, totalArea
end

local function getEmissiveFraction(
	meshData: Types.EditableMeshData,
	image: EditableImage,
	data: Types.SharedData,
	meshPartName: string
): number
	local emissiveArea, totalArea = getTotalEmissiveSurfaceArea(meshData, image)
	return if totalArea > 0
		then (
			(emissiveArea / totalArea)
			* getEmissiveStrength(data, meshPartName)
			/ getFIntUGCValidationMaxEmissiveStrengthForAreaChecks()
		)
		else 0
end

local function getTotalEmissiveArea(
	meshData: Types.EditableMeshData,
	emissiveImageData: Types.EditableImageData,
	data: Types.SharedData,
	meshPartName: string
): (number, number)
	local emissiveEditable = emissiveImageData.editable
	local textureData = data.meshTextures[meshPartName]
	local colorMap = textureData.ColorMap
	local colorMapEditable = nil
	if colorMap then
		colorMapEditable = colorMap.editable
	end
	return getWeightedAreaForTextures(meshData, emissiveEditable, colorMapEditable)
end

local function runEmissiveAreaChecks(reporter: Types.ValidationReporter, data: Types.SharedData)
	for meshPartName, meshData in data.renderMeshesData do
		local textureData = data.meshTextures[meshPartName]
		local emissiveMask = if textureData then textureData.EmissiveMask else nil
		if not emissiveMask then
			continue
		end

		local assetTypeName = data.uploadEnum.assetType.Name
		local weightedArea, totalArea = getTotalEmissiveArea(meshData, emissiveMask, data, meshPartName)
		local strength = textureData.EmissiveStrength :: number
		local tint = textureData.EmissiveTint :: Color3
		local tintFraction = (tint.R + tint.G + tint.B) / 3
		local strengthFraction = strength / getFIntUGCValidationMaxEmissiveStrengthForAreaChecks()
		weightedArea = weightedArea * tintFraction * strengthFraction

		if data.uploadCategory == ValidationEnums.UploadCategory.RIGID_ACCESSORY then
			if weightedArea > getFIntUGCValidateMaxEmissiveAreaRigidAccessory() then
				reporter:fail(ErrorSourceStrings.Keys.EmissiveArea_SurfaceAreaExceededNew, {
					assetTypeName = assetTypeName,
					emissiveArea = string.format("%.2f", weightedArea),
					maxEmissiveArea = tostring(getFIntUGCValidateMaxEmissiveAreaRigidAccessory()),
				})
			end
		elseif
			data.uploadCategory == ValidationEnums.UploadCategory.TORSO_AND_LIMBS
			or data.uploadCategory == ValidationEnums.UploadCategory.DYNAMIC_HEAD
		then
			local emissiveFraction = weightedArea / totalArea
			local maxEmissivePercentage = getFIntUGCValidateMaxEmissivePercentageBody()
			if data.uploadCategory == ValidationEnums.UploadCategory.DYNAMIC_HEAD then
				maxEmissivePercentage = getFIntUGCValidateMaxEmissivePercentageDynamicHead()
			end
			if emissiveFraction > maxEmissivePercentage / 100 then
				reporter:fail(ErrorSourceStrings.Keys.EmissiveArea_AboveThresholdNew, {
					meshName = meshPartName,
					emissivePercentage = string.format("%.2f", emissiveFraction * 100),
					maxEmissivePercentage = tostring(maxEmissivePercentage),
				})
			end
		else
			local cageMesh = data.innerCagesData[meshPartName]
			local tempModel = Instance.new("Model")
			local tempMeshPart = AssetService:CreateMeshPartAsync(Content.fromObject(cageMesh.editable))
			tempMeshPart.Parent = tempModel
			local _, size = tempModel:GetBoundingBox()
			local volume = size.X * size.Y * size.Z
			local avatarVolume = getFIntUGCValidateEmissiveR15BlockyBoundingBoxVolume()
			local volumeScale = avatarVolume / volume

			local areaScale = (volumeScale ^ (2 / 3))
			weightedArea = weightedArea * areaScale

			if weightedArea > getFIntUGCValidateMaxEmissiveAreaLayeredClothing() then
				reporter:fail(ErrorSourceStrings.Keys.EmissiveArea_SurfaceAreaExceededNew, {
					assetTypeName = assetTypeName,
					emissiveArea = string.format("%.2f", weightedArea),
					maxEmissiveArea = tostring(getFIntUGCValidateMaxEmissiveAreaLayeredClothing()),
				})
			end
		end
	end
end

EmissiveAreaChecks.run = function(reporter: Types.ValidationReporter, data: Types.SharedData)
	if getFFlagUGCValidateEmissiveAreaChecksFixedAlgo() then
		runEmissiveAreaChecks(reporter, data)
		return
	end
	for meshPartName, meshData in data.renderMeshesData do
		local textureData = data.meshTextures[meshPartName]
		local emissiveMask = if textureData then textureData.EmissiveMask else nil
		if not emissiveMask then
			continue
		end

		if data.uploadCategory == ValidationEnums.UploadCategory.RIGID_ACCESSORY then
			local weightedArea = getTotalEmissiveSurfaceArea(meshData, emissiveMask.editable)
			if getFFlagUGCValidateEmissiveFixAreaChecks() then
				weightedArea = weightedArea
					* getEmissiveStrength(data, meshPartName)
					/ getFIntUGCValidationMaxEmissiveStrengthForAreaChecks()
			end
			if weightedArea > getFIntUGCValidateMaxEmissiveAreaRigidAccessory() then
				reporter:fail(ErrorSourceStrings.Keys.EmissiveArea_SurfaceAreaExceeded, {
					meshName = meshPartName,
					emissiveArea = string.format("%.2f", weightedArea),
					maxEmissiveArea = tostring(getFIntUGCValidateMaxEmissiveAreaRigidAccessory()),
				})
			end
		elseif
			data.uploadCategory == ValidationEnums.UploadCategory.TORSO_AND_LIMBS
			or data.uploadCategory == ValidationEnums.UploadCategory.DYNAMIC_HEAD
		then
			local emissiveFraction = getEmissiveFraction(meshData, emissiveMask.editable, data, meshPartName)
			local maxEmissivePercentage = getFIntUGCValidateMaxEmissivePercentageBody()
			if data.uploadCategory == ValidationEnums.UploadCategory.DYNAMIC_HEAD then
				maxEmissivePercentage = getFIntUGCValidateMaxEmissivePercentageDynamicHead()
			end
			if emissiveFraction > maxEmissivePercentage / 100 then
				reporter:fail(ErrorSourceStrings.Keys.EmissiveArea_AboveThreshold, {
					meshName = meshPartName,
					emissivePercentage = string.format("%.2f", emissiveFraction * 100),
					maxEmissivePercentage = tostring(maxEmissivePercentage),
				})
			end
		else
			local cageMesh = data.innerCagesData[meshPartName]
			local tempModel = Instance.new("Model")
			local tempMeshPart = AssetService:CreateMeshPartAsync(Content.fromObject(cageMesh.editable))
			tempMeshPart.Parent = tempModel
			local _, size = tempModel:GetBoundingBox()
			local volume = size.X * size.Y * size.Z
			local avatarVolume = getFIntUGCValidateEmissiveR15BlockyBoundingBoxVolume()
			local volumeScale = avatarVolume / volume

			local areaScale = (volumeScale ^ (1 / 3)) ^ 2
			local weightedArea = getTotalEmissiveSurfaceArea(meshData, emissiveMask.editable)
			if getFFlagUGCValidateEmissiveFixAreaChecks() then
				weightedArea = weightedArea
					* getEmissiveStrength(data, meshPartName)
					/ getFIntUGCValidationMaxEmissiveStrengthForAreaChecks()
			end
			weightedArea = weightedArea * areaScale

			if weightedArea > getFIntUGCValidateMaxEmissiveAreaLayeredClothing() then
				reporter:fail(ErrorSourceStrings.Keys.EmissiveArea_SurfaceAreaExceeded, {
					meshName = meshPartName,
					emissiveArea = string.format("%.2f", weightedArea),
					maxEmissiveArea = tostring(getFIntUGCValidateMaxEmissiveAreaLayeredClothing()),
				})
			end
		end
	end
end

return EmissiveAreaChecks :: Types.ValidationModule
