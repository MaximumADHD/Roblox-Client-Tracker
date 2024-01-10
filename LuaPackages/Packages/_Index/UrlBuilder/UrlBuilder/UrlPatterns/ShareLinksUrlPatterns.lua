--!strict
type ShareLinksUrlPatterns = {
	appsflyer: (linkId: string, linkType: string) -> string,
	shortUrl: (params: { linkId: string, type: string, stamp: string? }) -> string,
}

return function(UrlBuilder): ShareLinksUrlPatterns
	local ShareLinksUrlPatterns = {}

	ShareLinksUrlPatterns.appsflyer = function(linkId: string, linkType: string): string
		local params: { any } = {
			linkId = linkId,
			linkType = linkType,
		}
		local mobileUrl = UrlBuilder.fromString("mobilenav:share_links?code={linkId}&type={linkType}")(params)
		local webUrl = UrlBuilder.fromString("www:share-links?code={linkId}&type={linkType}")(params)
		return UrlBuilder.fromString(
			"appsflyer:Ebh5?pid=share&is_retargeting=true&af_dp={mobileUrl}&af_web_dp={webUrl}"
		)({
			mobileUrl = mobileUrl,
			webUrl = webUrl,
		})
	end

	ShareLinksUrlPatterns.shortUrl = function(params: { linkId: string, type: string, stamp: string? }): string
		return UrlBuilder.fromString("www:share?code={linkId}&type={type}&stamp={stamp|}")(params)
	end

	return ShareLinksUrlPatterns
end
