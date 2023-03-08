local DiscoverabilityModal = script:FindFirstAncestor("DiscoverabilityModal")
local Packages = DiscoverabilityModal.Parent
local getPlatformTarget = require(Packages.Analytics).getPlatformTarget

return function(eventIngestService: any)
	return function(_self, ctx: string, eventName: string, additionalInfo: { [string]: any }?)
		eventIngestService:setRBXEventStream(getPlatformTarget(), ctx, eventName, additionalInfo)
	end
end
