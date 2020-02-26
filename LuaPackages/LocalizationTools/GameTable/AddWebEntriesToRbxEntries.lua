local SourceStrings = require(script.Parent.Parent.SourceStrings)

--[[
	Takes a list webEntries (as returned in the web-based localization table api get request).
	Also takes a table called 'rbxEntries'.

	Iterates through webEntries, and inserts elements into rbxEntries formatted the way
	the Roblox API call LocalizationTable:SetEntries() expects.
]]
return function(webEntries, rbxEntries)
	if type(webEntries) ~= "table" then
		return {errorMessage = SourceStrings.AddWebEntriesToRbxEntries.WrongFormatedWebTableMessage}
	end

	if type(rbxEntries) ~= "table" then
		return {errorMessage = SourceStrings.AddWebEntriesToRbxEntries.ExpectedTableTypeMessage}
	end

	for _, datum in ipairs(webEntries) do
		local entry = {Values = {}}

		if datum.identifier then
			entry.Key = datum.identifier.key or ""
			entry.Source = datum.identifier.source or ""
			entry.Context = datum.identifier.context or ""
		else
			return {errorMessage = SourceStrings.AddWebEntriesToRbxEntries.WrongFormatedWebTableMessage}
		end

		entry.Example = datum.metadata and datum.metadata.example or ""

		if datum.translations then
			for _, translationInfo in ipairs(datum.translations) do
				if type(translationInfo.locale) == "string" then
					entry.Values[translationInfo.locale] = translationInfo.translationText or ""
				else
					return {errorMessage = SourceStrings.AddWebEntriesToRbxEntries.NoLocaleMessage}
				end
			end
		end

		table.insert(rbxEntries, entry)
	end

	return {success = true}
end

