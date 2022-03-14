return function(UrlBuilder)
	local AccountInformationPatterns = {}

	AccountInformationPatterns.metadata = UrlBuilder.fromString("accountinformation:metadata")

	return AccountInformationPatterns
end
