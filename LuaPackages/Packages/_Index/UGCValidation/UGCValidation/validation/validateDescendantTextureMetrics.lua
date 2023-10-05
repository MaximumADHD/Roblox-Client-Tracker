--!strict

--[[
	validateDescendantTextureMetrics.lua checks all textures referenced in the asset hierarchy have the correct specifications
]]

local root = script.Parent.Parent

local Constants = require(root.Constants)

local validateTextureSize = require(root.validation.validateTextureSize)

local FailureReasonsAccumulator = require(root.util.FailureReasonsAccumulator)
local ParseContentIds = require(root.util.ParseContentIds)

local function validateDescendantTextureMetrics(rootInstance: Instance, isServer: boolean?): (boolean, { string }?)
	local reasonsAccumulator = FailureReasonsAccumulator.new()

	local allTextures = ParseContentIds.parse(rootInstance, Constants.TEXTURE_CONTENT_ID_FIELDS)

	local sizeAlreadyTested = {}
	for _, data in allTextures do
		if not sizeAlreadyTested[data.id] then
			reasonsAccumulator:updateReasons(validateTextureSize(data.instance[data.fieldName], nil, isServer))
			sizeAlreadyTested[data.id] = true
		end
	end

	return reasonsAccumulator:getFinalResults()
end

return validateDescendantTextureMetrics
