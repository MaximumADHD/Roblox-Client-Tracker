local FriendsLanding = script:FindFirstAncestor("FriendsLanding")
local dependencies = require(FriendsLanding.dependencies)
local Roact = dependencies.Roact
local llama = dependencies.llama
local ProfileQRCode = dependencies.ProfileQRCode
local SocialLuaAnalytics = dependencies.SocialLuaAnalytics
local Contexts = SocialLuaAnalytics.Analytics.Enums.Contexts
local getFFlagAddFriendsQRCodeAnalytics = dependencies.getFFlagAddFriendsQRCodeAnalytics

return function(props)
	return Roact.createElement(
		ProfileQRCode.ProfileQRCodeEntryPoint,
		llama.Dictionary.join(props, {
			onClose = function()
				props.navigation.goBack()
			end,
			source = if getFFlagAddFriendsQRCodeAnalytics() then Contexts.AddFriends.rawValue() else nil,
		})
	)
end
