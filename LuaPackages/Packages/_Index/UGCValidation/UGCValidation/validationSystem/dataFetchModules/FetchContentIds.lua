local root = script.Parent.Parent.Parent

local Constants = require(root.Constants)
local ParseContentIds = require(root.util.ParseContentIds)
local Types = require(root.util.Types)

local getFFlagUGCValidateVersionedContentIds = require(root.flags.getFFlagUGCValidateVersionedContentIds)

local FetchContentIds = {}

function FetchContentIds.getData(sharedData: Types.SharedData): Types.ContentIdEntriesMap
	local rootInstance = sharedData.rootInstance
	local contentIdMap: Types.ContentIdEntriesMap = {}

	local descendantsAndRoot = rootInstance:GetDescendants()
	table.insert(descendantsAndRoot, rootInstance)

	for _, instance in descendantsAndRoot do
		local fields = Constants.CONTENT_ID_FIELDS[instance.ClassName]
		if not fields then
			continue
		end

		for _, fieldName in fields do
			local contentId = (instance :: any)[fieldName]
			if contentId == "" then
				continue
			end

			local id, version
			if getFFlagUGCValidateVersionedContentIds() then
				id, version = ParseContentIds.tryParseContentId(contentId)
			else
				id = ParseContentIds.tryGetAssetIdFromContentId(contentId)
			end
			if id == nil then
				continue
			end

			if contentIdMap[id] == nil then
				contentIdMap[id] = {}
			end
			table.insert(contentIdMap[id], { fieldName = fieldName, instance = instance, version = version })
		end

		local contentFields = Constants.CONTENT_FIELDS_WITHOUT_CONTENTID[instance.ClassName]
		if not contentFields then
			continue
		end

		for _, contentFieldName in contentFields do
			local content = (instance :: any)[contentFieldName]
			if content.SourceType ~= Enum.ContentSourceType.Uri then
				continue
			end

			local id, version
			if getFFlagUGCValidateVersionedContentIds() then
				id, version = ParseContentIds.tryParseContentId(content.Uri)
			else
				id = ParseContentIds.tryGetAssetIdFromContentId(content.Uri)
			end
			if id == nil then
				continue
			end

			if contentIdMap[id] == nil then
				contentIdMap[id] = {}
			end
			table.insert(contentIdMap[id], { fieldName = contentFieldName, instance = instance, version = version })
		end
	end

	return contentIdMap
end

return FetchContentIds
