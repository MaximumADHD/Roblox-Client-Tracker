local Foundation = script:FindFirstAncestor("Foundation")
local Packages = Foundation.Parent

local Otter = require(Packages.Otter)
local React = require(Packages.React)
local ReactOtter = require(Packages.ReactOtter)

local StateLayerMode = require(Foundation.Enums.StateLayerMode)
local Types = require(Foundation.Components.Types)
local View = require(Foundation.Components.View)
local useTokens = require(Foundation.Providers.Style.useTokens)

local INACTIVE_DOT_TRANSPARENCY = 0.78

type DotProps = {
	colorEaseConfig: Otter.EaseOptions,
	isActive: boolean,
	maxSize: number,
	onActivated: ((page: number) -> ())?,
	page: number,
	scale: number,
	scaleEaseConfig: Otter.EaseOptions,
} & Types.CommonProps & Types.SelectionProps

local function Dot(props: DotProps, ref: React.Ref<GuiObject>?)
	local tokens = useTokens()
	local dotColor = tokens.Color.System.Contrast
	local dotTransparency = if props.isActive then dotColor.Transparency or 0 else INACTIVE_DOT_TRANSPARENCY
	local cornerRadius = UDim.new(0, tokens.Radius.Circle)

	local animatedScale, setAnimatedScaleGoal = ReactOtter.useAnimatedBinding(props.scale)
	local animatedTransparency, setAnimatedTransparencyGoal = ReactOtter.useAnimatedBinding(dotTransparency)

	React.useEffect(function()
		setAnimatedScaleGoal(ReactOtter.ease(props.scale, props.scaleEaseConfig))
	end, { props.scale, props.scaleEaseConfig } :: { unknown })

	local selection = React.useMemo(
		function(): Types.Selection
			return {
				Selectable = props.Selectable,
				NextSelectionUp = props.NextSelectionUp,
				NextSelectionDown = props.NextSelectionDown,
				NextSelectionLeft = props.NextSelectionLeft,
				NextSelectionRight = props.NextSelectionRight,
			}
		end,
		{
			props.Selectable,
			props.NextSelectionUp,
			props.NextSelectionDown,
			props.NextSelectionLeft,
			props.NextSelectionRight,
		} :: { unknown }
	)

	local onActivated = React.useCallback(function()
		if props.onActivated ~= nil then
			if not props.isActive then
				props.onActivated(props.page)
			end
		end
	end, { props.isActive, props.onActivated, props.page } :: { unknown })

	local stateLayer = React.useMemo(function(): Types.StateLayer
		return {
			mode = if props.isActive then StateLayerMode.Inverse else StateLayerMode.Default,
		}
	end, { props.isActive })

	React.useEffect(function()
		setAnimatedTransparencyGoal(ReactOtter.ease(dotTransparency, props.colorEaseConfig))
	end, { dotTransparency, props.colorEaseConfig } :: { unknown })

	return React.createElement(View, {
		LayoutOrder = props.LayoutOrder,
		Size = UDim2.fromOffset(props.maxSize, props.maxSize),
		backgroundStyle = animatedTransparency:map(function(transparency)
			return {
				Color3 = dotColor.Color3,
				Transparency = transparency,
			}
		end),
		cornerRadius = cornerRadius,
		onActivated = if props.onActivated then onActivated else nil,
		selection = selection,
		stateLayer = stateLayer,
		ref = ref,
		testId = props.testId,
		scale = animatedScale,
	})
end

return React.memo(React.forwardRef(Dot))
