local CorePackages = game:GetService("CorePackages")
local React = require(CorePackages.Packages.React)
local HttpRequest = require(CorePackages.Packages.HttpRequest)
local FFlagLuaAppDefaultHttpRetry = 
	require(CorePackages.Workspace.Packages.SharedFlags).FFlagLuaAppDefaultHttpRetry
local httpRequest = HttpRequest.config({
    requestFunction = function(url, requestMethod, requestOptions)
        return HttpRequest.requestFunctions.HttpRbxApi(url, requestMethod, requestOptions)
    end,
    maxRetryCount = if FFlagLuaAppDefaultHttpRetry then game:DefineFastInt("WithReferralRewardTooltipInfoHttpRetryCount", 4) else nil
})
local Url = require(CorePackages.Workspace.Packages.Http).Url
local useLocalization = require(CorePackages.Workspace.Packages.Localization).Hooks.useLocalization
local Cryo = require(CorePackages.Packages.Cryo)

local ROBLOX_MENU_REFERRAL_REWARD_TOOLTIP_DELAY = 4
local ROBLOX_MENU_REFERRAL_REWARD_TOOLTIP = "CoreScripts.TopBar.RobloxMenuReferralRewardTooltip"

function GetReferralRewardTooltipInfo()
	local queryString = Url:makeQueryString({
		UniverseId = game.GameId,
	})
	local url = string.format("%sreferral-reward-metadata/v1/get-reward-metadata?%s", Url.APIS_URL, queryString)
	return httpRequest(url, "GET")
end

function withReferralRewardTooltipInfo(component)
	return function(props)
		local newProps = Cryo.Dictionary.join(props, {
			referralRewardTooltipText = "",
		})
		local referralRewardName, setReferralRewardName = React.useState("")
		React.useEffect(function()
			GetReferralRewardTooltipInfo():andThen(function(data)
				if data and data.responseBody and data.responseBody.name then
					setReferralRewardName(data.responseBody.name)
					task.delay(ROBLOX_MENU_REFERRAL_REWARD_TOOLTIP_DELAY, function()
						setReferralRewardName("")
					end)
				end
			end):catch(function(error)
				warn(error)
			end)
		end, {})
		local localization = useLocalization({
			referralRewardTooltipText = {
				ROBLOX_MENU_REFERRAL_REWARD_TOOLTIP,
				referralRewardName = referralRewardName
			}
		})
		if referralRewardName ~= "" then
			newProps = Cryo.Dictionary.join(newProps, {
				referralRewardTooltipText = localization.referralRewardTooltipText,
			})
		end
		return React.createElement(component, newProps)
	end
end

return withReferralRewardTooltipInfo
