local AddFriends = script:FindFirstAncestor("FriendsLanding").AddFriends
local dependencies = require(AddFriends.dependencies)
local Roact = dependencies.Roact

local AddFriendsContactImporterBanner = require(script.Parent)

return function()
	return Roact.createElement("Frame", {
		Size = UDim2.new(0, 200, 0, 300),
		BackgroundTransparency = 1,
	}, {
		AddFriendsContactImporterBanner = Roact.createElement(AddFriendsContactImporterBanner, {
			bannerText = "Connect to your friends!",
			buttonText = "Connect",
		}),
	})
end
