--[[
	validateAccurateBoundingBox.lua validates that there are no sparse regions of an asset bounding box caused by low visibility geometry
	which has only the purpose of inflating the asset bounds artificially. It does this by using the asset mask images to determine the best fit bounding box
	in image space that minimizes the bounding box size while containing the most geometry. The minimized 2d bounding boxes in image space for all rendered views
	are then projected back into 3d world space to determine the valid asset bounding box. The asset fails if the difference between its current bounding box
	and the valid bounding box is too great.
]]

local AssetService = game:GetService("AssetService")

local root = script.Parent.Parent

local Analytics = require(root.Analytics)
local BodyAssetMasksRenderer = require(root.util.bodyAssetMasksRenderer)
local NelderMead = require(root.util.nelderMead)
local SummedAreaTable = require(root.util.SummedAreaTable)
local FailureReasonsAccumulator = require(root.util.FailureReasonsAccumulator)
local AssetCalculator = require(root.util.AssetCalculator)
local getEditableMeshFromContext = require(root.util.getEditableMeshFromContext)
local getMeshVerts = require(root.util.getMeshVerts)
local getAttachmentCFrameInPartSpace = require(root.util.getAttachmentCFrameInPartSpace)
local Types = require(root.util.Types)
local FloatVector = require(root.util.FloatVector)
local Extents = require(root.util.Extents)
local tryYield = require(root.util.tryYield)

local validateAccurateBoundingBoxFlags = require(root.flags.validateAccurateBoundingBoxFlags)
local getFFlagUGCValidateTinyTrianglesIntersectFix = require(root.flags.getFFlagUGCValidateTinyTrianglesIntersectFix)

type BodyAssetMasksRenderer = BodyAssetMasksRenderer.BodyAssetMasksRenderer
type BodyAssetMaskEntry = BodyAssetMasksRenderer.BodyAssetMaskEntry
type FloatVector = FloatVector.FloatVector
type Extents = Extents.Extents

-- Returns the NeckRigAttachment position in mesh-local space for the given head MeshPart.
-- Attachments are in part-local space; dividing by partScale (Size/MeshSize) converts to mesh-local
-- so it aligns with the coordinate space used by validBounds for DynamicHead.
-- Returns nil if the attachment is missing e.g. the part is not a head (caller should skip the crop).
local function getHeadNeckAttachmentMeshLocalPosition(headMeshPart: MeshPart): Vector3?
	local neckAttachment = headMeshPart:FindFirstChild("NeckRigAttachment", true)
	if not neckAttachment then
		return nil
	end

	local attachmentPartLocalCFrame = getAttachmentCFrameInPartSpace(neckAttachment :: Attachment)
	local partScale = headMeshPart.Size / headMeshPart.MeshSize
	return attachmentPartLocalCFrame.Position / partScale
end

-- Projects a mesh-local 3D point to the image row of a given view's mask.
-- Only meaningful for side views (Front/Back/Left/Right) where image-Y corresponds to world-Y.
-- Uses the same normalized-to-screen transform as bodyAssetMasksRenderer.normalizedSpaceToScreenSpace.
local function projectMeshLocalPointToImageRow(point: Vector3, maskEntry: BodyAssetMaskEntry): number
	local viewSpacePoint = maskEntry.view:Inverse() * point

	local bounds = maskEntry.viewSpaceBounds
	local centerY = (bounds.max.Y + bounds.min.Y) / 2
	local halfSizeY = (bounds.max.Y - bounds.min.Y) / 2
	local normalizedY = (viewSpacePoint.Y - centerY) / halfSizeY

	local imageSize: Vector2 = (maskEntry.mask :: EditableImage).Size
	local screenY = normalizedY * -0.5 + 0.5
	return screenY * (imageSize.Y - 1)
end

-- Returns a new EditableImage copied from sourceMask with all pixels below clipRow zeroed out.
-- The row at floor(clipRow) is preserved (conservative crop). Does not mutate the source, since
-- bodyAssetMasksWrapper is shared across downstream validators. Caller must :Destroy() the result.
local function cloneMaskZeroedBelowRow(sourceMask: EditableImage, clipRow: number): EditableImage
	local size = sourceMask.Size
	local width, height = size.X, size.Y
	local BYTES_PER_PIXEL = 4

	local pixels = sourceMask:ReadPixelsBuffer(Vector2.zero, size)

	-- floor+1 preserves the row containing clipRow; clamp guards against out-of-image values
	local firstZeroRow = math.max(0, math.min(height, math.floor(clipRow) + 1))
	if firstZeroRow < height then
		local firstZeroByte = firstZeroRow * width * BYTES_PER_PIXEL
		local bytesToZero = (height - firstZeroRow) * width * BYTES_PER_PIXEL
		buffer.fill(pixels, firstZeroByte, 0, bytesToZero)
	end

	local croppedMask = (AssetService :: any):CreateEditableImage({ Size = size })
	croppedMask:WritePixelsBuffer(Vector2.zero, size, pixels)
	return croppedMask
end

local function sampleAreaTable(areaTable, leftBound, rightBound, topBound, bottomBound)
	local upperLeftNormalized = Vector2.new(leftBound, topBound)
	local lowerRightNormalized = Vector2.new(rightBound, bottomBound)
	local upperLeftPixelSpace = upperLeftNormalized * areaTable.size
	local lowerRightPixelSpace = lowerRightNormalized * areaTable.size

	local pixelSpaceSize = lowerRightPixelSpace - upperLeftPixelSpace
	local filledArea = areaTable:GetAreaDensityContinuous(upperLeftPixelSpace, pixelSpaceSize)
	return filledArea
end

-- performs a final binary search for each bound; left, right, top, bottom, that minimizes the cost function
local function shrinkBounds(bounds: FloatVector, objectFunction: (FloatVector) -> number, imageSize: Vector2)
	local getOpposingBoundIndex = function(boundIndex: number)
		if boundIndex % 2 == 0 then
			return boundIndex - 1
		else
			return boundIndex + 1
		end
	end

	for boundIndex = 1, 4, 1 do
		local opposingBound = bounds[getOpposingBoundIndex(boundIndex)]
		local axis = nil
		if boundIndex < 3 then
			axis = "X"
		else
			axis = "Y"
		end
		local pixelLength = 1.0 / (imageSize :: any)[axis]

		local scratchVector = FloatVector.new(bounds)
		local currentCost = objectFunction(bounds)
		local current = bounds[boundIndex]
		while math.abs(current - opposingBound) >= pixelLength do
			local middle = (current + opposingBound) / 2.0
			scratchVector[boundIndex] = middle
			local middleCost = objectFunction(scratchVector)

			if middleCost < currentCost then
				local further = middle + (opposingBound - middle) * 0.01
				scratchVector[boundIndex] = further
				local furtherCost = objectFunction(scratchVector)
				if furtherCost - middleCost > 0.0 then
					opposingBound = current -- change directions if toward opposing is worse
				end

				current = middle
				currentCost = middleCost
			else --if middle was worse, assume that minima is closer
				opposingBound = middle
			end
		end
		bounds[boundIndex] = current
	end
end

local function createSimplex(guess: FloatVector, stepSize: number)
	local simplex = {}
	table.insert(simplex, guess)
	table.insert(simplex, guess + FloatVector.new(stepSize, 0.0, 0.0, 0.0))
	table.insert(simplex, guess + FloatVector.new(0.0, stepSize, 0.0, 0.0))
	table.insert(simplex, guess + FloatVector.new(0.0, 0.0, stepSize, 0.0))
	table.insert(simplex, guess + FloatVector.new(0.0, 0.0, 0.0, stepSize))
	return simplex
end

local function calculateMinimumBoundsForView(
	maskEntry: BodyAssetMaskEntry,
	validationContext: Types.ValidationContext
): (boolean, { string } | FloatVector)
	local middleGuess = FloatVector.new(0.0, 1.0, 0.0, 1.0)
	local initialSimplex = createSimplex(middleGuess, 0.9)

	local image = maskEntry.mask :: EditableImage
	local imageSize = image.Size
	local summedArea = SummedAreaTable.new(imageSize, function(color)
		if color.R > 0 or color.G > 0 or color.B > 0 then
			return 1
		end

		return 0
	end)

	summedArea:BuildSummedAreaTable(image)
	local totalFilledArea = summedArea:GetAreaDensity(Vector2.zero, imageSize)
	if totalFilledArea <= 0.0 then
		return false,
			{
				string.format(
					"%s asset not visible from the %s, cannot determine quality of asset bounding box",
					(validationContext.assetTypeEnum :: Enum.AssetType).Name,
					maskEntry.viewId
				),
			}
	end

	local targetFilledPercentage = validateAccurateBoundingBoxFlags.targetPercentage()
	local targetFilledPercentageWeight = validateAccurateBoundingBoxFlags.percentageWeight()
	-- parameterized by left, right, top, and bottom values of the bounding box in normalized space
	local objectFunction = function(candidate: FloatVector)
		assert(candidate:getSize() == 4)
		local filledArea = 0.0
		if candidate[1] <= candidate[2] and candidate[3] <= candidate[4] then
			filledArea = sampleAreaTable(summedArea, candidate[1], candidate[2], candidate[3], candidate[4])
		end

		local filledPercentage = filledArea / totalFilledArea * 100.0
		local targetDifference = math.abs(filledPercentage - targetFilledPercentage)
		local differenceCost = targetDifference * targetFilledPercentageWeight

		local sizeNormalized = Vector2.new(candidate[2] - candidate[1], candidate[4] - candidate[3])
		local sizeCost = sizeNormalized.X + sizeNormalized.Y
		return differenceCost + sizeCost
	end

	local maxIterations = validateAccurateBoundingBoxFlags.maxIterations()
	local pixelSize = Vector2.new(1 / imageSize.X, 1 / imageSize.Y)
	local convergedPixelLength = validateAccurateBoundingBoxFlags.convergedLength()
	local convergedLength = pixelSize.Magnitude * convergedPixelLength -- converged when all candidates are within some amount of pixels of each other
	local terminateFunction = function(simplex: { FloatVector }, numIterations: number)
		if numIterations >= maxIterations then
			return true
		end

		local maxLength = NelderMead.calculateMaxLengthBetweenVertices(simplex)

		if maxLength <= convergedLength then
			return true
		end

		tryYield(validationContext)
		return false
	end

	local nelderMeadContext: any = NelderMead.new(initialSimplex, objectFunction, terminateFunction)
	nelderMeadContext:evaluate()

	local bestCandidate = nelderMeadContext.simplex[1]
	shrinkBounds(bestCandidate, objectFunction, imageSize)

	--clamp because it is still possible for some values to be outside normalized range
	bestCandidate = FloatVector.new(
		math.clamp(bestCandidate[1], 0.0, 1.0),
		math.clamp(bestCandidate[2], 0.0, 1.0),
		math.clamp(bestCandidate[3], 0.0, 1.0),
		math.clamp(bestCandidate[4], 0.0, 1.0)
	)

	return true, bestCandidate
end

-- returns true if a resultant vector component is mapped to exactly one component of the input vector, that is not z
local function transformIsAlignedWithAxis(transform: CFrame, axis: Vector3)
	if axis:FuzzyEq(transform.XVector:Abs()) then
		return true
	elseif axis:FuzzyEq(transform.YVector:Abs()) then
		return true
	end

	return false
end

local function alignedExtentsFromReprojectedPoint(worldSpacePosition: Vector3, viewToWorld: CFrame): Extents
	local componentMax = { X = -math.huge, Y = -math.huge, Z = -math.huge }
	local componentMin = { X = math.huge, Y = math.huge, Z = math.huge }

	if transformIsAlignedWithAxis(viewToWorld, Vector3.xAxis) then
		componentMax.X = math.max(componentMax.X, worldSpacePosition.X)
		componentMin.X = math.min(componentMin.X, worldSpacePosition.X)
	end

	if transformIsAlignedWithAxis(viewToWorld, Vector3.yAxis) then
		componentMax.Y = math.max(componentMax.Y, worldSpacePosition.Y)
		componentMin.Y = math.min(componentMin.Y, worldSpacePosition.Y)
	end

	if transformIsAlignedWithAxis(viewToWorld, Vector3.zAxis) then
		componentMax.Z = math.max(componentMax.Z, worldSpacePosition.Z)
		componentMin.Z = math.min(componentMin.Z, worldSpacePosition.Z)
	end

	return Extents.fromMinMax(
		Vector3.new(componentMin.X, componentMin.Y, componentMin.Z),
		Vector3.new(componentMax.X, componentMax.Y, componentMax.Z)
	)
end

-- For each view direction, calculates the minimum sized bounding box that encloses most of the projected surface area.
-- The viewspace bounds are then unioned back into a 3 dimensional bounding box that is fitted slightly smaller than the asset's apparent bounding box.
local function calculateValidBounds(
	bodyAssetMasks: { [string]: BodyAssetMasksRenderer.BodyAssetMaskEntry },
	validationContext: Types.ValidationContext
): (boolean, { string } | Extents)
	local validBounds = Extents.new() :: Extents

	local cardinalViews = (if getFFlagUGCValidateTinyTrianglesIntersectFix() then {} else nil) :: { string: any }
	for viewId, maskEntry in bodyAssetMasks do
		local validScreenBounds = nil

		local success, result = calculateMinimumBoundsForView(maskEntry, validationContext)
		if not success then
			return false, result :: { string }
		else
			validScreenBounds = result :: FloatVector
		end

		local topRight = Vector2.new(validScreenBounds[2], validScreenBounds[3])
		local bottomLeft = Vector2.new(validScreenBounds[1], validScreenBounds[4])

		local topRightWorldSpace =
			BodyAssetMasksRenderer.getViewSpacePositionFromNormalized(topRight, maskEntry.viewSpaceBounds)
		topRightWorldSpace = maskEntry.view * topRightWorldSpace
		local bottomLeftWorldSpace =
			BodyAssetMasksRenderer.getViewSpacePositionFromNormalized(bottomLeft, maskEntry.viewSpaceBounds)
		bottomLeftWorldSpace = maskEntry.view * bottomLeftWorldSpace

		local topRightAlignedExtents: Extents = alignedExtentsFromReprojectedPoint(topRightWorldSpace, maskEntry.view)
		local bottomLeftAlignedExtents: Extents =
			alignedExtentsFromReprojectedPoint(bottomLeftWorldSpace, maskEntry.view)

		if getFFlagUGCValidateTinyTrianglesIntersectFix() then
			local validBoundsOnAxis = Extents.new():unionExtents(topRightAlignedExtents)
			validBoundsOnAxis = validBoundsOnAxis:unionExtents(bottomLeftAlignedExtents)

			local opposingViewId = BodyAssetMasksRenderer.opposingViewIds[viewId]
			if cardinalViews[opposingViewId] then
				cardinalViews[opposingViewId] = validBoundsOnAxis:intersectExtents(cardinalViews[opposingViewId])
			else
				cardinalViews[viewId] = validBoundsOnAxis
			end
		else
			validBounds = validBounds:unionExtents(topRightAlignedExtents)
			validBounds = validBounds:unionExtents(bottomLeftAlignedExtents)
		end
	end

	if getFFlagUGCValidateTinyTrianglesIntersectFix() then
		for _, extents in cardinalViews do
			validBounds = validBounds:unionExtents(extents :: Extents)
		end
		assert(validBounds:isValid())
	end

	return true, validBounds :: Extents
end

local function worldSpacePositionFromPointInMeshPart(modelSpacePosition: Vector3, meshPart: MeshPart): Vector3
	local partCFrame = meshPart.CFrame
	local partScale = meshPart.Size / meshPart.MeshSize
	return partCFrame * (modelSpacePosition * partScale)
end

type AxisDirectionInflations = {
	positive: { furthestPointWorldSpace: Vector3?, inflationScale: number },
	negative: { furthestPointWorldSpace: Vector3?, inflationScale: number },
}

type AxisInflations = {
	X: AxisDirectionInflations,
	Y: AxisDirectionInflations,
	Z: AxisDirectionInflations,
}

local function getHighestInflatingPointInEachAxis(
	validBounds: Extents,
	transforms: { [string]: { CFrame: CFrame, scale: Vector3 } },
	editableMeshes: { [string]: EditableMesh },
	findMeshHandle: (string) -> MeshPart,
	validationContext: Types.ValidationContext
): (boolean, { string } | AxisInflations)
	local inflationPerAxis = {
		X = {
			positive = { inflationScale = 0.0, furthestPointWorldSpace = nil },
			negative = { inflationScale = 0.0, furthestPointWorldSpace = nil },
		},
		Y = {
			positive = { inflationScale = 0.0, furthestPointWorldSpace = nil },
			negative = { inflationScale = 0.0, furthestPointWorldSpace = nil },
		},
		Z = {
			positive = { inflationScale = 0.0, furthestPointWorldSpace = nil },
			negative = { inflationScale = 0.0, furthestPointWorldSpace = nil },
		},
	}

	local validBoundsSize = validBounds:size() :: Vector3
	for meshPartName, editableMesh in editableMeshes do
		local success, errorString, positions =
			getMeshVerts({ editableMesh = editableMesh, fullName = meshPartName } :: Types.MeshInfo, validationContext)
		if not success then
			return false, errorString :: { string }
		end

		local transform = transforms[meshPartName]

		for _, position in positions :: { Vector3 } do
			local transformedPosition: Vector3 = position * transform.scale
			transformedPosition = transform.CFrame * transformedPosition
			local worldSpacePosition = worldSpacePositionFromPointInMeshPart(position, findMeshHandle(meshPartName))
			local positiveInflationScale = (transformedPosition - validBounds.max) / validBoundsSize
			local negativeInflationScale = (validBounds.min - transformedPosition) / validBoundsSize

			for _, axis in { "X", "Y", "Z" } do
				local axisInflation = inflationPerAxis[axis]
				local positiveAxisWorst = axisInflation.positive
				local currentPositiveAxis = (positiveInflationScale :: any)[axis]
				if currentPositiveAxis > positiveAxisWorst.inflationScale then
					positiveAxisWorst.furthestPointWorldSpace = worldSpacePosition
					positiveAxisWorst.inflationScale = currentPositiveAxis
				end
				local negativeAxisWorst = axisInflation.negative
				local currentNegativeAxis = (negativeInflationScale :: any)[axis]
				if currentNegativeAxis > negativeAxisWorst.inflationScale then
					negativeAxisWorst.furthestPointWorldSpace = worldSpacePosition
					negativeAxisWorst.inflationScale = currentNegativeAxis
				end
			end
		end
	end

	return true, inflationPerAxis
end

local function getBodyPartAssetEditableMeshes(
	inst: Instance,
	validationContext: Types.ValidationContext
): (boolean, { string } | { [string]: EditableMesh })
	local meshParts = {}
	if inst:IsA("MeshPart") and validationContext.assetTypeEnum == Enum.AssetType.DynamicHead then
		table.insert(meshParts, inst :: MeshPart)
	else
		for _, child in inst:GetChildren() do
			if child:IsA("MeshPart") then
				table.insert(meshParts, child :: MeshPart)
			end
		end
	end

	local editableMeshes = {}
	for _, meshPart in meshParts do
		local success, srcMeshOpt = getEditableMeshFromContext(meshPart, "MeshId", validationContext)
		if not success then
			local errorMsg = string.format(
				"Failed to load mesh for MeshPart '%s'. Make sure mesh exists and try again.",
				meshPart.Name
			)
			if validationContext.isServer then
				error(errorMsg)
			else
				return false, { errorMsg }
			end
		end
		editableMeshes[meshPart.Name] = srcMeshOpt :: EditableMesh
	end

	return true, editableMeshes
end

local function tryReportInflationError(inflationPerAxis: AxisInflations, assetType: Enum.AssetType)
	local reasonsAccumulator = FailureReasonsAccumulator.new()
	local inflationThresholdsForAsset = validateAccurateBoundingBoxFlags.AssetTypeToAxisThresholds[assetType]

	for _, axis in { "X", "Y", "Z" } do
		local axisInflationDirections = inflationPerAxis[axis]
		local axisInflation = axisInflationDirections.negative.inflationScale
			+ axisInflationDirections.positive.inflationScale
		local inflationThreshold = inflationThresholdsForAsset[axis]

		if axisInflation > inflationThreshold then
			local positionHints = {}
			if axisInflationDirections.positive.inflationScale > inflationThreshold * 0.2 then -- Don't report position as hint if it's not that far
				table.insert(positionHints, axisInflationDirections.positive.furthestPointWorldSpace)
			end
			if axisInflationDirections.negative.inflationScale > inflationThreshold * 0.2 then
				table.insert(positionHints, axisInflationDirections.negative.furthestPointWorldSpace)
			end

			local positionHintString = ""
			if #positionHints > 0 then
				positionHintString = " near "
				positionHintString = positionHintString
					.. string.format("{%.4f, %.4f, %.4f}", positionHints[1].X, positionHints[1].Y, positionHints[1].Z)
				if #positionHints > 1 then
					positionHintString = positionHintString
						.. string.format(
							", and {%.4f, %.4f, %.4f}",
							positionHints[2].X,
							positionHints[2].Y,
							positionHints[2].Z
						)
				end
			end

			local inflationPercentage = axisInflation * 100.0
			local inflationThresholdPercentage = inflationThreshold * 100.0

			reasonsAccumulator:updateReasons(false, {
				string.format(
					"Detected low visibility geometry%s that increases %s bounding box size by %.2f%% (threshold is %.2f%%) in the %s axis. Remove the geometry or increase its size so that it is more visible",
					positionHintString,
					assetType.Name,
					inflationPercentage,
					inflationThresholdPercentage,
					axis
				),
			})
		end
	end

	return reasonsAccumulator
end

local module = {}

local viewsForAssetType: { [Enum.AssetType]: { [string]: boolean }? }? = nil

function module.getBoundsViewsForAssetType(assetType: Enum.AssetType): { [string]: boolean }?
	if not viewsForAssetType then
		local copyMaskRendererViewIds = function(): { [string]: boolean }
			local copiedIds = {}
			for _, viewId in BodyAssetMasksRenderer.viewIds do
				copiedIds[viewId :: string] = true
			end
			return copiedIds
		end

		local leftArmViews = copyMaskRendererViewIds()
		leftArmViews[BodyAssetMasksRenderer.viewIds.Left] = false
		leftArmViews[BodyAssetMasksRenderer.viewIds.Bottom] = false

		local rightArmViews = copyMaskRendererViewIds()
		rightArmViews[BodyAssetMasksRenderer.viewIds.Right] = false
		rightArmViews[BodyAssetMasksRenderer.viewIds.Bottom] = false

		local leftLegViews = copyMaskRendererViewIds()
		leftLegViews[BodyAssetMasksRenderer.viewIds.Left] = false
		leftLegViews[BodyAssetMasksRenderer.viewIds.Bottom] = false

		local rightLegViews = copyMaskRendererViewIds()
		rightLegViews[BodyAssetMasksRenderer.viewIds.Right] = false
		rightLegViews[BodyAssetMasksRenderer.viewIds.Bottom] = false

		viewsForAssetType = {
			[Enum.AssetType.DynamicHead] = nil, -- nil means use all views
			[Enum.AssetType.Torso] = nil,
			[Enum.AssetType.LeftArm] = leftArmViews :: any,
			[Enum.AssetType.RightArm] = rightArmViews :: any,
			[Enum.AssetType.LeftLeg] = leftLegViews :: any,
			[Enum.AssetType.RightLeg] = rightLegViews :: any,
		}
	end

	return (viewsForAssetType :: { [Enum.AssetType]: { [string]: boolean }? })[assetType]
end

function module.validate(
	inst: Instance,
	bodyAssetMasksWrapper: BodyAssetMasksRenderer,
	validationContext: Types.ValidationContext
): (boolean, { string }?)
	local assetType = validationContext.assetTypeEnum :: Enum.AssetType
	assert(assetType)

	local function findMeshHandle(name: string): MeshPart
		if assetType == Enum.AssetType.DynamicHead then
			return inst :: MeshPart
		end
		return inst:FindFirstChild(name) :: MeshPart
	end

	local viewsForBounds = module.getBoundsViewsForAssetType(assetType)
	local masksForAssetType = {}
	if viewsForBounds then
		for viewId, useView in viewsForBounds do
			if useView then
				assert(bodyAssetMasksWrapper.bodyAssetMasks[viewId])
				masksForAssetType[viewId] = bodyAssetMasksWrapper.bodyAssetMasks[viewId]
			end
		end
	else
		masksForAssetType = bodyAssetMasksWrapper.bodyAssetMasks
	end

	-- Headless-avatar exploit mitigation: for DynamicHead, replace side-view masks with copies
	-- that have below-neck pixels zeroed. Top/Bottom are untouched (their image-Y is world-Z).
	-- TODO: Break this crop logic into its own module so this file doesn't need to know about attachments.
	-- TODO: Generalize beyond DynamicHead to other body parts (e.g., legs hiding in torso via rig attachments).
	local clonedMasksToDestroy: { EditableImage } = {}
	if assetType == Enum.AssetType.DynamicHead and validateAccurateBoundingBoxFlags.neckAttachmentCrop() then
		local neckMeshLocalPos = getHeadNeckAttachmentMeshLocalPosition(inst :: MeshPart)
		if neckMeshLocalPos then
			local marginNormalized = validateAccurateBoundingBoxFlags.neckAttachmentCropMargin()
			local croppedMasks: { [string]: BodyAssetMaskEntry } = {}
			for viewId, maskEntry in masksForAssetType do
				local isSideView = viewId ~= BodyAssetMasksRenderer.viewIds.Top
					and viewId ~= BodyAssetMasksRenderer.viewIds.Bottom
				if isSideView then
					local neckRow = projectMeshLocalPointToImageRow(neckMeshLocalPos, maskEntry)
					local sourceImage = maskEntry.mask :: EditableImage
					local imageHeight = sourceImage.Size.Y
					local marginRows = marginNormalized * (imageHeight - 1) / 2
					local clipRow = neckRow + marginRows -- preserve `marginRows` below the cropping coordinate

					local croppedImage = cloneMaskZeroedBelowRow(sourceImage, clipRow)
					table.insert(clonedMasksToDestroy, croppedImage)

					croppedMasks[viewId] = {
						mask = croppedImage,
						view = maskEntry.view,
						viewSpaceBounds = maskEntry.viewSpaceBounds,
						viewId = maskEntry.viewId,
					}
				else
					croppedMasks[viewId] = maskEntry
				end
			end
			masksForAssetType = croppedMasks
		end
	end

	-- Run pipeline in a closure to guarantee cloned mask cleanup regardless of early-exit path.
	local runPipeline = function(): (boolean, { string }?)
		local validBounds = nil
		local success: boolean, result: any = calculateValidBounds(masksForAssetType, validationContext)

		if not success then
			return false, result :: { string }
		end
		validBounds = result :: Extents

		local validationSpaceTransforms =
			AssetCalculator.getAssetMeshesValidationSpaceTransforms(inst, validationContext)

		local editableMeshes = nil
		success, result = getBodyPartAssetEditableMeshes(inst, validationContext)
		if not success then
			return false, result :: { string }
		end
		editableMeshes = result :: { [string]: EditableMesh }

		success, result = getHighestInflatingPointInEachAxis(
			validBounds,
			validationSpaceTransforms,
			editableMeshes,
			findMeshHandle,
			validationContext
		)
		if not success then
			return false, result :: { string }
		end
		local inflationPerAxis = result :: AxisInflations

		local reasonsAccumulator = tryReportInflationError(inflationPerAxis, assetType)

		if not (reasonsAccumulator:getFinalResults()) then
			Analytics.reportFailure(Analytics.ErrorType.validateAccurateBoundingBox :: string, nil, validationContext)
		end

		return reasonsAccumulator:getFinalResults()
	end

	local pipelineSuccess, pipelineResult = runPipeline()

	for _, cloned in clonedMasksToDestroy do
		cloned:Destroy()
	end

	return pipelineSuccess, pipelineResult
end

return module
