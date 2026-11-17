local Foundation = script:FindFirstAncestor("Foundation")
local Packages = Foundation.Parent

local React = require(Packages.React)

local Constants = require(Foundation.Constants)
local Flags = require(Foundation.Utility.Flags)
local Image = require(Foundation.Components.Image)
local Types = require(Foundation.Components.Types)
local View = require(Foundation.Components.View)
local useTokens = require(Foundation.Providers.Style.useTokens)

local SHADOW_IMAGE = Constants.SHADOW_IMAGE
local SHADOW_SIZE = if Flags.FoundationPluginShadowSize then Constants.PLUGIN_SHADOW_SIZE else Constants.SHADOW_SIZE

export type PopoverShadowProps = {
	contentSize: React.Binding<UDim2>,
	position: Types.Bindable<UDim2>,
	AnchorPoint: Types.Bindable<Vector2>?,
	ZIndex: number,
	radiusTag: string,
	testId: string?,
}

local function PopoverShadow(props: PopoverShadowProps): React.ReactNode
	local tokens = useTokens()

	return if Flags.FoundationPluginShadowSize
		then React.createElement(
			View,
			{
				Size = props.contentSize:map(function(value: UDim2)
					return value + UDim2.fromOffset(SHADOW_SIZE, SHADOW_SIZE)
				end),
				Position = props.position,
				ZIndex = props.ZIndex,
				Transparency = 1,
				tag = {
					[props.radiusTag] = true,
				},
				testId = props.testId,
			},
			-- FIXME: This is identical to "shadow-overlay-100", but that style tag causes the parent frame to show
			-- a slight shadow artifact, larger than the intended shadow, when using a SHADOW_SIZE < 16px
			React.createElement("UIShadow", {
				Offset = UDim2.fromOffset(0, 2),
				Transparency = 0.92,
				BlurRadius = UDim.new(0, 4),
				Color = tokens.Color.Extended.Black.Black_100.Color3,
				ZIndex = -1,
				Spread = UDim2.fromOffset(-1, -1),
			})
		)
		else React.createElement(Image, {
			AnchorPoint = props.AnchorPoint,
			Image = SHADOW_IMAGE,
			Size = props.contentSize:map(function(value: UDim2)
				return value + UDim2.fromOffset(SHADOW_SIZE, SHADOW_SIZE)
			end),
			Position = props.position,
			ZIndex = props.ZIndex,
			slice = {
				center = Rect.new(SHADOW_SIZE, SHADOW_SIZE, SHADOW_SIZE + 1, SHADOW_SIZE + 1),
			},
			imageStyle = tokens.Color.Extended.Black.Black_20,
			testId = props.testId,
		})
end

return PopoverShadow
