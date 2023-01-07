local FriendsLanding = script:FindFirstAncestor("FriendsLanding")
local Packages = FriendsLanding.Parent
local Roact = require(Packages.Roact)

local FriendsLandingContext = Roact.createContext(nil)

return FriendsLandingContext
