local CorePackages = game:GetService("CorePackages")
local AvatarEditorService = game:GetService("AvatarEditorService")

local Promise = require(CorePackages.Packages.Promise)

return function(assetIdList)
	return Promise.new(function(resolve, reject)
		local success, result = pcall(function()
			-- SBT-5736: `any` cast present due to in-flight PR to rename methods.
			-- Will be removed when that PR is merged.
			if game:GetEngineFeature("AsyncRenamesUsedInLuaApps") then
				return (AvatarEditorService :: any):GetBatchItemDetailsAsync(assetIdList, Enum.AvatarItemType.Asset)
			else
				return (AvatarEditorService :: any):GetBatchItemDetails(assetIdList, Enum.AvatarItemType.Asset)
			end
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
