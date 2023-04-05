local function makeGlobalNavAnalytics(analytics, buttonClick)
	local eventStreamImpl = analytics.EventStream

	local service = {}

	function service.ButtonActivated(page: string, currentPage: string)
		buttonClick(eventStreamImpl, "TenFootUiGlobalNav", page, currentPage)
	end

	return service
end

return makeGlobalNavAnalytics
