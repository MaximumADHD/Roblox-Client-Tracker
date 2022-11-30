return function(UrlBuilder)
	local VirtualEventsUrlPatterns = {}

	VirtualEventsUrlPatterns.appsflyer = function(params)
		local mobileUrl = UrlBuilder.fromString("mobilenav:event_details?eventid={eventId}")(params)
		local webUrl = UrlBuilder.fromString("www:events/{eventId}")(params)
		return UrlBuilder.fromString("appsflyer:Ebh5?pid=share&is_retargeting=true&af_dp={mobileUrl}&af_web_dp={webUrl}")({
			mobileUrl = mobileUrl,
			webUrl = webUrl,
		})
	end

	return VirtualEventsUrlPatterns
end