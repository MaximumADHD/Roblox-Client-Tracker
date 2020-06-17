local function extractRelevantEntries(body, fromEndpointList)
	local loadedSettings = {}
	for entry, _ in pairs(fromEndpointList) do
		loadedSettings[entry] = body[entry]
	end
	return loadedSettings
end

return extractRelevantEntries