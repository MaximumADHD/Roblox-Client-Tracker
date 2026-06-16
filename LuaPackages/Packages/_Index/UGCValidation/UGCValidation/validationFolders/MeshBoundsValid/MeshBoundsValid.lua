local UGCValidationService = game:GetService("UGCValidationService")

local root = script.Parent.Parent.Parent

local Constants = require(root.Constants)
local Types = require(root.util.Types)
local ValidationEnums = require(root.validationSystem.ValidationEnums)
local ErrorSourceStrings = require(root.validationSystem.ErrorSourceStrings)

local getAccessoryScale = require(root.util.getAccessoryScale)
local getAttachment = require(root.util.getAttachment)
local getMeshMinMax = require(root.util.getMeshMinMax)
local isMeshPartAccessory = require(root.util.isMeshPartAccessory)
local getFFlagUGCValidateMeshMaxScale = require(root.flags.getFFlagUGCValidateMeshMaxScale)
local getFIntUGCValidateMeshCenteringHundredsThreshold =
	require(root.flags.getFIntUGCValidateMeshCenteringHundredsThreshold)
local getFFlagUGCValidateMigrateMeshGeometry = require(root.flags.getFFlagUGCValidateMigrateMeshGeometry)

local FFlagLegacyAccessoryCheckAvatarPartScaleType =
	game:DefineFastFlag("LegacyAccessoryCheckAvatarPartScaleType", false)
local FFlagMeshpartAccessoryCheckAvatarPartScaleType =
	game:DefineFastFlag("MeshpartAccessoryCheckAvatarPartScaleType", false)

local FIntUGCValidationScaleMinimumThousandths = game:DefineFastInt("UGCValidationScaleMinimumThousandths", 10)
local FIntUGCValidationScaleMaximumThousandths = game:DefineFastInt("FIntUGCValidationScaleMaximumThousandths", 10000)
local FFlagRenderBoundsCheckAttachmentOrientation = game:DefineFastFlag("RenderBoundsCheckAttachmentOrientation", false)

local DEFAULT_OFFSET = Vector3.new(0, 0, 0)

local MeshBoundsValid = {}

MeshBoundsValid.fflag = getFFlagUGCValidateMigrateMeshGeometry
MeshBoundsValid.categories = {
	ValidationEnums.UploadCategory.LAYERED_CLOTHING,
	ValidationEnums.UploadCategory.RIGID_ACCESSORY,
}
MeshBoundsValid.requiredData = { ValidationEnums.SharedDataMember.renderMeshesData }
MeshBoundsValid.expectedFailures = {}

local function pointInBounds(worldPos: Vector3, boundsCF: CFrame, boundsSize: Vector3): boolean
	local objectPos = boundsCF:PointToObjectSpace(worldPos)
	return objectPos.X >= -boundsSize.X / 2
		and objectPos.X <= boundsSize.X / 2
		and objectPos.Y >= -boundsSize.Y / 2
		and objectPos.Y <= boundsSize.Y / 2
		and objectPos.Z >= -boundsSize.Z / 2
		and objectPos.Z <= boundsSize.Z / 2
end

local function truncate(number: number): number
	return math.floor(number * 100) / 100
end

MeshBoundsValid.run = function(reporter: Types.ValidationReporter, data: Types.SharedData)
	local instance = data.rootInstance
	local assetTypeEnum = data.uploadEnum.assetType
	local isBackend = data.consumerConfig.consumerEnv == ValidationEnums.ConsumerEnv.Backend

	local assetInfo = Constants.ASSET_TYPE_INFO[assetTypeEnum]
	if not assetInfo then
		return
	end

	-- For accessories, the render mesh is on the Handle
	local handle = instance:FindFirstChild("Handle") :: BasePart
	if not handle then
		return
	end

	local editableData = data.renderMeshesData["Handle"]
	if not editableData then
		return
	end

	local attachment = getAttachment(handle, assetInfo.attachmentNames)
	if not attachment then
		return
	end

	local boundsInfo = assetInfo.bounds[attachment.Name]
	if not boundsInfo then
		return
	end

	local meshScale = editableData.scale
	local boundsSize = boundsInfo.size
	local boundsOffset = boundsInfo.offset or DEFAULT_OFFSET

	-- AvatarPartScaleType rescale: legacy validateMeshPartAccessory.lua:240-248 and
	-- validateLegacyAccessory.lua:246-252 divide both bounds size and offset by the
	-- humanoid-derived accessory scale before checking. Apply only to RIGID_ACCESSORY
	-- (LC accessory legacy never rescaled), routing to the matching legacy flag based
	-- on whether the handle is a MeshPart (Meshpart flag) or a regular Part (Legacy flag).
	if data.uploadCategory == ValidationEnums.UploadCategory.RIGID_ACCESSORY then
		local rescaleFlagOn = if isMeshPartAccessory(instance)
			then FFlagMeshpartAccessoryCheckAvatarPartScaleType
			else FFlagLegacyAccessoryCheckAvatarPartScaleType
		if rescaleFlagOn and handle:FindFirstChild("AvatarPartScaleType") then
			local accessoryScale = getAccessoryScale(handle, attachment)
			boundsSize = boundsSize / accessoryScale
			boundsOffset = if boundsInfo.offset then boundsInfo.offset / accessoryScale else DEFAULT_OFFSET
		end
	end

	local boundsCF = handle.CFrame * attachment.CFrame * CFrame.new(boundsOffset)

	-- Position sanity check
	if
		handle.Position.X > 10000
		or handle.Position.X < -10000
		or handle.Position.Y > 10000
		or handle.Position.Y < -10000
		or handle.Position.Z > 10000
		or handle.Position.Z < -10000
	then
		reporter:fail(ErrorSourceStrings.Keys.MeshGeometry_PositionOutOfBounds, {})
		return
	end
	if
		boundsCF.Position.X > 10000
		or boundsCF.Position.X < -10000
		or boundsCF.Position.Y > 10000
		or boundsCF.Position.Y < -10000
		or boundsCF.Position.Z > 10000
		or boundsCF.Position.Z < -10000
	then
		reporter:fail(ErrorSourceStrings.Keys.MeshGeometry_PositionOutOfBounds, {})
		return
	end

	-- Mesh scale minimum check
	if
		meshScale.X < FIntUGCValidationScaleMinimumThousandths / 1000
		or meshScale.Y < FIntUGCValidationScaleMinimumThousandths / 1000
		or meshScale.Z < FIntUGCValidationScaleMinimumThousandths / 1000
	then
		reporter:fail(ErrorSourceStrings.Keys.MeshGeometry_ScaleTooSmall, {})
		return
	end

	-- Mesh scale maximum check
	if getFFlagUGCValidateMeshMaxScale() then
		if
			meshScale.X > FIntUGCValidationScaleMaximumThousandths / 1000
			or meshScale.Y > FIntUGCValidationScaleMaximumThousandths / 1000
			or meshScale.Z > FIntUGCValidationScaleMaximumThousandths / 1000
		then
			reporter:fail(ErrorSourceStrings.Keys.MeshGeometry_ScaleTooLarge, {
				meshName = handle.Name,
			})
			return
		end
	end

	-- Vertex bounds check
	local verts = UGCValidationService:GetEditableMeshVerts(editableData.editable)

	for _, vertPos in pairs(verts) do
		local worldPos = handle.CFrame:PointToWorldSpace(vertPos * meshScale)
		if not pointInBounds(worldPos, boundsCF, boundsSize) then
			reporter:fail(ErrorSourceStrings.Keys.MeshGeometry_ExceedsBounds, {
				meshName = instance.Name,
				assetTypeName = assetTypeEnum.Name,
				maxSizeX = string.format("%.2f", truncate(boundsSize.X)),
				maxSizeY = string.format("%.2f", truncate(boundsSize.Y)),
				maxSizeZ = string.format("%.2f", truncate(boundsSize.Z)),
			})
			return
		end
	end

	-- Part size check
	if FFlagRenderBoundsCheckAttachmentOrientation then
		local handleToBoundsOrientation = attachment.CFrame.Rotation
		local partSizeInBoundsSpace = (handleToBoundsOrientation * handle.Size):Abs()
		if
			not (
				partSizeInBoundsSpace.X <= boundsSize.X
				and partSizeInBoundsSpace.Y <= boundsSize.Y
				and partSizeInBoundsSpace.Z <= boundsSize.Z
			)
		then
			reporter:fail(ErrorSourceStrings.Keys.MeshGeometry_ExceedsBounds, {
				meshName = handle:GetFullName(),
				assetTypeName = assetTypeEnum.Name,
				maxSizeX = string.format("%.2f", truncate(boundsSize.X)),
				maxSizeY = string.format("%.2f", truncate(boundsSize.Y)),
				maxSizeZ = string.format("%.2f", truncate(boundsSize.Z)),
			})
			return
		end
	else
		if not (handle.Size.X <= boundsSize.X and handle.Size.Y <= boundsSize.Y and handle.Size.Z <= boundsSize.Z) then
			reporter:fail(ErrorSourceStrings.Keys.MeshGeometry_ExceedsBounds, {
				meshName = handle:GetFullName(),
				assetTypeName = assetTypeEnum.Name,
				maxSizeX = string.format("%.2f", truncate(boundsSize.X)),
				maxSizeY = string.format("%.2f", truncate(boundsSize.Y)),
				maxSizeZ = string.format("%.2f", truncate(boundsSize.Z)),
			})
			return
		end
	end

	-- Mesh centering check (skip for IEC consumers, matching legacy allowEditableInstances behavior)
	local isIEC = data.consumerConfig.consumerEnv == ValidationEnums.ConsumerEnv.IEC
	if not isIEC then
		local meshInfo = {
			fullName = handle:GetFullName(),
			fieldName = "MeshId",
			editableMesh = editableData.editable,
			scale = meshScale,
			context = instance.Name,
		} :: Types.MeshInfo

		local validationContext = {
			isServer = isBackend,
			shouldYield = false,
		} :: any

		local successMinMax, _failureReasons, meshMinOpt, meshMaxOpt = getMeshMinMax(meshInfo, validationContext)
		if not successMinMax then
			reporter:fetchError(string.format("Failed to compute mesh min/max for %s", handle:GetFullName()))
		end

		if meshMinOpt and meshMaxOpt then
			local bboxCenter = (meshMinOpt + meshMaxOpt) / 2
			local acceptableCenterMagnitude = getFIntUGCValidateMeshCenteringHundredsThreshold() / 100
			if bboxCenter.Magnitude > acceptableCenterMagnitude then
				reporter:fail(ErrorSourceStrings.Keys.MeshGeometry_NotCentered, {
					meshName = handle:GetFullName(),
					fieldName = "MeshId",
				})
			end
		end
	end
end

return MeshBoundsValid :: Types.ValidationModule
