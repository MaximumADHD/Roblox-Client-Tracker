local root = script.Parent.Parent.Parent

local Constants = require(root.Constants)
local ParseContentIds = require(root.util.ParseContentIds)
local Types = require(root.util.Types)

local FetchContentIds = {}

function FetchContentIds.getData(rootInstance: Instance): Types.ContentIdMap?
	local contentIds: { string } = {}
	local contentIdMap: Types.ContentIdMap = {}

	local parseSuccess = ParseContentIds.parseWithErrorCheck(
		contentIds,
		contentIdMap,
		rootInstance,
		nil,
		Constants.CONTENT_ID_REQUIRED_FIELDS,
		nil
	)

	if not parseSuccess then
		return nil
	end

	return contentIdMap
end

return FetchContentIds
