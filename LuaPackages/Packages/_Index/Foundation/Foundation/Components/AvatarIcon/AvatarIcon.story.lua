local Foundation = script:FindFirstAncestor("Foundation")
local Packages = Foundation.Parent
local Dash = require(Packages.Dash)
local React = require(Packages.React)

local AvatarIcon = require(Foundation.Components.AvatarIcon)
local AvatarIconSize = require(Foundation.Enums.AvatarIconSize)
local Text = require(Foundation.Components.Text)
local View = require(Foundation.Components.View)
local useTokens = require(Foundation.Providers.Style.useTokens)
local getTokens = require(Foundation.Providers.Style.Tokens).getTokens

local orderedSizes: { AvatarIconSize.AvatarIconSize } = {
	AvatarIconSize.XSmall,
	AvatarIconSize.Small,
	AvatarIconSize.Medium,
	AvatarIconSize.Large,
	AvatarIconSize.XLarge,
}

type GroupProps = {
	caption: string,
	contentTag: string,
	LayoutOrder: number?,
	children: React.ReactNode?,
}

local function Group(props: GroupProps)
	return React.createElement(View, {
		tag = "col gap-medium auto-xy",
		LayoutOrder = props.LayoutOrder,
	}, {
		Caption = React.createElement(Text, {
			Text = props.caption,
			tag = "auto-xy text-body-small content-default",
			LayoutOrder = 1,
		}),
		Content = React.createElement(View, {
			tag = props.contentTag,
			LayoutOrder = 2,
		}, props.children),
	})
end

local tokens = getTokens("Dark")
local surfaceKeys = Dash.joinArrays({ "None" }, Dash.keys(tokens.Color.Surface))

local function useSurfaceColors()
	local tokens = useTokens()
	return Dash.join({ None = nil }, tokens.Color.Surface)
end

return {
	summary = "AvatarIcon",
	stories = {
		{
			name = "Playground",
			story = function(props: any): React.ReactNode
				local surfaces = useSurfaceColors()
				return React.createElement(AvatarIcon, {
					userId = props.controls.userId,
					size = props.controls.size,
					backplateStyle = surfaces[props.controls.backplate],
					backgroundStyle = surfaces[props.controls.background],
				})
			end,
		},
		{
			name = "Sizes",
			story = function(): React.ReactNode
				return React.createElement(
					View,
					{ tag = "row align-y-center gap-xlarge auto-xy" },
					Dash.map(orderedSizes, function(size)
						return React.createElement(Group, {
							caption = size,
							contentTag = "auto-xy",
						}, {
							AvatarIcon = React.createElement(AvatarIcon, {
								userId = 24813339,
								size = size,
							}),
						})
					end)
				)
			end,
		},
	},
	controls = {
		userId = 24813339,
		size = Dash.values(AvatarIconSize),
		backplate = surfaceKeys,
		background = surfaceKeys,
	},
}
