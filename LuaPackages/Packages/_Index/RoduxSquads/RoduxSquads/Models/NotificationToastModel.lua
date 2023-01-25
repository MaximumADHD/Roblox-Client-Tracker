local RoduxSquad = script:FindFirstAncestor("RoduxSquads")
local Packages = RoduxSquad.Parent

local t = require(Packages.t)

local NotificationToastModel = {}

function NotificationToastModel.new(notificationToast)
	assert(NotificationToastModel.isValid(notificationToast))

	NotificationToastModel.__index = NotificationToastModel

	local self = notificationToast

	setmetatable(self, NotificationToastModel)

	return self
end

function NotificationToastModel.mock(mergeTable)
	mergeTable = mergeTable or {}

	local self = NotificationToastModel.new({
		notificationId = mergeTable.notificationId or 1665988271,
		title = mergeTable.title or "This is a title.",
		subtext = mergeTable.subtext or "5m",
		description = mergeTable.description or "This is a description.",
	})

	return self
end

function NotificationToastModel.format(notificationToastData)
	local self = NotificationToastModel.new({
		notificationId = notificationToastData.notificationId,
		title = notificationToastData.title,
		subtext = notificationToastData.subtext,
		description = notificationToastData.description,
	})

	return self
end

NotificationToastModel.isValid = t.strictInterface({
	notificationId = t.number,
	title = t.string,
	subtext = t.optional(t.string),
	description = t.optional(t.string),
})

return NotificationToastModel
