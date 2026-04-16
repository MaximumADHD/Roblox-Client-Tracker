local Foundation = script:FindFirstAncestor("Foundation")
local Packages = Foundation.Parent
local Dash = require(Packages.Dash)
local React = require(Packages.React)

local Avatar = require(Foundation.Components.Avatar)
local Text = require(Foundation.Components.Text)
local View = require(Foundation.Components.View)

local InputSize = require(Foundation.Enums.InputSize)
type InputSize = InputSize.InputSize
local UserPresence = require(Foundation.Enums.UserPresence)
type UserPresence = UserPresence.UserPresence

local useTokens = require(Foundation.Providers.Style.useTokens)

return {
	summary = "Avatar",
	stories = {
		{
			name = "Base",
			story = function()
				local tokens = useTokens()
				return React.createElement(
					View,
					{ tag = "col gap-medium auto-xy" },
					Dash.map(UserPresence, function(userPresence: UserPresence)
						return React.createElement(View, { tag = "col gap-large auto-xy" }, {
							Header = React.createElement(Text, {
								Text = tostring(userPresence),
								tag = "align-x-left size-0-0 auto-xy text-caption-medium content-default",
							}),
							Avatars = React.createElement(
								View,
								{ tag = "row gap-xxlarge auto-xy" },
								Dash.map({
									InputSize.XSmall :: InputSize,
									InputSize.Small,
									InputSize.Medium,
									InputSize.Large,
								}, function(size)
									return React.createElement(Avatar, {
										userId = 24813339,
										key = size,
										userPresence = userPresence,
										size = size,
										background = tokens.Color.Shift.Shift_200,
									})
								end)
							),
						})
					end)
				)
			end,
		},
	},
}
