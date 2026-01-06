local Foundation = script:FindFirstAncestor("Foundation")
local Packages = Foundation.Parent

local React = require(Packages.React)
local Otter = require(Packages.Otter)
local ReactOtter = require(Packages.ReactOtter)
local ReactUtils = require(Packages.ReactUtils)

local useRefCache = ReactUtils.useRefCache
local useTokens = require(Foundation.Providers.Style.useTokens)

local Wrappers = require(Foundation.Utility.Wrappers)
local Connection = Wrappers.Connection
local Instance = Wrappers.Instance
local Signal = Wrappers.Signal

type GuiObjectRef = {
	current: GuiObject?,
}

local function useAnimatedHighlight(activeItemId: number? | string?, containerRef: GuiObjectRef, ...: any)
	local tokens = useTokens()
	local easeConfig = React.useMemo(function()
		return {
			easingStyle = tokens.Ease.StandardOut,
			duration = tokens.Time.Time_200,
		} :: Otter.EaseOptions
	end, { tokens })

	local highlightPosition, setHighlightPosition = ReactOtter.useAnimatedBinding(0)
	local highlightWidth, setHighlightWidth = ReactOtter.useAnimatedBinding(0)
	local activeItemHeight, setActiveItemHeight = React.useBinding(0)
	local itemRefs = useRefCache()

	local updateHighlight = React.useCallback(function(activeItemRef: GuiObjectRef)
		if activeItemRef.current and containerRef.current then
			local activeItemPosition = activeItemRef.current.AbsolutePosition.X
			local currentContainerPosition = containerRef.current.AbsolutePosition.X
			local positionOffset = activeItemPosition - currentContainerPosition
			local itemSize = activeItemRef.current.AbsoluteSize.X

			if highlightWidth:getValue() == 0 then
				setHighlightWidth(ReactOtter.instant(itemSize) :: any)
				setHighlightPosition(ReactOtter.instant(positionOffset) :: any)
			else
				setHighlightPosition(ReactOtter.ease(positionOffset, easeConfig))
				setHighlightWidth(ReactOtter.ease(itemSize, easeConfig))
			end

			setActiveItemHeight(activeItemRef.current.AbsoluteSize.Y)
		end
	end, { easeConfig })

	-- on activeItemChange, update connections
	React.useEffect(function()
		if activeItemId then
			local activeItemRef = itemRefs[activeItemId] :: GuiObjectRef
			local function animateHighlight()
				updateHighlight(activeItemRef)
			end
			if activeItemRef.current and containerRef.current then
				local sizeConnection = Signal.Connect(
					Instance.GetPropertyChangedSignal(activeItemRef.current, "AbsoluteSize"),
					animateHighlight
				)
				local positionConnection = Signal.Connect(
					Instance.GetPropertyChangedSignal(activeItemRef.current, "AbsolutePosition"),
					animateHighlight
				)
				local containerConnection = Signal.Connect(
					Instance.GetPropertyChangedSignal(containerRef.current, "AbsoluteSize"),
					animateHighlight
				)

				return function()
					Connection.Disconnect(sizeConnection)
					Connection.Disconnect(positionConnection)
					Connection.Disconnect(containerConnection)
				end
			end
		end

		return function() end
	end, { activeItemId })

	React.useEffect(function()
		if activeItemId then
			local activeItemRef = itemRefs[activeItemId] :: GuiObjectRef
			if activeItemRef.current and containerRef.current then
				updateHighlight(activeItemRef)
			end
		end
	end, { activeItemId, ... })

	return {
		activeItemHeight = activeItemHeight,
		itemRefs = itemRefs,
		highlightPosition = highlightPosition,
		highlightWidth = highlightWidth,
	}
end

return useAnimatedHighlight
