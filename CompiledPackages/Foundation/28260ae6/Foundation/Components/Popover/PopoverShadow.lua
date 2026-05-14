local Foundation = script:FindFirstAncestor("Foundation")
local Packages = Foundation.Parent

local React = require(Packages.React)

local Constants = require(Foundation.Constants)
local Image = require(Foundation.Components.Image)
local Types = require(Foundation.Components.Types)
local useTokens = require(Foundation.Providers.Style.useTokens)

local SHADOW_IMAGE = Constants.SHADOW_IMAGE
local SHADOW_SIZE = Constants.SHADOW_SIZE

export type PopoverShadowProps = {
	contentSize: React.Binding<UDim2>,
	position: Types.Bindable<UDim2>,
	AnchorPoint: Types.Bindable<Vector2>?,
	ZIndex: number,
	testId: string?,
}

local function PopoverShadow(props: PopoverShadowProps): React.ReactNode
	local tokens = useTokens()

	return React.createElement(Image, {
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
