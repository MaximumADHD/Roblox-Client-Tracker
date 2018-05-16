local CoreGui = game:GetService("CoreGui")
local NotificationService = game:GetService("NotificationService")
local HttpService = game:GetService("HttpService")
local Players = game:GetService("Players")

local Modules = CoreGui.RobloxGui.Modules

local Roact = require(Modules.Common.Roact)
local RoactRodux = require(Modules.Common.RoactRodux)

local RoactServices = require(Modules.LuaApp.RoactServices)
local RoactNetworking = require(Modules.LuaApp.Services.RoactNetworking)
local ExternalEventConnection = require(Modules.Common.RoactUtilities.ExternalEventConnection)

local SetNotificationCount = require(Modules.LuaApp.Actions.SetNotificationCount)
local RemoveUser = require(Modules.LuaApp.Actions.RemoveUser)
local ApiFetchUsersFriendCount = require(Modules.LuaApp.Thunks.ApiFetchUsersFriendCount)

local RobloxEventReceiver = Roact.Component:extend("RobloxEventReceiver")

function RobloxEventReceiver:HandleUpdateNotificationBadgeEvent(event)
	local networking = self.props.networking

	local setNotificationCount = self.props.setNotificationCount
	local removeUser = self.props.removeUser
	local apiFetchUsersFriendCount = self.props.apiFetchUsersFriendCount

	if event.namespace == "UpdateNotificationBadge" and event.detailType == "NotificationIcon" then
		local eventDetails = HttpService:JSONDecode(event.detail)
		setNotificationCount(eventDetails.badgeString)
	end

	if event.namespace == "FriendshipNotifications" then
		local eventDetails = HttpService:JSONDecode(event.detail)
		if event.detailType == "FriendshipDestroyed" then
			local removedFriendUserId = tostring(Players.LocalPlayer.UserId) == tostring(eventDetails.EventArgs.UserId1)
				and tostring(eventDetails.EventArgs.UserId2)

			apiFetchUsersFriendCount(networking):andThen(function()
				removeUser(removedFriendUserId)
			end)
		end
	end
end

function RobloxEventReceiver:init()
	self.onRobloxEventReceived = function(event)
		self:HandleUpdateNotificationBadgeEvent(event)
	end
end

function RobloxEventReceiver:render()
	return Roact.createElement(ExternalEventConnection, {
		event = NotificationService.RobloxEventReceived,
		callback = self.onRobloxEventReceived,
	})
end

RobloxEventReceiver = RoactRodux.connect(function(store)
	return {
		setNotificationCount = function(...)
			return store:Dispatch(SetNotificationCount(...))
		end,
		removeUser = function(...)
			return store:Dispatch(RemoveUser(...))
		end,
		apiFetchUsersFriendCount = function(...)
			return store:Dispatch(ApiFetchUsersFriendCount(...))
		end,
	}
end)(RobloxEventReceiver)

RobloxEventReceiver = RoactServices.connect({
	networking = RoactNetworking,
})(RobloxEventReceiver)

return RobloxEventReceiver