--!strict
local root = script.Parent.Parent

local getFFlagUGCValidateFullBody = require(root.flags.getFFlagUGCValidateFullBody)
local getFFlagUGCValidateFixAccessories = require(root.flags.getFFlagUGCValidateFixAccessories)
local getFFlagUGCValidateHandleRestrictedUserIds = require(root.flags.getFFlagUGCValidateHandleRestrictedUserIds)

local Promise = require(root.Parent.Promise)

local ConstantsInterface = require(root.ConstantsInterface)

local BundlesMetadata = require(root.util.BundlesMetadata)
local Types = require(root.util.Types)
local getRestrictedUserTable = require(root.util.getRestrictedUserTable)
local createUGCBodyPartFolders = require(root.util.createUGCBodyPartFolders)
local fixUpPreValidation = require(root.util.fixUpPreValidation)
local validateInternal = require(root.validation.validateInternal)
local validateFullBody = require(root.validation.validateFullBody)

-- The order in which validation is performed
local SORTED_ASSET_TYPES = {
	Enum.AssetType.DynamicHead,
	Enum.AssetType.Torso,
	Enum.AssetType.LeftArm,
	Enum.AssetType.RightArm,
	Enum.AssetType.LeftLeg,
	Enum.AssetType.RightLeg,
	Enum.AssetType.HairAccessory,
	Enum.AssetType.EyebrowAccessory,
	Enum.AssetType.EyelashAccessory,
}

type AvatarValidationPiece = {
	assetType: Enum.AssetType,
	instance: Instance?,
	settings: BundlesMetadata.AssetTypeSettings,
	status: "pending" | "finished",
}

export type AvatarValidationError = {
	-- Can be nil if this applies to the entire avatar
	assetType: Enum.AssetType?,
	error: {
		type: "message",
		message: string,
	} | {
		type: "notFound",
	},
}

export type AvatarValidationResponse = {
	errors: { AvatarValidationError },
	pieces: { AvatarValidationPiece },
}

-- remove when FFlagUGCValidateFixAccessories is remvoed true
-- Delete stuff that Roblox makes automatically that is never valid for publish
local function sanitizeAvatarForValidation(avatar: Instance)
	avatar = avatar:Clone()

	for _, thing in avatar:GetDescendants() do
		if thing:IsA("Motor6D") or thing.Name == "OriginalSize" or thing.Name == "OriginalPosition" then
			thing:Destroy()
			continue
		end

		if thing:IsA("Weld") and thing.Name == "AccessoryWeld" then
			thing:Destroy()
			continue
		end

		if
			thing:IsA("MeshPart")
			and (not thing.Parent:IsA("Accessory"))
			and thing.TextureID == ""
			and (not thing:FindFirstChildWhichIsA("SurfaceAppearance"))
		then
			local surfaceAppearance = Instance.new("SurfaceAppearance")
			surfaceAppearance.Parent = thing
		end
	end

	return avatar
end

-- Promise is not typed, so we cannot use it as a return value
local function validateBundleReadyForUpload(
	avatar: Instance,
	allowedBundleTypeSettings: BundlesMetadata.AllowedBundleTypeSettings,
	bundleType: createUGCBodyPartFolders.BundleType,
	progressCallback: ((AvatarValidationResponse) -> ())?
)
	progressCallback = progressCallback or function() end
	assert(progressCallback ~= nil, "Luau")

	if not avatar:IsA("Model") then
		local response: AvatarValidationResponse = {
			errors = {
				{
					assetType = nil,
					error = {
						type = "message",
						message = "Invalid root instance, must be a model",
					},
				},
			},

			pieces = {},
		}

		return Promise.resolve(response)
	end

	avatar = if getFFlagUGCValidateFixAccessories()
		then fixUpPreValidation(avatar)
		else sanitizeAvatarForValidation(avatar)

	-- Get all the body parts to be validated in the format that the validation code expects.
	local ugcBodyPartFolders = createUGCBodyPartFolders(
		avatar :: Model,
		allowedBundleTypeSettings,
		bundleType,
		-- Don't include R15 Fixed and R6 folders
		false
	)

	local errors: { AvatarValidationError } = {}
	local pieces: { AvatarValidationPiece } = {}

	for assetTypeName, settings in allowedBundleTypeSettings[bundleType].allowedAssetTypeSettings do
		local assetType = assert(Enum.AssetType[assetTypeName], "Asset type name doesn't map to an enum item")

		if not settings.isEligibleForUpload then
			continue
		end

		assert(
			settings.minimumQuantity == 0 or settings.minimumQuantity == 1,
			"Invalid minimum quantity, createUGCBodyParts folder is a dictionary and will only ever give one."
		)

		assert(
			settings.maximumQuantity == 0 or settings.maximumQuantity == 1,
			"Invalid maximum quantity, createUGCBodyParts folder is a dictionary and will only ever give one."
		)

		local instances = ugcBodyPartFolders[assetType]
		local instance = instances and instances[1]

		if settings.minimumQuantity == 0 and instance == nil then
			continue
		end

		table.insert(pieces, {
			assetType = assetType,
			instance = instance,
			settings = settings,
			status = if instance == nil then "finished" else "pending",
		})

		if instance == nil then
			table.insert(errors, {
				assetType = assetType,
				error = {
					type = "notFound",
				},
			})
		end
	end

	table.sort(pieces, function(a, b)
		local sortKeyA = table.find(SORTED_ASSET_TYPES, a.assetType) or math.huge
		local sortKeyB = table.find(SORTED_ASSET_TYPES, b.assetType) or math.huge

		return sortKeyA < sortKeyB
	end)

	local response: AvatarValidationResponse = {
		errors = errors,
		pieces = pieces,
	}

	progressCallback(response)

	-- Calling serially because the UGC validation service gets throttled fast.
	return Promise.each(pieces, function(piece: AvatarValidationPiece, index: number)
		if piece.status == "finished" then
			return
		end

		assert(piece.instance ~= nil, "Unfinished piece doesn't have an instnace")

		local success, problems = validateInternal(
			false, -- isAsync
			{ piece.instance },
			piece.assetType,
			false, -- isServer
			false, -- allowUnreviewedAssets
			if getFFlagUGCValidateHandleRestrictedUserIds() then getRestrictedUserTable() else {},
			nil -- token
		)

		response = table.clone(response)
		response.errors = table.clone(response.errors)

		if not success then
			assert(problems ~= nil, "Failure without errors") -- Luau type refining
			for _, problem in problems do
				table.insert(response.errors, {
					assetType = piece.assetType,
					error = {
						type = "message",
						message = problem,
					},
				})
			end
		end

		response.pieces = table.clone(response.pieces)
		response.pieces[index].status = "finished"

		progressCallback(response)
	end)
		:andThen(function()
			if getFFlagUGCValidateFullBody() then
				local function createFullBodyData(inputPieces: { AvatarValidationPiece }): Types.FullBodyData
					local results: Types.FullBodyData = {}
					for _, individualPiece in inputPieces do
						if not ConstantsInterface.isBodyPart(individualPiece.assetType) then
							continue
						end

						table.insert(results, {
							assetTypeEnum = individualPiece.assetType,
							allSelectedInstances = if individualPiece.instance
								then { individualPiece.instance }
								else {},
						})
					end
					return results
				end

				local fullBodyData = createFullBodyData(response.pieces)
				local success, failures = validateFullBody(fullBodyData, false)
				if not success then
					response = table.clone(response)
					response.errors = table.clone(response.errors)

					assert(failures and (#failures > 0), "There should always be a reason for failure")
					for _, problem in failures do
						table.insert(response.errors, {
							assetType = nil,
							error = {
								type = "message",
								message = problem,
							},
						})
					end
				end
				progressCallback(response)
			end
		end)
		:andThen(function()
			return response
		end)
end

return validateBundleReadyForUpload
