local ContactImporter = script:FindFirstAncestor("ContactImporter")
local Packages = ContactImporter.Parent
local getPlatformTarget = require(Packages.Analytics).getPlatformTarget

return function(eventIngestService: any)
	return function(_self, ctx: string, eventName: string, additionalInfo: { [string]: any }?)
		eventIngestService:setRBXEventStream(getPlatformTarget(), ctx, eventName, additionalInfo)
	end
end
