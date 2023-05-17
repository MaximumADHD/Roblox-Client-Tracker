local FriendsLanding = script:FindFirstAncestor("FriendsLanding")
local dependencies = require(FriendsLanding.dependencies)
local Roact = dependencies.Roact
local llama = dependencies.llama
local ProfileQRCode = dependencies.ProfileQRCode
local SocialLuaAnalytics = dependencies.SocialLuaAnalytics
local Contexts = SocialLuaAnalytics.Analytics.Enums.Contexts
local FriendsLandingContext = require(FriendsLanding.FriendsLandingContext)

return function(props)
	local context = FriendsLandingContext.useContext()

	return Roact.createElement(
		ProfileQRCode.ProfileQRCodeEntryPoint,
		llama.Dictionary.join(props, {
			onClose = function()
				props.navigation.goBack()
			end,
			source = Contexts.AddFriends.rawValue(),
			robloxEventReceiver = context.robloxEventReceiver,
		})
	)
end
