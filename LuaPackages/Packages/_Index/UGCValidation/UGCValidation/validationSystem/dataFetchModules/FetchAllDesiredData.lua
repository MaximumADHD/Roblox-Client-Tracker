--[[
    This module handles creating and storing all requested data into shared data. If a data field cannot be properly retrieved, it will be nil.
	If a test requires data that is nil, it will be in CANNOT_RUN state.
--]]

local root = script.Parent.Parent.Parent
local ValidationEnums = require(root.validationSystem.ValidationEnums)
local FetchEditables = require(root.validationSystem.dataFetchModules.FetchEditables)
local Types = require(root.util.Types)
local DataEnums = ValidationEnums.SharedDataMember
local ALLOW_ORIGINAL_EDITABLES = {
	InExpClient = true,
	InExpServer = true,
}

local EDITABLE_ENUMS = {
	DataEnums.renderMeshesData,
	DataEnums.innerCagesData,
	DataEnums.outerCagesData,
	DataEnums.meshTextures,
}

local FetchAllDesiredData = {}
FetchAllDesiredData.DATA_FETCH_FAILURE = {}

function FetchAllDesiredData.storeDesiredData(sharedData: Types.SharedData, desiredData: { [string]: boolean })
	local rootInstance = sharedData.rootInstance
	local source = sharedData.consumerConfig.source
	local preloadedMeshes = sharedData.consumerConfig.preloadedEditableMeshes or {}
	local preloadedImages = sharedData.consumerConfig.preloadedEditableImages or {}

	local allowEditableInstances = ALLOW_ORIGINAL_EDITABLES[source]
	for _, editableDataEnum in EDITABLE_ENUMS do
		if desiredData[editableDataEnum] then
			local success, result = pcall(function()
				return FetchEditables.getDatas(
					rootInstance,
					editableDataEnum,
					allowEditableInstances,
					preloadedMeshes,
					preloadedImages
				) :: any
			end)

			if success and result then
				sharedData[editableDataEnum] = result
			else
				sharedData[editableDataEnum] = FetchAllDesiredData.DATA_FETCH_FAILURE
			end

			-- TODO: Log fetch failures
		end
	end
end

return FetchAllDesiredData
