local CorePackages = game:GetService("CorePackages")
local React = require(CorePackages.Packages.React)
local Context = require(script.Parent.AnalyticsContext)

local useAnalytics = function(): { fireEvent: (name: string, additionalArgs: any?) -> () }
	return React.useContext(Context)
end

return useAnalytics
