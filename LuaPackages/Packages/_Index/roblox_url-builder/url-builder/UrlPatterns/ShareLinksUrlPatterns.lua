--!strict
return function(UrlBuilder)

	local ShareLinksUrlPatterns = {}

	ShareLinksUrlPatterns.appsflyer = function(linkId: string, linkType: string)
		local params: { any } = {
			linkId = linkId,
			linkType = linkType,
		}
		local mobileUrl = UrlBuilder.fromString("mobilenav:share_links?code={linkId}&type={linkType}")(params)
		return UrlBuilder.fromString("appsflyer:Ebh5?pid=share&is_retargeting=true&af_dp={mobileUrl}")({
			mobileUrl = mobileUrl,
		})
	end

	return ShareLinksUrlPatterns

end
