local ProfileQRCode = script:FindFirstAncestor("ProfileQRCode")
local Packages = ProfileQRCode.Parent
local React = require(Packages.React)
local ProfileQRCodeAnalytics = require(script.Parent.ProfileQRCodeAnalytics)

local useAnalytics = function(): { fireEvent: (name: any, additionalArgs: any?) -> () }
	return React.useContext(ProfileQRCodeAnalytics)
end

return useAnalytics
