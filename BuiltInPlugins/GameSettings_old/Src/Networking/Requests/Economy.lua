--[[
	Request for economy related requests
]]

local HttpService = game:GetService("HttpService")

local Plugin = script.Parent.Parent.Parent.Parent
local Promise = require(Plugin.Promise)
local Http = require(Plugin.Src.Networking.Http)
local Analytics = require(Plugin.Src.Util.Analytics)

local TAX_RATE_REQUEST_URL = "v1/resale-tax-rate"
local TAX_RATE_REQUEST_TYPE = "economy"

local Economy = {}

function Economy.GetTaxRate()
    local requestInfo = {
        Url = Http.BuildRobloxUrl(TAX_RATE_REQUEST_TYPE, TAX_RATE_REQUEST_URL),
        Method = "GET",
    }

    return Http.Request(requestInfo):
    andThen(function(response)
        local body = HttpService:JSONDecode(response)

        if not body then
            return Promise.reject()
        end

        return {
            taxRate = body.taxRate,
            minimumFee = body.minimumFee,
        }

    end):
    catch(function(err)
        warn("Game Settings: Could not fetch tax rate.")
        Analytics.OnLoadError("GetTaxRate")
        return Promise.reject()
    end)
end

return Economy