local Foundation = script:FindFirstAncestor("Foundation")
local Packages = Foundation.Parent

local Otter = require(Packages.Otter)
local React = require(Packages.React)
local ReactOtter = require(Packages.ReactOtter)
local ReactUtils = require(Packages.ReactUtils)
local useRefCache = ReactUtils.useRefCache

local Types = require(Foundation.Components.Types)
local View = require(Foundation.Components.View)
local useTokens = require(Foundation.Providers.Style.useTokens)
local withCommonProps = require(Foundation.Utility.withCommonProps)
local withDefaults = require(Foundation.Utility.withDefaults)

local Dot = require(script.Parent.Dot)
local getCarouselIndicatorDotsConfig = require(script.Parent.getCarouselIndicatorDotsConfig)
type CarouselIndicatorDot = getCarouselIndicatorDotsConfig.CarouselIndicatorDot

export type CarouselIndicatorProps = {
	page: number?,
	count: number?,
	onActivated: ((page: number) -> ())?,
} & Types.SelectionProps & Types.CommonProps

local function getDotCenter(dots: { CarouselIndicatorDot }, index: number, gap: number): number
	local contentWidth = math.max(#dots - 1, 0) * gap
	local center = 0

	for dotIndex, dot in dots do
		contentWidth += dot.size

		if dotIndex < index then
			center += dot.size + gap
		elseif dotIndex == index then
			center += dot.size / 2
		end
	end

	return center - contentWidth / 2
end

local MAX_VISIBLE_COUNT = 5

local defaultProps = {
	page = 1,
	count = 5,
	testId = "--foundation-carousel-indicator",
}

local function CarouselIndicator(carouselIndicatorProps: CarouselIndicatorProps, ref: React.Ref<GuiObject>?)
	local props = withDefaults(carouselIndicatorProps, defaultProps)
	local tokens = useTokens()
	local count: number = props.count
	local dotGap = tokens.Size.Size_100
	local maxDotSize = tokens.Size.Size_200
	local minDotSize = tokens.Size.Size_100
	local visibleDots = math.min(MAX_VISIBLE_COUNT, count)
	local dotsLayoutSize = (visibleDots * maxDotSize) + ((visibleDots - 1) * dotGap)

	local dotsConfig = React.useMemo(function()
		return getCarouselIndicatorDotsConfig(maxDotSize, minDotSize, props.page, count)
	end, { maxDotSize, minDotSize, props.page, count } :: { unknown })

	local previousDotsConfig = React.useRef(nil :: typeof(dotsConfig)?)

	local shiftOffset, setShiftOffset = ReactOtter.useAnimatedBinding(0)
	local dotRefs = useRefCache()

	local easeConfig = React.useMemo(function(): Otter.EaseOptions
		return {
			easingStyle = tokens.Ease.StandardOut,
			duration = tokens.Time.Time_200,
		}
	end, { tokens } :: { unknown })

	React.useEffect(function()
		local previous = previousDotsConfig.current
		previousDotsConfig.current = dotsConfig

		if previous and previous.count == dotsConfig.count and previous.page ~= dotsConfig.page then
			local pageDelta = dotsConfig.page - previous.page
			local previousSelectedIndex = math.clamp(previous.activeVisibleIndex + pageDelta, 1, #previous.dots)
			local previousCenter = getDotCenter(previous.dots, previousSelectedIndex, dotGap)
			local currentCenter = getDotCenter(dotsConfig.dots, dotsConfig.activeVisibleIndex, dotGap)
			local startOffset = previousCenter - currentCenter

			-- Begin at the previous active dot's screen position to avoid a visual jump before scrolling.
			setShiftOffset(ReactOtter.ease(0, {
				easingStyle = easeConfig.easingStyle,
				duration = easeConfig.duration,
				startingValue = shiftOffset:getValue() + startOffset,
			}))
		else
			setShiftOffset(ReactOtter.instant(0) :: Otter.Goal<any>)
		end
	end, { dotsConfig, dotGap, easeConfig } :: { unknown })

	local dotColorEaseConfig = React.useMemo(function()
		return {
			easingStyle = tokens.Ease.Linear,
			duration = tokens.Time.Time_100,
		} :: Otter.EaseOptions
	end, { tokens })

	local dotScaleEaseConfig = React.useMemo(function()
		return {
			easingStyle = tokens.Ease.StandardOut,
			duration = tokens.Time.Time_300,
		} :: Otter.EaseOptions
	end, { tokens })

	React.useImperativeHandle(ref, function()
		if not props.onActivated then
			return nil
		end

		local firstSelectablePage: number?

		for _, dot in dotsConfig.dots do
			if not dot.isActive then
				firstSelectablePage = dot.page
				break
			end
		end

		return if firstSelectablePage then dotRefs[firstSelectablePage].current else nil
	end, { dotRefs, dotsConfig.dots, props.onActivated })

	local children: { [string]: React.ReactNode } = {}
	for index, dot in dotsConfig.dots do
		local previousDot = dotsConfig.dots[index - 1]
		local nextDot = dotsConfig.dots[index + 1]
		local previousSelectableDot = if previousDot and previousDot.isActive
			then dotsConfig.dots[index - 2]
			else previousDot
		local nextSelectableDot = if nextDot and nextDot.isActive then dotsConfig.dots[index + 2] else nextDot

		children[`Page{dot.page}`] = React.createElement(Dot, {
			LayoutOrder = index,
			scale = dot.size / maxDotSize,
			isActive = dot.isActive,
			maxSize = maxDotSize,
			page = dot.page,
			scaleEaseConfig = dotScaleEaseConfig,
			colorEaseConfig = dotColorEaseConfig,
			onActivated = if dot.isActive then nil else props.onActivated,
			Selectable = not dot.isActive and props.onActivated ~= nil,
			NextSelectionUp = props.NextSelectionUp,
			NextSelectionDown = props.NextSelectionDown,
			NextSelectionLeft = if previousSelectableDot == nil
				then props.NextSelectionLeft
				else dotRefs[previousSelectableDot.page],
			NextSelectionRight = if nextSelectableDot == nil
				then props.NextSelectionRight
				else dotRefs[nextSelectableDot.page],
			ref = dotRefs[dot.page],
			testId = `{props.testId}--page-{dot.page}`,
		})
	end

	local dotsLayout = React.useMemo(function(): Types.ListLayout
		return {
			FillDirection = Enum.FillDirection.Horizontal,
			Padding = UDim.new(0, dotGap),
			SortOrder = Enum.SortOrder.LayoutOrder,
			VerticalAlignment = Enum.VerticalAlignment.Center,
			HorizontalAlignment = Enum.HorizontalAlignment.Center,
		}
	end, { dotGap })

	return React.createElement(
		View,
		withCommonProps(props, {
			tag = "auto-xy",
		}),
		{
			Dots = React.createElement(View, {
				tag = "auto-y",
				Size = UDim2.fromOffset(dotsLayoutSize, 0),
				layout = dotsLayout,
				Position = shiftOffset:map(function(offset)
					return UDim2.fromOffset(offset, 0)
				end),
				testId = `{props.testId}--dots`,
			}, children),
		}
	)
end

return React.memo(React.forwardRef(CarouselIndicator))
