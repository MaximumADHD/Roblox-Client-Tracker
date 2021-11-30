local FInt9SliceEditorAnalyticsReportingHundrethsPercent = game:GetFastInt("9SliceEditorAnalyticsReportingHundrethsPercent")
local FFlag9SliceEditorFixAnalyticsReportingThrottling = game:GetFastFlag("9SliceEditorFixAnalyticsReportingThrottling")

return function(analyticsService: RbxAnalyticsService)
	local rand = Random.new()

	local function shouldReport(): boolean
		if FFlag9SliceEditorFixAnalyticsReportingThrottling then
			return rand:NextNumber() < FInt9SliceEditorAnalyticsReportingHundrethsPercent / 10000
		else
			return rand:NextNumber() < FInt9SliceEditorAnalyticsReportingHundrethsPercent / 100
		end
	end

	local function report1Count(counterName: string)
		if shouldReport() then
			analyticsService:ReportCounter(counterName, 1)
		end
	end

	local function reportStat(statName: string, value: number)
		if shouldReport() then
			analyticsService:ReportStats(statName, value)
		end
	end

	return {
		sliceEditorOpened = function()
			report1Count("Studio9SliceEditorOpened")
		end,

		sliceEditorImageLoadedIntoEditor = function()
			report1Count("Studio9SliceEditorImageLoadedIntoEditor")
		end,		

		sliceEditorOpenTime = function(handlerName: string, seconds: number)
			reportStat("Studio9SliceEditorOpenTime", seconds)
		end,
    }
end