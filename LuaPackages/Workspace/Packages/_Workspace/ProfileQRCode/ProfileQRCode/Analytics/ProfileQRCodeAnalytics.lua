local ProfileQRCode = script:FindFirstAncestor("ProfileQRCode")
local Packages = ProfileQRCode.Parent
local React = require(Packages.React)
local Dash = require(Packages.Dash)

return React.createContext({
	fireEvent = Dash.noop,
})
