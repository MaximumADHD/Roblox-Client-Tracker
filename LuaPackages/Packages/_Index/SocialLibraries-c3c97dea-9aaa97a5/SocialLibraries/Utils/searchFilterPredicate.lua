return function(filterInput, sourceString)
	if not filterInput or filterInput == "" then
		return true
	end

	return string.find(string.lower(sourceString), string.lower(filterInput), 1, true) ~= nil
end
