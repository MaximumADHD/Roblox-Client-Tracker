local ContactImporter = script.Parent.Parent
local dependencies = require(ContactImporter.dependencies)
local React = dependencies.React
local Context = require(script.Parent.ContactImporterAnalyticsContext)

local useAnalytics = function(): { fireAnalyticsEvent: (name: any, additionalArgs: any?) -> () }
	return React.useContext(Context)
end

return useAnalytics
