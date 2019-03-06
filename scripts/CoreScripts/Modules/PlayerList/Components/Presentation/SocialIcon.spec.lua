return function()
	local CorePackages = game:GetService("CorePackages")
	local Roact = require(CorePackages.Roact)

	local Components = script.Parent.Parent
	local Connection = Components.Connection
	local LayoutValues = require(Connection.LayoutValues)
	local LayoutValuesProvider = LayoutValues.Provider

	local PlayerList = Components.Parent
	local CreateLayoutValues = require(PlayerList.CreateLayoutValues)

	local SocialIcon = require(script.Parent.SocialIcon)

	it("should create and destroy without errors", function()
		local element = Roact.createElement(LayoutValuesProvider, {
			layoutValues = CreateLayoutValues(false, false)
		}, {
			SocialIcon = Roact.createElement(SocialIcon, {
				playerRelationship = {
					isBlocked = false,
					friendStatus = Enum.FriendStatus.Unknown,
					isFollowing = true,
					isFollower = false,
				},
			})
		})
		local instance = Roact.mount(element)
		Roact.unmount(instance)
	end)
end