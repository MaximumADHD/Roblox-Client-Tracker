--!strict
local EventNames = require(script.Parent.EventNames)
local Enums = require(script.Parent.Parent.Enums)
local Contexts = Enums.Contexts
local EventTypes = Enums.EventTypes
local SubPages = Enums.SubPages
local Pages = Enums.Pages
local BtnValues = require(script.Parent.BtnValues)

local formatUid = function(uid: string | number)
	return tostring(uid)
end

return {
	[EventNames.HomePage_Carousel_LuaProfile] = {
		context = Contexts.HomePage,
		eventType = EventTypes.ButtonClick,
		additionalInfo = {
			btn = BtnValues.PlayerProfile,
			subpage = SubPages.PeekView,
			page = Pages.PlayerProfile,
		},
		formatRulesForAdditionalInfo = {
			uid = formatUid,
		},
	},
	[EventNames.HomePage_Carousel_FriendsLanding] = {
		context = Contexts.HomePage,
		eventType = EventTypes.ButtonClick,
		additionalInfo = {
			btn = BtnValues.FriendsLanding,
		},
		formatRulesForAdditionalInfo = {
			uid = formatUid,
		},
	},
	[EventNames.MorePage_FriendsLanding] = {
		context = Contexts.HomePage,
		eventType = EventTypes.ButtonClick,
		additionalInfo = {
			btn = BtnValues.FriendsLanding,
		},
		formatRulesForAdditionalInfo = {
			uid = formatUid,
		},
	},
}
