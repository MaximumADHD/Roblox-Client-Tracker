local ProfileQRCode = script:FindFirstAncestor("ProfileQRCode")
local Packages = ProfileQRCode.Parent
local SocialLuaAnalytics = require(Packages.SocialLuaAnalytics)

local EventNames = require(script.Parent.EventNames)
local Enums = SocialLuaAnalytics.Analytics.Enums
local Contexts = Enums.Contexts
local EventTypes = Enums.EventTypes
local Dash = require(Packages.Dash)

type GenericEvent = {
	context: any,
	eventType: any,
	additionalInfo: any?,
	formatRulesForAdditionalInfo: any?,
}

local coreEvents = {
	[EventNames.QRPageLoad] = {
		context = Contexts.ProfileQRCode,
		eventType = EventTypes.PageLoad,
		formatRulesForAdditionalInfo = {
			shareLinkId = Dash.noop,
		},
	} :: GenericEvent,
}

return coreEvents
