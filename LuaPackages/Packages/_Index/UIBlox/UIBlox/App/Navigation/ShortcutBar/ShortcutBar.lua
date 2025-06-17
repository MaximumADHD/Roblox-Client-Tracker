local UserInputService = game:GetService("UserInputService")

local Navigation = script.Parent.Parent
local App = Navigation.Parent
local UIBlox = App.Parent
local Packages = UIBlox.Parent
local UIBloxConfig = require(UIBlox.UIBloxConfig)

local React = require(Packages.React)
local ReactOtter = require(Packages.ReactOtter)
local Foundation = require(Packages.Foundation)

local ReactUtils = require(Packages.ReactUtils)
local useDelayedActionHandler = ReactUtils.useDelayedActionHandler
local useEventConnection = ReactUtils.useEventConnection

local LuauPolyfill = require(Packages.LuauPolyfill)
local Object = LuauPolyfill.Object
local useStyle = require(UIBlox.Core.Style.useStyle)

local Types = require(script.Parent.Types)
local Shortcut = require(script.Parent.Shortcut)

local useInputType = require(UIBlox.Utility.useInputType)
local NavigationUtils = require(Navigation.Utilities)
local InputType = require(UIBlox.Enums.InputType)

local SPRING_CONFIG = {
	dampingRatio = 2,
	frequency = 3,
} :: ReactOtter.SpringOptions

local FADE_IN_THROTTLE_SECONDS = 0.1

type ShortcutBarProps = {
	-- Array of shortcut items to display
	items: { [number]: Types.ShortcutPublicProps },
	-- If passed in, the component will fade out during input and reappear after `transitionDelaySeconds` seconds
	transitionDelaySeconds: number?,
	-- Position of `ShortcutBar`
	position: UDim2?,
	-- Anchor point of `ShortcutBar`
	anchorPoint: Vector2?,
	-- Top padding in `ShortcutBar`
	spacingTop: number?,
	-- Trailing padding in `ShortcutBar`
	spacingTrailing: number?,
	-- Bottom padding in `ShortcutBar`
	spacingBottom: number?,
	-- Leading padding in `ShortcutBar`
	spacingLeading: number?,
	-- Spacing between shortcut items in `ShortcutBar`
	itemsGap: number?,
	-- Spacing between shortcut item icon and label in `ShortcutBar`
	itemIconLabelGap: number?,
	-- Leading padding before `actionText` in ShortcutBar` shortcut item
	actionTextSpacingLeading: number?,
}

local defaultProps: ShortcutBarProps = {
	items = {},
	spacingTop = 12,
	spacingTrailing = 30,
	spacingBottom = 12,
	spacingLeading = 18,
	itemsGap = 24,
	itemIconLabelGap = 6,
	actionTextSpacingLeading = 12,
}

local function ShortcutBar(providedProps: ShortcutBarProps): React.ReactElement?
	local props: ShortcutBarProps = Object.assign({}, defaultProps, providedProps)
	local style = useStyle()

	local tokens = Foundation.Hooks.useTokens()

	local tokenizedSpacingTop, tokenizedSpacingTrailing, tokenizedSpacingBottom, tokenizedSpacingLeading, tokenizedItemsGap, tokenizedItemIconLabelGap, tokenizedActionTextSpacingLeading
	if UIBloxConfig.useTokenizedShortcutBar then
		tokenizedSpacingTop = providedProps.spacingTop or tokens.Padding.Small
		tokenizedSpacingTrailing = providedProps.spacingTrailing or tokens.Padding.XLarge
		tokenizedSpacingBottom = providedProps.spacingBottom or tokens.Padding.Small
		tokenizedSpacingLeading = providedProps.spacingLeading or tokens.Padding.Medium
		tokenizedItemsGap = providedProps.itemsGap or tokens.Gap.Large
		tokenizedItemIconLabelGap = providedProps.itemIconLabelGap or tokens.Gap.XSmall
		tokenizedActionTextSpacingLeading = providedProps.actionTextSpacingLeading or tokens.Padding.Small
	end

	local children = {
		UICorner = React.createElement("UICorner", {
			CornerRadius = UDim.new(0.5, 0),
		}),
		Padding = React.createElement("UIPadding", {
			PaddingTop = UDim.new(0, tokenizedSpacingTop or props.spacingTop),
			PaddingRight = UDim.new(0, tokenizedSpacingTrailing or props.spacingTrailing),
			PaddingBottom = UDim.new(0, tokenizedSpacingBottom or props.spacingBottom),
			PaddingLeft = UDim.new(0, tokenizedSpacingLeading or props.spacingLeading),
		}),
		ListLayout = React.createElement("UIListLayout", {
			SortOrder = Enum.SortOrder.LayoutOrder,
			FillDirection = Enum.FillDirection.Horizontal,
			VerticalAlignment = Enum.VerticalAlignment.Center,
			Padding = UDim.new(0, tokenizedItemsGap or props.itemsGap),
		}),
	}

	local lastInputType: InputType.InputType? = useInputType()

	local currentTransparency, setCurrentTransparency = ReactOtter.useAnimatedBinding(0)

	-- create action handler to set component back to opaque
	local fadeInWithThrottleAndDelay = useDelayedActionHandler(
		if props.transitionDelaySeconds then props.transitionDelaySeconds else 0,
		FADE_IN_THROTTLE_SECONDS,
		function()
			setCurrentTransparency(ReactOtter.spring(0, SPRING_CONFIG))
		end
	)

	local function onInputChanged()
		if props.transitionDelaySeconds then
			setCurrentTransparency(ReactOtter.spring(1, SPRING_CONFIG))
			fadeInWithThrottleAndDelay()
		end
	end

	local items, setItems = React.useState(NavigationUtils.filterItems(props.items, lastInputType))

	useEventConnection(UserInputService.InputChanged, onInputChanged)
	React.useEffect(function()
		setItems(NavigationUtils.filterItems(props.items, lastInputType))
	end, {
		lastInputType,
		props.items,
	} :: { any })

	for index, item: Types.ShortcutInternalProps in ipairs(items) do
		children["Item" .. tostring(index)] = React.createElement(Shortcut, {
			index = index,
			iconLabelGap = tokenizedItemIconLabelGap or props.itemIconLabelGap,
			actionTextSpacingLeading = tokenizedActionTextSpacingLeading or props.actionTextSpacingLeading,
			publicProps = item,
		})
	end

	-- don't render anything if no items
	if #items > 0 then
		local backgroundToken = style.Tokens.Semantic.Color.BackgroundUi.Contrast
		return React.createElement("CanvasGroup", {
			Position = props.position,
			AnchorPoint = props.anchorPoint,
			BackgroundTransparency = 1,
			GroupTransparency = if props.transitionDelaySeconds then currentTransparency else 0,
			AutomaticSize = Enum.AutomaticSize.XY,
		}, {
			ShortcutBarComponent = React.createElement("Frame", {
				Size = UDim2.fromOffset(0, 0),
				BorderSizePixel = 0,
				BackgroundColor3 = backgroundToken.Color3,
				BackgroundTransparency = backgroundToken.Transparency,
				AutomaticSize = Enum.AutomaticSize.XY,
			}, children :: any),
		})
	else
		return nil
	end
end

return ShortcutBar
