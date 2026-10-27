--[[
	Pure helper that builds the image-feedback payload fields from the source and
	translated image URIs (rbxassetid://<id> or rbxassetid://<id>&version=<n>).

	Returns nil when the source URI has no rbxassetid; otherwise:
	  identifier  = "universeId#sourceAssetId#sourceVersion"  (ServiceSource.ExternalId)
	  source      = "sourceAssetId#sourceVersion"             (Source.Value)
	  translation = "translatedAssetId#translatedVersion", or "" when there is no
	                translated asset (Translation.Value)

	Versions are "" when the asset is bare/unversioned. Kept separate from
	FeedbackReportDialog so the parsing/formatting can be unit tested.
]]
local function parseAsset(uri: string?): (string?, string)
	if uri == nil then
		return nil, ""
	end
	local assetId = string.match(uri, "rbxassetid://(%d+)")
	if assetId == nil then
		return nil, ""
	end
	return assetId, string.match(uri, "version=(%d+)") or ""
end

export type ImageFeedbackFields = {
	identifier: string,
	source: string,
	translation: string,
}

return function(gameId: number, sourceImageUri: string?, translatedImageUri: string?): ImageFeedbackFields?
	local sourceId, sourceVersion = parseAsset(sourceImageUri)
	if sourceId == nil then
		return nil
	end

	local translatedId, translatedVersion = parseAsset(translatedImageUri)
	local translation = if translatedId ~= nil then translatedId .. "#" .. translatedVersion else ""

	return {
		identifier = gameId .. "#" .. sourceId .. "#" .. sourceVersion,
		source = sourceId .. "#" .. sourceVersion,
		translation = translation,
	}
end
