--!nocheck

return function(UrlBuilder)

	local CatalogUrlPatterns = {}

	CatalogUrlPatterns.info = {
		webbundle = UrlBuilder.fromString("www:bundles/{assetId}"),
		webasset = UrlBuilder.fromString("www:catalog/{assetId}"),
		webpage = function(params)
			if params.assetType == "Bundle" then
				return CatalogUrlPatterns.info.webbundle(params)
			elseif params.assetType == "Asset" then
				return CatalogUrlPatterns.info.webasset(params)
			else
				warn(string.format("%s - unknown assetType of %s", tostring(script.name), tostring(params.assetType)))
				return nil
			end
		end,
		appsflyer = function(params)
			return UrlBuilder.fromString("appsflyer:Ebh5?pid=share&is_retargeting=true&af_dp={mobileUrl}&af_web_dp={webUrl}")({
				mobileUrl = UrlBuilder.fromString("mobilenav:item_details?itemId={assetId}&itemType={assetType}")(params),
				webUrl = CatalogUrlPatterns.info.webpage(params),
			})
		end,
	}

	return CatalogUrlPatterns
end