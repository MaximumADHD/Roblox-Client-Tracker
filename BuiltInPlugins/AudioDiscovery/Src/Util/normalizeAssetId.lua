local NewAssetIdString = "rbxassetid://"
local OldAssetIdString = "http[s]?://www.roblox.com/asset/%?id="
local OldGameAssetString = "rbxgameasset://Audio/"

local function normalizeAssetId(assetString: string): string?
	local matchStart, matchEnd = string.find(assetString, NewAssetIdString, 1, true)
	if matchStart then
		return assetString:sub(matchEnd + 1)
	end

	matchStart, matchEnd = string.find(assetString, OldAssetIdString)
	if matchStart then
		return assetString:sub(matchEnd + 1)
	end

	matchStart, matchEnd = string.find(assetString, OldGameAssetString, 1, true)
	if matchStart then
		-- TODO: What to do with these? We can probably disregard them because
		-- they have to be owned by the place owner.
		return nil
	end

	return nil
end

return normalizeAssetId
