local ProfileQRCode = script:FindFirstAncestor("ProfileQRCode")
local Packages = ProfileQRCode.Parent
local EventStreamActionList = require(ProfileQRCode.Analytics.EventStreamActionList)
local EventNames = require(ProfileQRCode.Analytics.EventNames)
local Dash = require(Packages.Dash)

return function(name: any, additionalInfo)
	assert(EventNames.isEnumValue(name), "Invalid event name")

	local event = EventStreamActionList[name]
	return event.context.rawValue(),
		event.eventType.rawValue(),
		Dash.join(event.additionalInfo, {
			btn = if event.additionalInfo and event.additionalInfo.btn
				then event.additionalInfo.btn.rawValue()
				else nil,
		}, additionalInfo)
end
