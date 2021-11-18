--[[
	This function sends relavent endpoint analytics to Kibana.
]]

local RbxAnalyticsService = game:GetService("RbxAnalyticsService")
local FFlagNewPackageAnalyticsWithRefactor2 = game:GetFastFlag("NewPackageAnalyticsWithRefactor2")
local FFlagInfluxReportingPackageAnalyticsHundrethsPercent = game:GetFastInt("InfluxReportingPackageAnalyticsHundrethsPercent")

local function __sendResultToKibana(result)
    assert(FFlagNewPackageAnalyticsWithRefactor2)
    local valueTable = {}
    valueTable["responseCode"] = result.responseCode
    if result.responseBody and result.responseCode ~= 200 then
        valueTable["responseBody"] = result.responseBody
    end
    if result.responseTimeMs then
        valueTable["responseTimeMs"] = result.responseTimeMs
    end
    if result.url then
        valueTable["url"] = result.url
    end

    if result.Method then
        valueTable["requestType"] = result.Method
    end
    if result.requestType then
        valueTable["requestType"] = result.requestType
    end
  
    RbxAnalyticsService:reportInfluxSeries("StudioPackagesEndpointsStatus", valueTable, FFlagInfluxReportingPackageAnalyticsHundrethsPercent)
end

local function formatForKibana(response)
    assert(FFlagNewPackageAnalyticsWithRefactor2)
    local formattedResponse = response
    if formattedResponse.responseBody and formattedResponse.responseBody.ErrorMessage then
        formattedResponse.responseBody = formattedResponse.responseBody.ErrorMessage
        formattedResponse.responseBody.ErrorMessage = nil
    end
    if formattedResponse.requestOptions then

        if formattedResponse.requestOptions.Url then
            formattedResponse.url = formattedResponse.requestOptions.Url
            formattedResponse.requestOptions.url = nil
        end

        if formattedResponse.requestOptions.url then
            formattedResponse.url = formattedResponse.requestOptions.url
            formattedResponse.requestOptions.url = nil
        end
        if formattedResponse.requestOptions.Method then
            formattedResponse.requestType = formattedResponse.requestOptions.Method
            formattedResponse.requestOptions.Method = nil
        end
    end

    if formattedResponse.url.Url then
        formattedResponse.url = formattedResponse.url.Url
    end
    __sendResultToKibana(formattedResponse)
end

return formatForKibana