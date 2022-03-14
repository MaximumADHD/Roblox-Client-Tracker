local CorePackages = game:GetService("CorePackages")
local AvatarEditorService = game:GetService("AvatarEditorService")

local Promise = require(CorePackages.Promise)

return function(assetIdList)
	return Promise.new(function(resolve, reject)
		local success, result = pcall(function()
			return AvatarEditorService:GetBatchItemDetails(assetIdList, Enum.AvatarItemType.Asset)
		end)

		if success then
			local assetIdNameMap = {}

			for _, assetInfo in ipairs(result) do
				assetIdNameMap[assetInfo.Id] = assetInfo.Name
			end

			resolve(assetIdNameMap)
		else
			reject()
		end
	end)
end
