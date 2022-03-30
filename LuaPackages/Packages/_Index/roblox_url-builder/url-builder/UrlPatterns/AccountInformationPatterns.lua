return function(UrlBuilder)
	local AccountInformationPatterns = {}

	AccountInformationPatterns.metadata = UrlBuilder.fromString("accountinformation:metadata")
	AccountInformationPatterns.phone = UrlBuilder.fromString("accountinformation:phone")

	return AccountInformationPatterns
end
