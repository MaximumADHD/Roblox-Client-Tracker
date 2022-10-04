--[[
	Format InspectAndBuy analytics to be sent through
	the same event sending utility as the rest of the
	in game menu uses
]]

local Players = game:GetService("Players")
local CorePackages = game:GetService("CorePackages")
local Cryo = require(CorePackages.Cryo)

local InGameMenu = script.Parent.Parent
local SendAnalytics = require(InGameMenu.Utility.SendAnalytics)

local CONTEXT = "escapeMenu"
local FEATURE = "inspectAndBuy"

return function(eventName, inspecteeUid, eventTable)
	local requiredFields = {
		uid = tostring((Players.LocalPlayer :: Player).UserId),
		inspecteeUid = inspecteeUid,
		feature = FEATURE,
	}

	local fields = requiredFields
	if eventTable then
		fields = Cryo.Dictionary.join(requiredFields, eventTable)
	end
	SendAnalytics(CONTEXT, eventName, fields)
end
