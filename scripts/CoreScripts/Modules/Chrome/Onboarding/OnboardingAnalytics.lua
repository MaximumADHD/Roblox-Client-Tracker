local CorePackages = game:GetService("CorePackages")
local AnalyticsService = game:GetService("RbxAnalyticsService")

local Cryo = require(CorePackages.Cryo)

local FTUX_TOOLTIP_DISPLAYED = "ftuxTooltipDisplayed"
local FTUX_TOOLTIP_INTERACTED = "ftuxTooltipInteracted"
local FTUX_TOOLTIP_DISMISSED = "ftuxTooltipDismissed"
local FTUX_TOOLTIP_AUTO_DISMISSED = "ftuxTooltipAutoDismissed"

local displayEvent = function(params: { [string]: any })
	local target = "client"
	local context = "ftuxTooltipClientEvent"
	AnalyticsService:SendEventDeferred(
		target,
		context,
		FTUX_TOOLTIP_DISPLAYED,
		Cryo.Dictionary.join({
			action_type = "displayed",
		}, params)
	)
end

local interactEvent = function(params: { [string]: any })
	local target = "client"
	local context = "ftuxTooltipClientEvent"
	AnalyticsService:SendEventDeferred(
		target,
		context,
		FTUX_TOOLTIP_INTERACTED,
		Cryo.Dictionary.join({
			action_type = "clicked",
		}, params)
	)
end

local dismissEvent = function(params: { [string]: any })
	local target = "client"
	local context = "ftuxTooltipClientEvent"
	AnalyticsService:SendEventDeferred(
		target,
		context,
		FTUX_TOOLTIP_DISMISSED,
		Cryo.Dictionary.join({
			action_type = "dismissed",
		}, params)
	)
end

local autoDismissEvent = function(params: { [string]: any })
	local target = "client"
	local context = "ftuxTooltipClientEvent"
	AnalyticsService:SendEventDeferred(
		target,
		context,
		FTUX_TOOLTIP_AUTO_DISMISSED,
		Cryo.Dictionary.join({
			action_type = "ignored",
		}, params)
	)
end

return {
	displayEvent = displayEvent,
	interactEvent = interactEvent,
	dismissEvent = dismissEvent,
	autoDismissEvent = autoDismissEvent,
}
