local isAssetIdLike = require(script.Parent.isAssetIdLike)

local NewAssetIdString = "rbxassetid://"
local NewAssetIdStringLength = #NewAssetIdString

local function findAssetIdsInSource(source: string): {string}
	local assetIds = {}
	local alreadyAddedAssetIdSet = {}
	
	local init = 1
	while true do
		local matchStart, matchEnd = string.find(source, "%d+", init)
		if matchStart then
			local digits = matchEnd - matchStart + 1
			if digits > 4 then
				local potentialId = string.sub(source, matchStart, matchEnd)
				local charRightBeforeNumber = string.sub(source, matchStart - 1, matchStart - 1)
				if charRightBeforeNumber ~= "." then
					local preceedingAssetPart = string.sub(source, matchStart - NewAssetIdStringLength, matchStart - 1)
					if preceedingAssetPart == NewAssetIdString or isAssetIdLike(potentialId) then
						-- Need this check because one script could contain the same id multiple times.
						if not alreadyAddedAssetIdSet[potentialId] then
							alreadyAddedAssetIdSet[potentialId] = true
							table.insert(assetIds, potentialId)
						end
					end
				end
			else
				-- Nothing to do, fast path not an assetId
			end
			init = matchEnd + 1
		else
			break
		end
	end

	return assetIds
end

return findAssetIdsInSource