local FriendsLanding = script:FindFirstAncestor("FriendsLanding")
local dependencies = require(FriendsLanding.dependencies)
local UIBlox = dependencies.UIBlox
local isUserInGame = require(FriendsLanding.Friends.isUserInGame)
local getCorrectUserPresence = require(FriendsLanding.Friends.getCorrectUserPresence)
local NotLocalizedStrings = require(FriendsLanding.Enums.NotLocalizedStrings)
local Images = UIBlox.App.ImageSet.Images

local RoduxPresence = dependencies.RoduxPresence
local EnumPresenceType = RoduxPresence.Enums.PresenceType

local PRESENCE_ICON_SIZE = UDim2.fromOffset(12, 12)

return function(
	user: any,
	presenceText: string,
	presenceIcon: string?,
	openGameDetails,
	theme: any,
	index: number,
	isLuobu: boolean?,
	font: any,
	accountDeletedText: string?
)
	local relevancyInfo = {}
	local presence = getCorrectUserPresence(user)

	relevancyInfo.icon = presenceIcon and Images[presenceIcon] or nil

	if presence == EnumPresenceType.Online then
		relevancyInfo.iconSize = PRESENCE_ICON_SIZE
		relevancyInfo.iconColor = theme.OnlineStatus.Color
		relevancyInfo.iconTransparency = theme.OnlineStatus.Transparency
	end

	-- checks for EnumPresenceType.InGame and user.lastLocation
	if user.isDeleted then
		relevancyInfo.text = accountDeletedText
	elseif isUserInGame(user) then
		relevancyInfo.text = user.lastLocation
		relevancyInfo.onActivated = openGameDetails(user.universeId, user.id, index)
	elseif user.userPresenceType == EnumPresenceType.InStudio then
		if user.lastLocation and user.lastLocation ~= "" then
			relevancyInfo.text = user.lastLocation
		else
			relevancyInfo.text = isLuobu and NotLocalizedStrings.StudioPresenceTextLuobu.rawValue()
				or NotLocalizedStrings.StudioPresenceTextGlobal.rawValue()
		end
	else
		relevancyInfo.text = presenceText
	end

	if font then
		relevancyInfo.fontStyle = isUserInGame(user) and font.CaptionHeader or font.CaptionBody
	end

	return relevancyInfo
end
