local httpContentTypeToHeaderLookup = {
	[Enum.HttpContentType.ApplicationJson] = "application/json",
	[Enum.HttpContentType.ApplicationUrlEncoded] = "application/x-www-form-urlencoded",
	[Enum.HttpContentType.ApplicationXml] = "application/xml",
	[Enum.HttpContentType.TextPlain] = "text/plain",
	[Enum.HttpContentType.TextXml] = "text/xml",
}

local function httpContentTypeToHeader(httpContentType: Enum.HttpContentType): string
	local value = httpContentTypeToHeaderLookup[httpContentType]
	if value == nil then
		error(("HttpContentType `%s` not supported"):format(tostring(httpContentType)))
	end
	return value
end

return httpContentTypeToHeader
