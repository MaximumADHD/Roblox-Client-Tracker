--[[
	check that each SurfaceAppearance's TexturePack has the same textures as the SurfaceAppearance itself
]]

local UGCValidationService = game:GetService("UGCValidationService")

local root = script.Parent.Parent

local util = root.util
local ParseContentIds = require(util.ParseContentIds)

local flags = root.flags
local getFFlagUGCValidateEmptySurfaceAppearance = require(flags.getFFlagUGCValidateEmptySurfaceAppearance)

local TexturePackUtils = {}

local function findSurfaceAppearances(
	rootInst: Instance,
	allowEmpty: boolean
): ({ SurfaceAppearance }, { SurfaceAppearance })
	local valid = {}
	local invalid = {}

	local allDescendants: { Instance } = rootInst:GetDescendants()
	table.insert(allDescendants, rootInst)

	for _, descendant in allDescendants do
		if not descendant:IsA("SurfaceAppearance") then
			continue
		end

		local texturePackURL = UGCValidationService:GetPropertyValue(descendant, "TexturePack")
		local theAssetId = if texturePackURL then ParseContentIds.tryGetAssetIdFromContentId(texturePackURL) else nil

		if theAssetId then
			table.insert(valid, descendant)
		else
			if getFFlagUGCValidateEmptySurfaceAppearance() then
				local surfaceAppearanceHasTextures = (descendant.ColorMap and descendant.ColorMap ~= "")
					or (descendant.MetalnessMap and descendant.MetalnessMap ~= "")
					or (descendant.NormalMap and descendant.NormalMap ~= "")
					or (descendant.RoughnessMap and descendant.RoughnessMap ~= "")
					or (
						descendant.EmissiveMaskContent
						and descendant.EmissiveMaskContent.SourceType == Enum.ContentSourceType.Uri
						and descendant.EmissiveMaskContent.Uri
						and descendant.EmissiveMaskContent.Uri ~= ""
					)
				if surfaceAppearanceHasTextures or not allowEmpty then
					table.insert(invalid, descendant)
				end
			else
				table.insert(invalid, descendant)
			end
		end
	end
	return valid, invalid
end

function TexturePackUtils.findSurfaceAppearancesMissingTexturePacks(
	rootInst: Instance,
	allowEmpty: boolean
): { SurfaceAppearance }
	local _, invalid = findSurfaceAppearances(rootInst, allowEmpty)
	return invalid
end

function TexturePackUtils.findSurfaceAppearancesWithTexturePacks(rootInst: Instance): { SurfaceAppearance }
	local valid = findSurfaceAppearances(rootInst, false)
	return valid
end

return TexturePackUtils
