-- ROBLOX upstream: https://github.com/GetStream/react-native-bidirectional-infinite-scroll/blob/636f84511d63a99ac4402e4d6436da89a1b261cb/src/BidirectionalFlatList.tsx
local srcWorkspace = script.Parent.Parent
local Packages = srcWorkspace.Parent
local LuauPolyfill = require(Packages.LuauPolyfill)
local Object = LuauPolyfill.Object
type Object = LuauPolyfill.Object
local Promise = require(Packages.Promise)
type Promise<T> = LuauPolyfill.Promise<T>

type void = any --[[ ROBLOX FIXME: adding `void` type alias to make it easier to use Luau unknown equivalent when supported ]]

local exports = {}

local React = require(Packages.React)
type React_ComponentType<P = {}> = React.ComponentType<P>
type React_ReactElement<P = Object, T = any> = React.ReactElement<P, T>
type React_Ref<T> = React.Ref<T>
-- ROBLOX deviation: type not available
type MutableRefObject<T> = Object

local useRef = React.useRef
local useState = React.useState

-- local react_nativeModule = require(Packages["react-native"])
-- local ActivityIndicator = react_nativeModule.ActivityIndicator
-- local ScrollViewProps = react_nativeModule.ScrollViewProps
-- local StyleSheet = require(srcWorkspace.jsUtils.stylesheet)
local View = require(srcWorkspace.Components.View.View)
local FlatList = require(script.Parent.FlatList)
type FlatListProps<T> = FlatList.Props<T>
type FlatListType<T = any> = FlatList.FlatList<T>
-- local styles = StyleSheet.create({ indicatorContainer = { paddingVertical = 5, width = "100%" } })

-- ROBLOX deviation: Can't omit single prop. originally Omit<FlatListProps<T>, "maintainVisibleContentPosition">
export type Props<T> = FlatListProps<T> & {
	--[[*
   		* Called once when the scroll position gets close to end of list. This must return a promise.
   		* You can `onEndReachedThreshold` as distance from end of list, when this function should be called.
   	]]
	onEndReached: () -> Promise<void>,
	--[[*
   		* Called once when the scroll position gets close to begining of list. This must return a promise.
   		* You can `onStartReachedThreshold` as distance from beginning of list, when this function should be called.
   	]]
	onStartReached: () -> Promise<void>,
	--[[* Color for inline loading indicator ]]
	activityIndicatorColor: string?,
	--[[*
   		* Enable autoScrollToTop.
   		* In chat type applications, you want to auto scroll to bottom, when new message comes it.
   	]]
	enableAutoscrollToTop: boolean?,
	--[[*
   		* If `enableAutoscrollToTop` is true, the scroll threshold below which auto scrolling should occur.
   	]]
	autoscrollToTopThreshold: number?,
	--[[* Scroll distance from beginning of list, when onStartReached should be called. ]]
	onStartReachedThreshold: number?,
	--[[*
   		* Scroll distance from end of list, when onStartReached should be called.
   		* Please note that this is different from onEndReachedThreshold of FlatList from react-native.
   	]]
	onEndReachedThreshold: number?,
	--[[* If true, inline loading indicators will be shown. Default - true ]]
	showDefaultLoadingIndicators: boolean?,
	--[[* Custom UI component for header inline loading indicator ]]
	HeaderLoadingIndicator: React_ComponentType?,
	--[[* Custom UI component for footer inline loading indicator ]]
	FooterLoadingIndicator: React_ComponentType?,
	--[[* Custom UI component for header indicator of FlatList. Only used when `showDefaultLoadingIndicators` is false ]]
	ListHeaderComponent: React_ComponentType?,
	--[[* Custom UI component for footer indicator of FlatList. Only used when `showDefaultLoadingIndicators` is false ]]
	ListFooterComponent: React_ComponentType?,
	--[[* Scrolling away from the onStartReachedThreshold and back will allow onStartReached to fire again ]]
	enableRetryOnStartReached: boolean?,
	--[[* Scrolling away from the onEndReachedThreshold and back will allow onEndReached to fire again ]]
	enableRetryOnEndReached: boolean?,
}

-- ROBLOX deviation: utility fn
local function _getLength(horizontal: boolean?)
	return function(prop: Vector2): number
		return if horizontal then prop.X else prop.Y
	end
end

--[[*
 * Note:
 * - `onEndReached` and `onStartReached` must return a promise.
 * - `onEndReached` and `onStartReached` only get called once, per content length.
 * - maintainVisibleContentPosition is fixed, and can't be modified through props.
 * - doesn't accept `ListFooterComponent` via prop, since it is occupied by `FooterLoadingIndicator`.
 *    Set `showDefaultLoadingIndicators` to use `ListFooterComponent`.
 * - doesn't accept `ListHeaderComponent` via prop, since it is occupied by `HeaderLoadingIndicator`
 *    Set `showDefaultLoadingIndicators` to use `ListHeaderComponent`.
 ]]
local BidirectionalFlatList = (
		React.forwardRef(function<T>(props: Props<T>, ref: React_Ref<any>)
			local function promiseFn()
				return Promise.resolve()
			end
			local _activityIndicatorColor, autoscrollToTopThreshold, data, enableAutoscrollToTop, FooterLoadingIndicator, HeaderLoadingIndicator, ListHeaderComponent, ListFooterComponent, onEndReached, onEndReachedThreshold, onScroll, onStartReached, onStartReachedThreshold, showDefaultLoadingIndicators =
				if props.activityIndicatorColor == nil then "black" else props.activityIndicatorColor,
				if props.autoscrollToTopThreshold == nil then 100 else props.autoscrollToTopThreshold,
				props.data,
				props.enableAutoscrollToTop,
				props.FooterLoadingIndicator,
				props.HeaderLoadingIndicator,
				props.ListHeaderComponent,
				props.ListFooterComponent,
				(if props.onEndReached == nil then promiseFn else props.onEndReached) :: any,
				if props.onEndReachedThreshold == nil then 10 else props.onEndReachedThreshold,
				props.onScroll,
				(if props.onStartReached == nil then promiseFn else props.onStartReached) :: any,
				if props.onStartReachedThreshold == nil then 10 else props.onStartReachedThreshold,
				if props.showDefaultLoadingIndicators == nil then true else props.showDefaultLoadingIndicators

			local enableRetryOnStartReached = if props.enableRetryOnStartReached == nil
				then false
				else props.enableRetryOnStartReached
			local enableRetryOnEndReached = if props.enableRetryOnEndReached == nil
				then false
				else props.enableRetryOnEndReached

			local onStartReachedInProgress, setOnStartReachedInProgress = useState(false)
			local onEndReachedInProgress, setOnEndReachedInProgress = useState(false)
			local scrollCount, setScrollCount = useState(0)
			local onStartReachedTracker = useRef({}) :: MutableRefObject<{}>
			local onEndReachedTracker = useRef({}) :: MutableRefObject<{}>
			local onStartReachedInPromise = useRef(nil)
			local onEndReachedInPromise = useRef(nil)

			local function maybeCallOnStartReached()
				-- If onStartReached has already been called for given data length, then ignore.
				if data and #data > 0 and onStartReachedTracker.current[#data] then
					return
				end

				-- ROBLOX deviation START: when inverted there might be some unwanted scroll events that will trigger onStartReached events
				local hasScrolled = if props.inverted then scrollCount >= 3 else scrollCount >= 1
				if not hasScrolled then
					return
				end

				if data and #data > 0 and hasScrolled then
					onStartReachedTracker.current[#data] = true
				end
				-- ROBLOX deviation END

				setOnStartReachedInProgress(true)
				local function p()
					return Promise.new(function(resolve)
						onStartReachedInPromise.current = nil
						setOnStartReachedInProgress(false)
						resolve()
					end)
				end

				if onEndReachedInPromise.current then
					onEndReachedInPromise.current:andThen(function()
						onStartReachedInPromise.current = onStartReached():andThen(p)
					end)
				else
					onStartReachedInPromise.current = onStartReached():andThen(p)
				end
			end

			local function maybeCallOnEndReached()
				-- If onEndReached has already been called for given data length, then ignore.
				if data and #data > 0 and onEndReachedTracker.current[#data] then
					return
				end

				-- ROBLOX deviation START: when inverted there might be some unwanted scroll events that will trigger onStartReached events
				local hasScrolled = if props.inverted then scrollCount >= 3 else scrollCount >= 1
				if not hasScrolled then
					return
				end

				if data and #data > 0 and hasScrolled then
					onEndReachedTracker.current[#data] = true
				end
				-- ROBLOX deviation END

				setOnEndReachedInProgress(true)
				local function p()
					return Promise.new(function(resolve)
						onEndReachedInPromise.current = nil
						setOnEndReachedInProgress(false)
						resolve()
					end)
				end

				if onStartReachedInPromise.current then
					onStartReachedInPromise.current:andThen(function()
						onEndReachedInPromise.current = onEndReached():andThen(p)
					end)
				else
					onEndReachedInPromise.current = onEndReached():andThen(p)
				end
			end

			-- ROBLOX deviation: inline type
			local function handleScroll(rbx: ScrollingFrame): ()
				-- ROBLOX deviation: track user interaction
				setScrollCount(function(lastCount)
					return lastCount + 1
				end)
				-- Call the parent onScroll handler, if provided.
				if onScroll then
					onScroll(rbx)
				end

				--[[
					ROBLOX deviation START: calulate offset and other event values
					Originally:
					local offset = event.nativeEvent.contentOffset.y
					local visibleLength = event.nativeEvent.layoutMeasurement.height
					local contentLength = event.nativeEvent.contentSize.height
				]]
				local content = rbx:GetChildren()[1] :: Frame
				local getLength = _getLength(props.horizontal)
				local visibleLength = getLength(rbx.AbsoluteSize)
				local contentLength = getLength(content.AbsoluteSize)
				local offset = if props.inverted
					then getLength(rbx.AbsoluteCanvasSize) - getLength(rbx.CanvasPosition) - visibleLength
					else getLength(rbx.CanvasPosition)
				-- ROBLOX deviation END

				-- Check if scroll has reached either start of end of list.
				local isScrollAtStart = offset < onStartReachedThreshold
				local isScrollAtEnd = contentLength - visibleLength - offset < onEndReachedThreshold

				if isScrollAtStart then
					maybeCallOnStartReached()
				elseif enableRetryOnStartReached and data and #data > 0 and onStartReachedTracker.current[#data] then
					onStartReachedTracker.current[#data] = false
				end

				if isScrollAtEnd then
					maybeCallOnEndReached()
				elseif enableRetryOnEndReached and data and #data > 0 and onEndReachedTracker.current[#data] then
					onEndReachedTracker.current[#data] = false
				end
			end

			local function renderHeaderLoadingIndicator(): React_ReactElement?
				if not showDefaultLoadingIndicators then
					if ListHeaderComponent then
						return React.createElement(ListHeaderComponent, nil)
					else
						return nil
					end
				end

				if not onStartReachedInProgress then
					return nil
				end

				if HeaderLoadingIndicator then
					return React.createElement(HeaderLoadingIndicator, nil)
				end

				-- ROBLOX deviation START: default Activity indicator not available
				-- return React.createElement(
				-- 	View,
				-- 	{ style = styles.indicatorContainer },
				-- 	React.createElement(ActivityIndicator, { size = "small", color = activityIndicatorColor })
				-- )
				if _G.__DEV__ then
					warn("default activity indicator not available")
				end
				return nil
				-- ROBLOX deviation END
			end

			local function renderFooterLoadingIndicator(): React_ReactElement?
				if not showDefaultLoadingIndicators then
					if ListFooterComponent then
						return React.createElement(ListFooterComponent, nil)
					else
						return nil
					end
				end

				if not onEndReachedInProgress then
					return nil
				end

				if FooterLoadingIndicator then
					return React.createElement(FooterLoadingIndicator, nil)
				end

				-- ROBLOX deviation START: default Activity indicator not available
				-- return React.createElement(
				-- 	View,
				-- 	{ style = styles.indicatorContainer },
				-- 	React.createElement(ActivityIndicator, { size = "small", color = activityIndicatorColor })
				-- )
				if _G.__DEV__ then
					warn("default activity indicator not available")
				end
				return nil
				-- ROBLOX deviation END
			end

			return React.createElement(
				React.Fragment,
				nil,
				React.createElement(
					FlatList,
					Object.assign(table.clone(props), {
						-- ROBLOX deviation START
						renderItem = function(ref_)
							local item = ref_.item
							return React.createElement(View, {
								onLayout = function(rbx)
									local scrollRef = if ref and (ref :: Object).current
										then
											(ref :: Object).current._listRef._scrollRef.getNativeScrollRef()._nativeRef.current
										else nil

									local getLength = _getLength(props.horizontal)

									if item.shouldResizeOnMount and scrollRef then
										local itemLength = getLength(rbx.AbsoluteSize)

										if itemLength <= 0 or scrollRef == nil then
											item.shouldResizeOnMount = false
											return
										end
										-- ROBLOX NOTE: When the new item is loaded and resizes, push the canvas up by the height of the item.
										-- Unless autoscrollToTop is enabled
										local canvasPosition = scrollRef.CanvasPosition
										local windowSize = scrollRef.AbsoluteSize
										local canvasSize = scrollRef.AbsoluteCanvasSize
										local autoScrollThreshold = if enableAutoscrollToTop
											then autoscrollToTopThreshold
											else nil

										if autoScrollThreshold then
											local currentOffset = if props.inverted
												then getLength(canvasSize) - getLength(canvasPosition) - getLength(
													windowSize
												)
												else getLength(canvasPosition)

											if currentOffset < autoScrollThreshold then
												item.shouldResizeOnMount = false
												scrollRef.CanvasPosition = if props.inverted
													then (if props.horizontal
														then Vector2.new(
															getLength(canvasSize) - getLength(windowSize),
															scrollRef.CanvasPosition.Y
														)
														else Vector2.new(
															scrollRef.CanvasPosition.X,
															getLength(canvasSize) - getLength(windowSize)
														))
													else (if props.horizontal
														then Vector2.new(0, scrollRef.CanvasPosition.Y)
														else Vector2.new(scrollRef.CanvasPosition.X, 0))
												return
											end
										end
										local nextCanvasPosition = if props.inverted
											then if props.horizontal
												then Vector2.new(canvasPosition.X - itemLength, canvasPosition.Y)
												else Vector2.new(canvasPosition.X, canvasPosition.Y - itemLength)
											else if props.horizontal
												then Vector2.new(canvasPosition.X + itemLength, canvasPosition.Y)
												else Vector2.new(canvasPosition.X, canvasPosition.Y + itemLength)

										item.shouldResizeOnMount = false
										scrollRef.CanvasPosition = nextCanvasPosition
									end
								end,
								AutomaticSize = if props.horizontal then Enum.AutomaticSize.X else Enum.AutomaticSize.Y,
								Size = if props.horizontal then UDim2.new(0, 0, 1, 0) else UDim2.new(1, 0, 0, 0),
								BorderSizePixel = 0,
								name = "resize",
							}, {
								child = props.renderItem(ref_),
							})
						end,
						-- ROBLOX deviation END
						ref = ref,
						-- ROBLOX deviation: prop used by RefreshControl (not supported yet)
						-- progressViewOffset = 50,
						ListHeaderComponent = renderHeaderLoadingIndicator,
						ListFooterComponent = renderFooterLoadingIndicator,
						onEndReached = Object.None,
						onScroll = handleScroll,
						maintainVisibleContentPosition = {
							autoscrollToTopThreshold = if enableAutoscrollToTop then autoscrollToTopThreshold else nil,
							minIndexForVisible = 1,
						},
					})
				)
			)
		end)
	) :: BidirectionalFlatListType

exports.BidirectionalFlatList = BidirectionalFlatList

type BidirectionalFlatListType = <T>(props: Props<T>) -> React_ReactElement

return exports
