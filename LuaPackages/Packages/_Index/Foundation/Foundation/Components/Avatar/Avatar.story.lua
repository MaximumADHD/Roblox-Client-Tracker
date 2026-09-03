local Foundation = script:FindFirstAncestor("Foundation")
local Packages = Foundation.Parent
local Dash = require(Packages.Dash)
local React = require(Packages.React)

local Avatar = require(Foundation.Components.Avatar)
local Flags = require(Foundation.Utility.Flags)
local Text = require(Foundation.Components.Text)
local View = require(Foundation.Components.View)

local AvatarSize = require(Foundation.Enums.AvatarSize)
type AvatarSize = AvatarSize.AvatarSize
local UserPresence = require(Foundation.Enums.UserPresence)
type UserPresence = UserPresence.UserPresence

local useTokens = require(Foundation.Providers.Style.useTokens)

local sizes: { AvatarSize } = if Flags.FoundationAvatarBeta
	then {
		AvatarSize.Pictogram,
		AvatarSize.XLarge,
		AvatarSize.Large,
		AvatarSize.Medium,
		AvatarSize.Small,
	}
	else {
		AvatarSize.XSmall,
		AvatarSize.Small,
		AvatarSize.Medium,
		AvatarSize.Large,
	}

local function useSurfaceColors()
	local tokens = useTokens()
	return {
		None = nil,
		Surface_0 = tokens.Color.Surface.Surface_0,
		Surface_100 = tokens.Color.Surface.Surface_100,
		Surface_200 = tokens.Color.Surface.Surface_200,
		Surface_300 = tokens.Color.Surface.Surface_300,
	}
end
local surfaceColorKeys = { "None", "Surface_0", "Surface_100", "Surface_200", "Surface_300" }

local function PlaygroundStory(props: {
	controls: {
		userId: number,
		size: AvatarSize,
		userPresence: UserPresence,
		background: string,
		backplate: string,
		includeProfileFrame: boolean,
	},
})
	local surfaceColors = useSurfaceColors()
	return React.createElement(Avatar, {
		userId = props.controls.userId,
		size = props.controls.size,
		userPresence = props.controls.userPresence,
		backgroundStyle = surfaceColors[props.controls.background],
		backplateStyle = surfaceColors[props.controls.backplate],
		includeProfileFrame = props.controls.includeProfileFrame,
	})
end

local function PresenceAndSizesStory()
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
					Dash.map(sizes, function(size: AvatarSize)
						return React.createElement(Avatar, {
							userId = 24813339,
							key = size,
							userPresence = userPresence,
							size = size,
							backgroundStyle = tokens.Color.Shift.Shift_200,
						})
					end)
				),
			})
		end)
	)
end

return {
	summary = "Avatar",
	stories = {
		{
			name = "Playground",
			story = PlaygroundStory :: unknown,
		},
		{
			name = "Presence and sizes",
			summary = "Every user presence rendered across the supported sizes",
			story = PresenceAndSizesStory,
		},
	},
	controls = {
		userId = 24813339,
		size = Dash.values(AvatarSize),
		userPresence = Dash.values(UserPresence),
		background = surfaceColorKeys,
		backplate = surfaceColorKeys,
		includeProfileFrame = false,
	},
}
