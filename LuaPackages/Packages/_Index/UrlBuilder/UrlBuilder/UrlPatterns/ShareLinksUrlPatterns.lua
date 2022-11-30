--!strict
return function(UrlBuilder)

	local ShareLinksUrlPatterns = {}

	ShareLinksUrlPatterns.appsflyer = function(linkId: string, linkType: string)
		local params: { any } = {
			linkId = linkId,
			linkType = linkType,
		}
		local mobileUrl = UrlBuilder.fromString("mobilenav:share_links?code={linkId}&type={linkType}")(params)
		local webUrl = UrlBuilder.fromString("www:share-links?code={linkId}&type={linkType}")(params)
		return UrlBuilder.fromString("appsflyer:Ebh5?pid=share&is_retargeting=true&af_dp={mobileUrl}&af_web_dp={webUrl}")({
			mobileUrl = mobileUrl,
			webUrl = webUrl,
		})
	end

	return ShareLinksUrlPatterns

end
