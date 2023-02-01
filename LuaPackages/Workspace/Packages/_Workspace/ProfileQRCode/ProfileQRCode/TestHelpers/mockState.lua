local ProfileQRCode = script:FindFirstAncestor("ProfileQRCode")
local Packages = ProfileQRCode.Parent
local Constants = require(ProfileQRCode.Common.Constants)
local Dash = require(Packages.Dash)

return function(mergeState)
	return Dash.join({
		LocalUserId = "123",
		ScreenSize = Vector2.new(1000, 500),
		[Constants.RODUX_KEY] = {
			Users = {
				byUserId = {
					["156"] = {
						displayName = "bigMalc",
						username = "malcolmtucker",
					},
				},
			},
			NetworkStatus = {},
			ShareUrl = {
				shortUrl = "www.bbc.co.uk",
				linkId = "123456",
			},
		},
	}, mergeState)
end
