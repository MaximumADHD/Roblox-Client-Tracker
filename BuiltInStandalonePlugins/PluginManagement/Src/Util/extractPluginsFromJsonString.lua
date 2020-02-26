local HttpService = game:GetService("HttpService")

return function(json)
	if json == nil or json == "" then
		return {}
	end
	local decoded = HttpService:JSONDecode(json)

	local result = {}
	for id, data in pairs(decoded) do
		local newEntry = {}
		newEntry.assetId = id
		newEntry.enabled = data.Enabled
		newEntry.installedVersion = data.AssetVersion
		newEntry.isModerated = data.Moderated
		table.insert(result, newEntry)
	end
	return result
end