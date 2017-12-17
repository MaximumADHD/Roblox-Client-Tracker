local Players = game:GetService("Players")
local CoreGui = game:GetService("CoreGui")

local LuaApp = CoreGui.RobloxGui.Modules.LuaApp
local LuaChat = script.Parent.Parent
local MockId = require(LuaChat.MockId)
local StringsLocale = require(LuaApp.StringsLocale)

local User = {}

User.PresenceType = {
	OFFLINE = "OFFLINE",
	ONLINE = "ONLINE",
	IN_GAME = "IN_GAME",
	IN_STUDIO = "IN_STUDIO",
}

function User.new()
	local self = {}

	return self
end

function User.mock()
	local self = User.new()

	self.id = MockId()
	self.name = "USER NAME"
	self.presence = User.PresenceType.OFFLINE
	self.lastLocation = nil
	self.isFriend = false

	return self
end

function User.fromData(id, name, isFriend)
	local self = User.new()

	self.id = tostring(id)
	self.name = name
	self.presence = id == Players.LocalPlayer.UserId and User.PresenceType.ONLINE or User.PresenceType.OFFLINE
	self.lastLocation = nil
	self.isFriend = isFriend

	return self
end

function User.userPresenceToText(localization, user)
	local presence = user.presence
	local lastLocation = user.lastLocation

	if not presence then
		return ''
	end

	if presence == User.PresenceType.OFFLINE then
		return localization:Format(StringsLocale.Keys.OFFLINE)
	elseif presence == User.PresenceType.ONLINE then
		return localization:Format(StringsLocale.Keys.ONLINE)
	elseif presence == User.PresenceType.IN_GAME then
		if lastLocation ~= nil then
			return lastLocation
		else
			return localization:Format(StringsLocale.Keys.ONLINE)
		end
	elseif presence == User.PresenceType.IN_STUDIO then
		if lastLocation ~= nil then
			return lastLocation
		else
			return localization:Format(StringsLocale.Keys.ONLINE)
		end
	end
end

return User