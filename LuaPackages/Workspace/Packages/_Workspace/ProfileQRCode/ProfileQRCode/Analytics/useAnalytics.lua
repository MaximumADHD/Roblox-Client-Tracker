local ProfileQRCode = script:FindFirstAncestor("ProfileQRCode")
local Packages = ProfileQRCode.Parent
local React = require(Packages.React)
local ProfileQRCodeAnalytics = require(script.Parent.ProfileQRCodeAnalytics)

export type Analytics = { fireEvent: (name: any, additionalArgs: any?) -> () }

local useAnalytics = function(): Analytics
	return React.useContext(ProfileQRCodeAnalytics)
end

return useAnalytics
