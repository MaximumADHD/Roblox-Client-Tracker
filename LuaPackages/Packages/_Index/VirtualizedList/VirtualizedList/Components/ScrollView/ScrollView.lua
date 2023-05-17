-- ROBLOX upstream: https://github.com/facebook/react-native/blob/v0.68.0-rc.2/Libraries/Components/ScrollView/ScrollView.js
--[[*
 * Copyright (c) Meta Platforms, Inc. and affiliates.
 *
 * This source code is licensed under the MIT license found in the
 * LICENSE file in the root directory of this source tree.
 *
 * @format
 * @flow strict-local
 ]]
local srcWorkspace = script.Parent.Parent.Parent
local Packages = srcWorkspace.Parent

local LuauPolyfill = require(Packages.LuauPolyfill)
local Array = LuauPolyfill.Array
local Boolean = LuauPolyfill.Boolean
local Map = LuauPolyfill.Map
local Object = LuauPolyfill.Object
local console = LuauPolyfill.console
local setTimeout = LuauPolyfill.setTimeout
type Array<T> = LuauPolyfill.Array<T>
type Map<K, V> = LuauPolyfill.Map<K, V>
type Object = LuauPolyfill.Object

local HttpService = game:GetService("HttpService")

-- ROBLOX deviation START: missing types
type ReadOnly<T> = T
type ReadOnlyArray<T> = Array<T>
-- ROBLOX deviation END

-- ROBLOX deviation START: mocking missing modules
-- local AnimatedImplementation = require(script.Parent.Parent.Parent.Animated.AnimatedImplementation).default
local AnimatedImplementation = {
	Value = {
		new = function(...)
			-- ROBLOX comment: "AnimatedImplementation.Value.new not implemented")
			return {
				setOffset = function(_self, value)
					-- ROBLOX comment: "Value.setOffset not implemented"
				end,
				interpolate = function(_self, ...)
					-- ROBLOX comment: "Value.interpolate not implemented"
				end,
			}
		end,
	},
	attachNativeEvent = function(...)
		-- ROBLOX comment: "AnimatedImplementation.attachNativeEvent not implemented"
		return nil
	end,
}
type AnimatedImplementation_Value = any

-- local Dimensions = require(script.Parent.Parent.Parent.Utilities.Dimensions).default
local Dimensions = {
	get = function(...)
		-- ROBLOX comment: "Dimensions not implemented"
		return { height = 100 }
	end,
}

-- ROBLOX deviation: inline implementation
local Platform
Platform = {
	OS = "roblox",
	select = function(opts: Object)
		return opts[Platform.OS]
	end,
}

local React = require(Packages.React)
type React_AbstractComponent<Config, Instance> = React.AbstractComponent<Config, Instance>
-- ROBLOX deviation: using typescript type for React Element
type React_Element<P = Object, T = any> = React.ReactElement<P, T>
type React_ElementRef<C> = React.ElementRef<C>
type React_Node = React.Node
type React_Ref<ElementType> = React.Ref<ElementType>

-- ROBLOX deviation START mocking missing module
-- local ReactNative = require(script.Parent.Parent.Parent.Renderer.shims.ReactNative).default
local ReactNative = {
	findNodeHandle = function(...)
		-- ROBLOX comment: "ReactNative.findNodeHandle not implemented"
		return nil
	end,
}
-- ROBLOX deviation END

-- ROBLOX deviation : not applicable
-- require("../../Renderer/shims/ReactNative"); -- Force side effects to prevent T55744311

local ScrollViewStickyHeader = require(script.Parent.ScrollViewStickyHeader)
local StyleSheet = require(srcWorkspace.StyleSheet.StyleSheet)

-- ROBLOX deviation: using Frame instead of View
local View = "Frame"

-- ROBLOX deviation START: mocking modules
-- local UIManager = require(script.Parent.Parent.Parent.ReactNative.UIManager).default
local UIManager = {
	measureLayout = function(...)
		-- ROBLOX comment: "UIManager.measureLayout not implemented"
	end,
}
-- local Keyboard = require(script.Parent.Parent.Keyboard.Keyboard).default
local Keyboard = {
	addListener = function(...)
		-- ROBLOX comment: warn("Keyboard.addListener not implemented")
		return nil
	end,
}
-- local FrameRateLogger = require(script.Parent.Parent.Parent.Interaction.FrameRateLogger).default
local FrameRateLogger = {
	beginScroll = function(...)
		warn("FrameRateLogger.beginScroll not implemented")
	end,
	endScroll = function(...)
		warn("FrameRateLogger.endScroll not implemented")
	end,
}
-- local TextInputState = require(script.Parent.Parent.TextInput.TextInputState).default
local TextInputState = {
	blurTextInput = function(...)
		warn("TextInputState.blurTextInput not implemented")
	end,
	currentlyFocusedInput = function(...)
		warn("TextInputState.currentlyFocusedInput not implemented")
		return nil
	end,
	isTextInput = function(...)
		warn("TextInputState.isTextInput not implemented")
		return nil
	end,
}
-- local dismissKeyboard = require(script.Parent.Parent.Parent.Utilities.dismissKeyboard).default
local dismissKeyboard = function()
	warn("dismissKeyboard not implemented")
end
-- local flattenStyle = require(script.Parent.Parent.Parent.StyleSheet.flattenStyle).default
local flattenStyle = function(style)
	-- ROBLOX comment: "flattenStyle not implemented"
	return style
end
-- ROBLOX deviation END

local invariant = require(srcWorkspace.jsUtils.invariant)
local processDecelerationRate = require(script.Parent.processDecelerationRate)
-- ROBLOX deviation START: mocking missing module
-- local splitLayoutProps = require(script.Parent.Parent.Parent.StyleSheet.splitLayoutProps).default
local splitLayoutProps = function(style)
	-- ROBLOX comment: "splitLayoutProps not implemented"
	return { outer = style, inner = style }
end
-- ROBLOX deviation END

local setAndForwardRef = require(script.Parent.Parent.Parent.Utilities.setAndForwardRef)
-- ROBLOX deviation START: inline types
type EdgeInsetsProp = {
	bottom: number?,
	left: number?,
	right: number?,
	top: number?,
}
type PointProp = { x: number, y: number }
-- ROBLOX deviation END
-- local StyleSheetModule = require(script.Parent.Parent.Parent.StyleSheet.StyleSheet)
-- type ViewStyleProp = StyleSheetModule.ViewStyleProp
type ViewStyleProp = Object
-- local StyleSheetModule = require(script.Parent.Parent.Parent.StyleSheet.StyleSheet)
-- type ColorValue = StyleSheetModule.ColorValue
type ColorValue = any
-- local CoreEventTypesModule = require(script.Parent.Parent.Parent.Types.CoreEventTypes)
-- type PressEvent = CoreEventTypesModule.PressEvent
type PressEvent = Object
-- type ScrollEvent = CoreEventTypesModule.ScrollEvent
type ScrollEvent = Object
-- ROBLOX deviation = LayoutEvent is replaced with Roblox Change/Event
-- type LayoutEvent = CoreEventTypesModule.LayoutEvent
-- local ReactNativeTypesModule = require(script.Parent.Parent.Parent.Renderer.shims.ReactNativeTypes)
-- type HostComponent = ReactNativeTypesModule.HostComponent
type HostComponent<T> = any
-- local ViewPropTypesModule = require(script.Parent.Parent.View.ViewPropTypes)
-- type ViewProps = ViewPropTypesModule.ViewProps
type ViewProps = Object
local ScrollViewContextModule = require(script.Parent.ScrollViewContext)
local ScrollViewContext = ScrollViewContextModule.default
local HORIZONTAL = ScrollViewContextModule.HORIZONTAL
local VERTICAL = ScrollViewContextModule.VERTICAL
local ScrollViewStickyHeaderModule = require(script.Parent.ScrollViewStickyHeader)
type ScrollViewStickyHeaderProps = ScrollViewStickyHeaderModule.Props
-- local KeyboardModule = require(script.Parent.Parent.Keyboard.Keyboard)
-- type KeyboardEvent = KeyboardModule.KeyboardEvent
type KeyboardEvent = Object
-- local EventEmitterModule = require(script.Parent.Parent.Parent.vendor.emitter.EventEmitter)
type EventSubscription = Object
local Commands = require(script.Parent.ScrollViewCommands).default

-- ROBLOX deviation START: replace native components
local AndroidHorizontalScrollContentViewNativeComponent = "Frame"
local AndroidHorizontalScrollViewNativeComponent = "Frame"
-- ROBLOX deviation END

local ScrollContentViewNativeComponent = require(script.Parent.ScrollContentViewNativeComponent)
local ScrollViewNativeComponent = require(script.Parent.ScrollViewNativeComponent)

-- ROBLOX deviation: predefine variables
local styles

local NativeHorizontalScrollViewTuple, NativeVerticalScrollViewTuple
local ref = if Platform.OS == "android"
	then {
		NativeHorizontalScrollViewTuple = {
			AndroidHorizontalScrollViewNativeComponent,
			AndroidHorizontalScrollContentViewNativeComponent,
		},
		NativeVerticalScrollViewTuple = { ScrollViewNativeComponent :: any, View },
	}
	else {
		NativeHorizontalScrollViewTuple = { ScrollViewNativeComponent :: any, ScrollContentViewNativeComponent },
		NativeVerticalScrollViewTuple = { ScrollViewNativeComponent :: any, ScrollContentViewNativeComponent },
	}

NativeHorizontalScrollViewTuple, NativeVerticalScrollViewTuple =
	ref.NativeHorizontalScrollViewTuple, ref.NativeVerticalScrollViewTuple

--[[
 * iOS scroll event timing nuances:
 * ===============================
 *
 *
 * Scrolling without bouncing, if you touch down:
 * -------------------------------
 *
 * 1. `onMomentumScrollBegin` (when animation begins after letting up)
 *    ... physical touch starts ...
 * 2. `onTouchStartCapture`   (when you press down to stop the scroll)
 * 3. `onTouchStart`          (same, but bubble phase)
 * 4. `onResponderRelease`    (when lifting up - you could pause forever before * lifting)
 * 5. `onMomentumScrollEnd`
 *
 *
 * Scrolling with bouncing, if you touch down:
 * -------------------------------
 *
 * 1. `onMomentumScrollBegin` (when animation begins after letting up)
 *    ... bounce begins ...
 *    ... some time elapses ...
 *    ... physical touch during bounce ...
 * 2. `onMomentumScrollEnd`   (Makes no sense why this occurs first during bounce)
 * 3. `onTouchStartCapture`   (immediately after `onMomentumScrollEnd`)
 * 4. `onTouchStart`          (same, but bubble phase)
 * 5. `onTouchEnd`            (You could hold the touch start for a long time)
 * 6. `onMomentumScrollBegin` (When releasing the view starts bouncing back)
 *
 * So when we receive an `onTouchStart`, how can we tell if we are touching
 * *during* an animation (which then causes the animation to stop)? The only way
 * to tell is if the `touchStart` occurred immediately after the
 * `onMomentumScrollEnd`.
 *
 * This is abstracted out for you, so you can just call this.scrollResponderIsAnimating() if
 * necessary
 *
 * `ScrollView` also includes logic for blurring a currently focused input
 * if one is focused while scrolling. This is a natural place
 * to put this logic since it can support not dismissing the keyboard while
 * scrolling, unless a recognized "tap"-like gesture has occurred.
 *
 * The public lifecycle API includes events for keyboard interaction, responder
 * interaction, and scrolling (among others). The keyboard callbacks
 * `onKeyboardWill/Did/*` are *global* events, but are invoked on scroll
 * responder's props so that you can guarantee that the scroll responder's
 * internal state has been updated accordingly (and deterministically) by
 * the time the props callbacks are invoke. Otherwise, you would always wonder
 * if the scroll responder is currently in a state where it recognizes new
 * keyboard positions etc. If coordinating scrolling with keyboard movement,
 * *always* use these hooks instead of listening to your own global keyboard
 * events.
 *
 * Public keyboard lifecycle API: (props callbacks)
 *
 * Standard Keyboard Appearance Sequence:
 *
 *   this.props.onKeyboardWillShow
 *   this.props.onKeyboardDidShow
 *
 * `onScrollResponderKeyboardDismissed` will be invoked if an appropriate
 * tap inside the scroll responder's scrollable region was responsible
 * for the dismissal of the keyboard. There are other reasons why the
 * keyboard could be dismissed.
 *
 *   this.props.onScrollResponderKeyboardDismissed
 *
 * Standard Keyboard Hide Sequence:
 *
 *   this.props.onKeyboardWillHide
 *   this.props.onKeyboardDidHide
 ]]
-- Public methods for ScrollView
export type ScrollViewImperativeMethods =
	ReadOnly<
		{
			getScrollResponder: typeof((({} :: any) :: ScrollView).getScrollResponder),
			getScrollableNode: typeof((({} :: any) :: ScrollView).getScrollableNode),
			getInnerViewNode: typeof((({} :: any) :: ScrollView).getInnerViewNode),
			getInnerViewRef: typeof((({} :: any) :: ScrollView).getInnerViewRef),
			getNativeScrollRef: typeof((({} :: any) :: ScrollView).getNativeScrollRef),
			scrollTo: typeof((({} :: any) :: ScrollView).scrollTo),
			scrollToEnd: typeof((({} :: any) :: ScrollView).scrollToEnd),
			flashScrollIndicators: typeof((({} :: any) :: ScrollView).flashScrollIndicators),
			scrollResponderZoomTo: typeof((({} :: any) :: ScrollView).scrollResponderZoomTo),
			scrollResponderScrollNativeHandleToKeyboard: typeof((({} :: any) :: ScrollView).scrollResponderScrollNativeHandleToKeyboard),
		}
	>

export type DecelerationRateType = "fast" | "normal" | number
export type ScrollResponderType = ScrollViewImperativeMethods

type IOSProps = ReadOnly<{
	--[[*
   * Controls whether iOS should automatically adjust the content inset
   * for scroll views that are placed behind a navigation bar or
   * tab bar/ toolbar. The default value is true.
   * @platform ios
   ]]
	automaticallyAdjustContentInsets: boolean?,
	--[[*
   * Controls whether the ScrollView should automatically adjust it's contentInset
   * and scrollViewInsets when the Keyboard changes it's size. The default value is false.
   * @platform ios
   ]]
	automaticallyAdjustKeyboardInsets: boolean?,
	--[[*
   * Controls whether iOS should automatically adjust the scroll indicator
   * insets. The default value is true. Available on iOS 13 and later.
   * @platform ios
   ]]
	automaticallyAdjustsScrollIndicatorInsets: boolean?,
	--[[*
   * The amount by which the scroll view content is inset from the edges
   * of the scroll view. Defaults to `{top: 0, left: 0, bottom: 0, right: 0}`.
   * @platform ios
   ]]
	contentInset: EdgeInsetsProp?,
	--[[*
   * Used to manually set the starting scroll offset.
   * The default value is `{x: 0, y: 0}`.
   * @platform ios
   ]]
	contentOffset: PointProp?,
	--[[*
   * When true, the scroll view bounces when it reaches the end of the
   * content if the content is larger then the scroll view along the axis of
   * the scroll direction. When false, it disables all bouncing even if
   * the `alwaysBounce*` props are true. The default value is true.
   * @platform ios
   ]]
	bounces: boolean?,
	--[[*
   * By default, ScrollView has an active pan responder that hijacks panresponders
   * deeper in the render tree in order to prevent accidental touches while scrolling.
   * However, in certain occasions (such as when using snapToInterval) in a vertical scrollview
   * You may want to disable this behavior in order to prevent the ScrollView from blocking touches
   ]]
	disableScrollViewPanResponder: boolean?,
	--[[*
   * When true, gestures can drive zoom past min/max and the zoom will animate
   * to the min/max value at gesture end, otherwise the zoom will not exceed
   * the limits.
   * @platform ios
   ]]
	bouncesZoom: boolean?,
	--[[*
   * When true, the scroll view bounces horizontally when it reaches the end
   * even if the content is smaller than the scroll view itself. The default
   * value is true when `horizontal={true}` and false otherwise.
   * @platform ios
   ]]
	alwaysBounceHorizontal: boolean?,
	--[[*
   * When true, the scroll view bounces vertically when it reaches the end
   * even if the content is smaller than the scroll view itself. The default
   * value is false when `horizontal={true}` and true otherwise.
   * @platform ios
   ]]
	alwaysBounceVertical: boolean?,
	--[[*
   * When true, the scroll view automatically centers the content when the
   * content is smaller than the scroll view bounds; when the content is
   * larger than the scroll view, this property has no effect. The default
   * value is false.
   * @platform ios
   ]]
	centerContent: boolean?,
	--[[*
   * The style of the scroll indicators.
   *
   *   - `'default'` (the default), same as `black`.
   *   - `'black'`, scroll indicator is black. This style is good against a light background.
   *   - `'white'`, scroll indicator is white. This style is good against a dark background.
   *
   * @platform ios
   ]]
	indicatorStyle: ("default" | "black" | "white")?,
	--[[*
   * When true, the ScrollView will try to lock to only vertical or horizontal
   * scrolling while dragging.  The default value is false.
   * @platform ios
   ]]
	directionalLockEnabled: boolean?,
	--[[*
   * When false, once tracking starts, won't try to drag if the touch moves.
   * The default value is true.
   * @platform ios
   ]]
	canCancelContentTouches: boolean?,
	--[[*
   * When set, the scroll view will adjust the scroll position so that the first child that is
   * currently visible and at or beyond `minIndexForVisible` will not change position. This is
   * useful for lists that are loading content in both directions, e.g. a chat thread, where new
   * messages coming in might otherwise cause the scroll position to jump. A value of 0 is common,
   * but other values such as 1 can be used to skip loading spinners or other content that should
   * not maintain position.
   *
   * The optional `autoscrollToTopThreshold` can be used to make the content automatically scroll
   * to the top after making the adjustment if the user was within the threshold of the top before
   * the adjustment was made. This is also useful for chat-like applications where you want to see
   * new messages scroll into place, but not if the user has scrolled up a ways and it would be
   * disruptive to scroll a bunch.
   *
   * Caveat 1: Reordering elements in the scrollview with this enabled will probably cause
   * jumpiness and jank. It can be fixed, but there are currently no plans to do so. For now,
   * don't re-order the content of any ScrollViews or Lists that use this feature.
   *
   * Caveat 2: This simply uses `contentOffset` and `frame.origin` in native code to compute
   * visibility. Occlusion, transforms, and other complexity won't be taken into account as to
   * whether content is "visible" or not.
   *
   * @platform ios
   ]]
	maintainVisibleContentPosition: ReadOnly<{
		minIndexForVisible: number,
		autoscrollToTopThreshold: number?,
	}>?,
	--[[*
   * The maximum allowed zoom scale. The default value is 1.0.
   * @platform ios
   ]]
	maximumZoomScale: number?,
	--[[*
   * The minimum allowed zoom scale. The default value is 1.0.
   * @platform ios
   ]]
	minimumZoomScale: number?,
	--[[*
   * When true, ScrollView allows use of pinch gestures to zoom in and out.
   * The default value is true.
   * @platform ios
   ]]
	pinchGestureEnabled: boolean?,
	--[[*
   * This controls how often the scroll event will be fired while scrolling
   * (as a time interval in ms). A lower number yields better accuracy for code
   * that is tracking the scroll position, but can lead to scroll performance
   * problems due to the volume of information being send over the bridge.
   *
   * Values between 0 and 17ms indicate 60fps updates are needed and throttling
   * will be disabled.
   *
   * If you do not need precise scroll position tracking, set this value higher
   * to limit the information being sent across the bridge.
   *
   * The default value is zero, which results in the scroll event being sent only
   * once each time the view is scrolled.
   *
   * @platform ios
   ]]
	scrollEventThrottle: number?,
	--[[*
   * The amount by which the scroll view indicators are inset from the edges
   * of the scroll view. This should normally be set to the same value as
   * the `contentInset`. Defaults to `{0, 0, 0, 0}`.
   * @platform ios
   ]]
	scrollIndicatorInsets: EdgeInsetsProp?,
	--[[*
   * When true, the scroll view can be programmatically scrolled beyond its
   * content size. The default value is false.
   * @platform ios
   ]]
	scrollToOverflowEnabled: boolean?,
	--[[*
   * When true, the scroll view scrolls to top when the status bar is tapped.
   * The default value is true.
   * @platform ios
   ]]
	scrollsToTop: boolean?,
	--[[*
   * Fires when the scroll view scrolls to top after the status bar has been tapped
   * @platform ios
   ]]
	onScrollToTop: ((event: ScrollEvent) -> ())?,
	--[[*
   * When true, shows a horizontal scroll indicator.
   * The default value is true.
   ]]
	showsHorizontalScrollIndicator: boolean?,
	--[[*
   * The current scale of the scroll view content. The default value is 1.0.
   * @platform ios
   ]]
	zoomScale: number?,
	--[[*
   * This property specifies how the safe area insets are used to modify the
   * content area of the scroll view. The default value of this property is
   * "never". Available on iOS 11 and later.
   * @platform ios
   ]]
	contentInsetAdjustmentBehavior: ("automatic" | "scrollableAxes" | "never" | "always")?,
}>

type AndroidProps = ReadOnly<{
	--[[*
   * Enables nested scrolling for Android API level 21+.
   * Nested scrolling is supported by default on iOS
   * @platform android
   ]]
	nestedScrollEnabled: boolean?,
	--[[*
   * Sometimes a scrollview takes up more space than its content fills. When this is
   * the case, this prop will fill the rest of the scrollview with a color to avoid setting
   * a background and creating unnecessary overdraw. This is an advanced optimization
   * that is not needed in the general case.
   * @platform android
   ]]
	endFillColor: ColorValue?,
	--[[*
   * Tag used to log scroll performance on this scroll view. Will force
   * momentum events to be turned on (see sendMomentumEvents). This doesn't do
   * anything out of the box and you need to implement a custom native
   * FpsListener for it to be useful.
   * @platform android
   ]]
	scrollPerfTag: string?,
	--[[*
   * Used to override default value of overScroll mode.
   *
   * Possible values:
   *
   *  - `'auto'` - Default value, allow a user to over-scroll
   *    this view only if the content is large enough to meaningfully scroll.
   *  - `'always'` - Always allow a user to over-scroll this view.
   *  - `'never'` - Never allow a user to over-scroll this view.
   *
   * @platform android
   ]]
	overScrollMode: ("auto" | "always" | "never")?,
	--[[*
   * Causes the scrollbars not to turn transparent when they are not in use.
   * The default value is false.
   *
   * @platform android
   ]]
	persistentScrollbar: boolean?,
	--[[*
   * Fades out the edges of the the scroll content.
   *
   * If the value is greater than 0, the fading edges will be set accordingly
   * to the current scroll direction and position,
   * indicating if there is more content to show.
   *
   * The default value is 0.
   *
   * @platform android
   ]]
	fadingEdgeLength: number?,
}>

type StickyHeaderComponentType = React_AbstractComponent<ScrollViewStickyHeaderProps, ReadOnly<{
	setNextHeaderY: (number) -> (),
}>>
export type Props = ReadOnly<
	ViewProps & IOSProps & AndroidProps & {
		--[[*
   * These styles will be applied to the scroll view content container which
   * wraps all of the child views. Example:
   *
   * ```
   * return (
   *   <ScrollView contentContainerStyle={styles.contentContainer}>
   *   </ScrollView>
   * );
   * ...
   * const styles = StyleSheet.create({
   *   contentContainer: {
   *     paddingVertical: 20
   *   }
   * });
   * ```
   ]]
		contentContainerStyle: ViewStyleProp?,
		--[[*
   * When true, the scroll view stops on the next index (in relation to scroll
   * position at release) regardless of how fast the gesture is. This can be
   * used for pagination when the page is less than the width of the
   * horizontal ScrollView or the height of the vertical ScrollView. The default value is false.
   ]]
		disableIntervalMomentum: boolean?,
		--[[*
   * A floating-point number that determines how quickly the scroll view
   * decelerates after the user lifts their finger. You may also use string
   * shortcuts `"normal"` and `"fast"` which match the underlying iOS settings
   * for `UIScrollViewDecelerationRateNormal` and
   * `UIScrollViewDecelerationRateFast` respectively.
   *
   *   - `'normal'`: 0.998 on iOS, 0.985 on Android (the default)
   *   - `'fast'`: 0.99 on iOS, 0.9 on Android
   ]]
		decelerationRate: DecelerationRateType?,
		--[[*
   * When true, the scroll view's children are arranged horizontally in a row
   * instead of vertically in a column. The default value is false.
   ]]
		horizontal: boolean?,
		--[[*
   * If sticky headers should stick at the bottom instead of the top of the
   * ScrollView. This is usually used with inverted ScrollViews.
   ]]
		invertStickyHeaders: boolean?,
		--[[*
   * Determines whether the keyboard gets dismissed in response to a drag.
   *
   * *Cross platform*
   *
   *   - `'none'` (the default), drags do not dismiss the keyboard.
   *   - `'on-drag'`, the keyboard is dismissed when a drag begins.
   *
   * *iOS Only*
   *
   *   - `'interactive'`, the keyboard is dismissed interactively with the drag and moves in
   *     synchrony with the touch; dragging upwards cancels the dismissal.
   *     On android this is not supported and it will have the same behavior as 'none'.
   ]]
		keyboardDismissMode: ("none" | "on-drag" | "interactive")?,
		-- ios only
		--[[*
   * Determines when the keyboard should stay visible after a tap.
   *
   *   - `'never'` (the default), tapping outside of the focused text input when the keyboard
   *     is up dismisses the keyboard. When this happens, children won't receive the tap.
   *   - `'always'`, the keyboard will not dismiss automatically, and the scroll view will not
   *     catch taps, but children of the scroll view can catch taps.
   *   - `'handled'`, the keyboard will not dismiss automatically when the tap was handled by
   *     a children, (or captured by an ancestor).
   *   - `false`, deprecated, use 'never' instead
   *   - `true`, deprecated, use 'always' instead
   ]]
		keyboardShouldPersistTaps: ("always" | "never" | "handled" | true | false)?,
		--[[*
   * Called when the momentum scroll starts (scroll which occurs as the ScrollView glides to a stop).
   ]]
		onMomentumScrollBegin: ((event: ScrollEvent) -> ())?,
		--[[*
   * Called when the momentum scroll ends (scroll which occurs as the ScrollView glides to a stop).
   ]]
		onMomentumScrollEnd: ((event: ScrollEvent) -> ())?,
		--[[*
   * Fires at most once per frame during scrolling. The frequency of the
   * events can be controlled using the `scrollEventThrottle` prop.
   ]]
		onScroll: ((rbx: ScrollingFrame) -> ())?,
		--[[*
   * Called when the user begins to drag the scroll view.
   ]]
		onScrollBeginDrag: ((event: ScrollEvent) -> ())?,
		--[[*
   * Called when the user stops dragging the scroll view and it either stops
   * or begins to glide.
   ]]
		onScrollEndDrag: ((event: ScrollEvent) -> ())?,
		--[[*
   * Called when scrollable content view of the ScrollView changes.
   *
   * Handler function is passed the content width and content height as parameters:
   * `(contentWidth, contentHeight)`
   *
   * It's implemented using onLayout handler attached to the content container
   * which this ScrollView renders.
   ]]
		onContentSizeChange: ((contentWidth: number, contentHeight: number) -> ())?,
		onKeyboardDidShow: ((event: KeyboardEvent) -> ())?,
		onKeyboardDidHide: ((event: KeyboardEvent) -> ())?,
		onKeyboardWillShow: ((event: KeyboardEvent) -> ())?,
		onKeyboardWillHide: ((event: KeyboardEvent) -> ())?,

		-- ROBLOX DEVIATION: workaround for AutomaticCanvasSize bugs
		overrideAutomaticCanvasSize: boolean?,
		--[[*
   * When true, the scroll view stops on multiples of the scroll view's size
   * when scrolling. This can be used for horizontal pagination. The default
   * value is false.
   *
   * Note: Vertical pagination is not supported on Android.
   ]]
		pagingEnabled: boolean?,
		--[[*
   * When false, the view cannot be scrolled via touch interaction.
   * The default value is true.
   *
   * Note that the view can always be scrolled by calling `scrollTo`.
   ]]
		scrollEnabled: boolean?,
		--[[*
   * When true, shows a vertical scroll indicator.
   * The default value is true.
   ]]
		showsVerticalScrollIndicator: boolean?,
		--[[*
   * When true, Sticky header is hidden when scrolling down, and dock at the top
   * when scrolling up
   ]]
		stickyHeaderHiddenOnScroll: boolean?,
		--[[*
   * An array of child indices determining which children get docked to the
   * top of the screen when scrolling. For example, passing
   * `stickyHeaderIndices={[0]}` will cause the first child to be fixed to the
   * top of the scroll view. This property is not supported in conjunction
   * with `horizontal={true}`.
   ]]
		stickyHeaderIndices: ReadOnlyArray<number>?,
		--[[*
   * A React Component that will be used to render sticky headers.
   * To be used together with `stickyHeaderIndices` or with `SectionList`, defaults to `ScrollViewStickyHeader`.
   * You may need to set this if your sticky header uses custom transforms (eg. translation),
   * for example when you want your list to have an animated hidable header.
   ]]
		StickyHeaderComponent: StickyHeaderComponentType?,
		--[[*
   * When `snapToInterval` is set, `snapToAlignment` will define the relationship
   * of the snapping to the scroll view.
   *
   *   - `'start'` (the default) will align the snap at the left (horizontal) or top (vertical)
   *   - `'center'` will align the snap in the center
   *   - `'end'` will align the snap at the right (horizontal) or bottom (vertical)
   ]]
		snapToAlignment: ("start" | "center" | "end")?,
		--[[*
   * When set, causes the scroll view to stop at multiples of the value of
   * `snapToInterval`. This can be used for paginating through children
   * that have lengths smaller than the scroll view. Typically used in
   * combination with `snapToAlignment` and `decelerationRate="fast"`.
   *
   * Overrides less configurable `pagingEnabled` prop.
   ]]
		snapToInterval: number?,
		--[[*
   * When set, causes the scroll view to stop at the defined offsets.
   * This can be used for paginating through variously sized children
   * that have lengths smaller than the scroll view. Typically used in
   * combination with `decelerationRate="fast"`.
   *
   * Overrides less configurable `pagingEnabled` and `snapToInterval` props.
   ]]
		snapToOffsets: ReadOnlyArray<number>?,
		--[[*
   * Use in conjunction with `snapToOffsets`. By default, the beginning
   * of the list counts as a snap offset. Set `snapToStart` to false to disable
   * this behavior and allow the list to scroll freely between its start and
   * the first `snapToOffsets` offset.
   * The default value is true.
   ]]
		snapToStart: boolean?,
		--[[*
   * Use in conjunction with `snapToOffsets`. By default, the end
   * of the list counts as a snap offset. Set `snapToEnd` to false to disable
   * this behavior and allow the list to scroll freely between its end and
   * the last `snapToOffsets` offset.
   * The default value is true.
   ]]
		snapToEnd: boolean?,
		--[[*
   * Experimental: When true, offscreen child views (whose `overflow` value is
   * `hidden`) are removed from their native backing superview when offscreen.
   * This can improve scrolling performance on long lists. The default value is
   * true.
   ]]
		removeClippedSubviews: boolean?,
		--[[*
   * A RefreshControl component, used to provide pull-to-refresh
   * functionality for the ScrollView. Only works for vertical ScrollViews
   * (`horizontal` prop must be `false`).
   *
   * See [RefreshControl](docs/refreshcontrol.html).
   ]]
		--[[ $FlowFixMe[unclear-type] - how to handle generic type without existential
   * operator? ]]
		refreshControl: React_Element?,
		children: React_Node?,
		--[[*
   * A ref to the inner View element of the ScrollView. This should be used
   * instead of calling `getInnerViewRef`.
   ]]
		innerViewRef: React_Ref<any>?, -- ROBLOX deviation: no typeof View
		--[[*
   * A ref to the Native ScrollView component. This ref can be used to call
   * all of ScrollView's public methods, in addition to native methods like
   * measure, measureLayout, etc.
   ]]
		scrollViewRef: React_Ref<any>, -- ROBLOX deviation: no typeof ScrollViewNativeComponent & ScrollViewImperativeMethods
	}
>

type State = {
	layoutHeight: number?,
}

local IS_ANIMATING_TOUCH_START_THRESHOLD_MS = 16

type ScrollViewComponentStatics = ReadOnly<{
	Context: typeof(ScrollViewContext),
}>

--[[*
 * Component that wraps platform ScrollView while providing
 * integration with touch locking "responder" system.
 *
 * Keep in mind that ScrollViews must have a bounded height in order to work,
 * since they contain unbounded-height children into a bounded container (via
 * a scroll interaction). In order to bound the height of a ScrollView, either
 * set the height of the view directly (discouraged) or make sure all parent
 * views have bounded height. Forgetting to transfer `{flex: 1}` down the
 * view stack can lead to errors here, which the element inspector makes
 * easy to debug.
 *
 * Doesn't yet support other contained responders from blocking this scroll
 * view from becoming the responder.
 *
 *
 * `<ScrollView>` vs [`<FlatList>`](https://reactnative.dev/docs/flatlist) - which one to use?
 *
 * `ScrollView` simply renders all its react child components at once. That
 * makes it very easy to understand and use.
 *
 * On the other hand, this has a performance downside. Imagine you have a very
 * long list of items you want to display, maybe several screens worth of
 * content. Creating JS components and native views for everything all at once,
 * much of which may not even be shown, will contribute to slow rendering and
 * increased memory usage.
 *
 * This is where `FlatList` comes into play. `FlatList` renders items lazily,
 * just when they are about to appear, and removes items that scroll way off
 * screen to save memory and processing time.
 *
 * `FlatList` is also handy if you want to render separators between your items,
 * multiple columns, infinite scroll loading, or any number of other features it
 * supports out of the box.
 ]]
type ScrollView = ScrollViewImperativeMethods & {
	_scrollAnimatedValue: AnimatedImplementation_Value,
	_scrollAnimatedValueAttachment: (Object & { detach: () -> () })?,
	_stickyHeaderRefs: Map<string, React.ElementRef<StickyHeaderComponentType>>,
	_headerLayoutYs: Map<string, number>,
	_keyboardWillOpenTo: KeyboardEvent?,
	_additionalScrollOffset: number,
	_isTouching: boolean,
	_lastMomentumScrollBeginTime: number,
	_lastMomentumScrollEndTime: number,
	_observedScrollSinceBecomingResponder: boolean,
	_becameResponderWhileAnimating: boolean,
	_preventNegativeScrollOffset: boolean?,
	_animated: any,
	_subscriptionKeyboardWillShow: EventSubscription?,
	_subscriptionKeyboardWillHide: EventSubscription?,
	_subscriptionKeyboardDidShow: EventSubscription?,
	_subscriptionKeyboardDidHide: EventSubscription?,
	state: State,
	_setNativeRef: any,
	_textInputFocusError: () -> (),
	_inputMeasureAndScrollToKeyboard: (left: number, top: number, width: number, height: number) -> (),
	_getKeyForIndex: (index: any, childArray: any) -> any,
	_updateAnimatedNodeAttachment: (self: ScrollView) -> (),
	_setStickyHeaderRef: (self: ScrollView, key: string, ref: React_ElementRef<StickyHeaderComponentType>?) -> (),
	_onStickyHeaderLayout: (self: ScrollView, index: number, event: any, key: any) -> any,
	_handleScroll: (rbx: any) -> (),
	_handleLayout: (rbx: any) -> (),
	_handleContentOnLayout: (rbx: any) -> (),
	_overrideAutomaticCanvasSize: (width: number, height: number) -> (),
	_scrollViewRef: any,
	_innerViewRef: any,
	_setInnerViewRef: any,
	scrollResponderKeyboardWillShow: (e: KeyboardEvent) -> (),
	scrollResponderKeyboardWillHide: (e: KeyboardEvent) -> (),
	scrollResponderKeyboardDidShow: (e: KeyboardEvent) -> (),
	scrollResponderKeyboardDidHide: (e: KeyboardEvent) -> (),
	_handleMomentumScrollBegin: (e: ScrollEvent) -> (),
	_handleMomentumScrollEnd: (e: ScrollEvent) -> (),
	_handleScrollBeginDrag: (rbx: any) -> (),
	_handleScrollEndDrag: (rbx: any) -> (),
	_isAnimating: () -> boolean,
	_handleResponderGrant: (e: PressEvent) -> (),
	_handleResponderReject: () -> (),
	_handleResponderRelease: (e: PressEvent) -> (),
	_handleResponderTerminationRequest: () -> boolean,
	_handleScrollShouldSetResponder: () -> boolean,
	_handleStartShouldSetResponder: (e: PressEvent) -> boolean,
	_handleStartShouldSetResponderCapture: (e: PressEvent) -> boolean,
	_keyboardIsDismissible: () -> boolean,
	_handleTouchEnd: (e: PressEvent) -> (),
	_handleTouchCancel: (e: PressEvent) -> (),
	_handleTouchStart: (e: PressEvent) -> (),
	_handleTouchMove: (e: PressEvent) -> (),
	getScrollResponder: () -> ScrollResponderType,
	getScrollableNode: () -> any,
	getInnerViewNode: () -> any,
	getInnerViewRef: () -> any,
	getNativeScrollRef: () -> any,
	scrollTo: (options: (Object & {
		x: number?,
		y: number?,
		animated: boolean?,
	})?) -> (),
	scrollToEnd: (options: (Object & {
		animated: boolean?,
	})?) -> (),
	flashScrollIndicators: () -> (),
	scrollResponderScrollNativeHandleToKeyboard: <T>(
		nodeHandle: number | React_ElementRef<HostComponent<T>>,
		additionalOffset: number?,
		preventNegativeScrollOffset: boolean?
	) -> (),
	scrollResponderZoomTo: (
		rect: {
			x: number,
			y: number,
			width: number,
			height: number,
			animated: boolean?,
		},
		animated: boolean?
	) -> (),
}

local ScrollView = React.Component:extend("ScrollView")
ScrollView.Context = ScrollViewContext

function ScrollView:init(props: Props)
	self.props = props

	self._scrollAnimatedValueAttachment = nil
	self._stickyHeaderRefs = Map.new() :: Map<string, React_ElementRef<StickyHeaderComponentType>>
	self._headerLayoutYs = Map.new() :: Map<string, number>

	self._keyboardWillOpenTo = nil
	self._additionalScrollOffset = 0
	self._isTouching = false
	self._lastMomentumScrollBeginTime = 0
	self._lastMomentumScrollEndTime = 0

	-- Reset to false every time becomes responder. This is used to:
	-- - Determine if the scroll view has been scrolled and therefore should
	-- refuse to give up its responder lock.
	-- - Determine if releasing should dismiss the keyboard when we are in
	-- tap-to-dismiss mode (this.props.keyboardShouldPersistTaps !== 'always').
	self._observedScrollSinceBecomingResponder = false
	self._becameResponderWhileAnimating = false
	self._preventNegativeScrollOffset = nil

	self._animated = nil

	self._subscriptionKeyboardWillShow = nil
	self._subscriptionKeyboardWillHide = nil
	self._subscriptionKeyboardDidShow = nil
	self._subscriptionKeyboardDidHide = nil

	self.state = { layoutHeight = nil }
	self._listLayoutRef = React.createRef()

	self._setNativeRef = setAndForwardRef({
		getForwardedRef = function()
			return self.props.scrollViewRef
		end,
		setLocalRef = function(ref)
			self._scrollViewRef = ref
			--[[
	        This is a hack. Ideally we would forwardRef to the underlying
	        host component. However, since ScrollView has it's own methods that can be
	        called as well, if we used the standard forwardRef then these
	        methods wouldn't be accessible and thus be a breaking change.

	        Therefore we edit ref to include ScrollView's public methods so that
	        they are callable from the ref.
	      ]]
			if ref ~= nil then
				ref.getScrollResponder = self.getScrollResponder
				ref.getScrollableNode = self.getScrollableNode
				ref.getInnerViewNode = self.getInnerViewNode
				ref.getInnerViewRef = self.getInnerViewRef
				ref.getNativeScrollRef = self.getNativeScrollRef
				ref.scrollTo = self.scrollTo
				ref.scrollToEnd = self.scrollToEnd
				ref.flashScrollIndicators = self.flashScrollIndicators
				ref.scrollResponderZoomTo = self.scrollResponderZoomTo
				ref.scrollResponderScrollNativeHandleToKeyboard = self.scrollResponderScrollNativeHandleToKeyboard
			end
			-- ROBLOX deviation: explicit return
			return nil
		end,
	})

	--[[*
	   * Returns a reference to the underlying scroll responder, which supports
	   * operations like `scrollTo`. All ScrollView-like components should
	   * implement this method so that they can be composed while providing access
	   * to the underlying scroll responder's methods.
	   ]]
	self.getScrollResponder = function()
		-- $FlowFixMe[unclear-type]
		return (self :: any) :: ScrollResponderType
	end

	self.getScrollableNode = function()
		return ReactNative:findNodeHandle(self._scrollViewRef)
	end

	self.getInnerViewNode = function()
		return ReactNative:findNodeHandle(self._innerViewRef)
	end

	self.getInnerViewRef = function()
		return self._innerViewRef
	end

	self.getNativeScrollRef = function()
		return self._scrollViewRef
	end

	--[[*
	   * Scrolls to a given x, y offset, either immediately or with a smooth animation.
	   *
	   * Example:
	   *
	   * `scrollTo({x: 0, y: 0, animated: true})`
	   *
	   * Note: The weird function signature is due to the fact that, for historical reasons,
	   * the function also accepts separate arguments as an alternative to the options object.
	   * This is deprecated due to ambiguity (y before x), and SHOULD NOT BE USED.
	   ]]
	self.scrollTo = function(
		options: (Object & {
			x: number?,
			y: number?,
			animated: boolean?,
		})? -- ROBLOX deviation: Remove support for deprecated function signature
	)
		local x, y, animated
		-- ROBLOX deviation START: Remove support for deprecated API
		-- if typeof(options) == "number" then
		-- 	console.warn(
		-- 		"`scrollTo(y, x, animated)` is deprecated. Use `scrollTo({x: 5, y: 5, " .. "animated: true})` instead."
		-- 	)
		-- 	y = options
		-- 	x = deprecatedX
		-- 	animated = deprecatedAnimated
		-- elseif Boolean.toJSBoolean(options) then
		-- 	y = options.y
		-- 	x = options.x
		-- 	animated = options.animated
		-- end
		if options ~= nil then
			y = options.y
			x = options.x
			animated = options.animated
		end
		-- ROBLOX deviation END
		if self._scrollViewRef == nil or self._scrollViewRef._nativeRef.current == nil then
			return
		end

		Commands.scrollTo(
			self._scrollViewRef,
			Boolean.toJSBoolean(x) and x or 0,
			Boolean.toJSBoolean(y) and y or 0,
			-- ROBLOX DEVIATION: default all falsy values to animation = false
			not not animated
		)
	end

	--[[*
	   * If this is a vertical ScrollView scrolls to the bottom.
	   * If this is a horizontal ScrollView scrolls to the right.
	   *
	   * Use `scrollToEnd({animated: true})` for smooth animated scrolling,
	   * `scrollToEnd({animated: false})` for immediate scrolling.
	   * If no options are passed, `animated` defaults to true.
	   ]]
	self.scrollToEnd = function(options: (Object & {
		animated: boolean?,
	})?)
		-- Default to true
		local animated = (options ~= nil and options.animated) ~= false
		if self._scrollViewRef == nil then
			return
		end
		Commands.scrollToEnd(self._scrollViewRef, animated)
	end

	--[[*
	   * Displays the scroll indicators momentarily.
	   *
	   * @platform ios
	   ]]
	self.flashScrollIndicators = function()
		if self._scrollViewRef == nil then
			return
		end
		Commands.flashScrollIndicators(self._scrollViewRef)
	end

	--[[*
	   * This method should be used as the callback to onFocus in a TextInputs'
	   * parent view. Note that any module using this mixin needs to return
	   * the parent view's ref in getScrollViewRef() in order to use this method.
	   * @param {number} nodeHandle The TextInput node handle
	   * @param {number} additionalOffset The scroll view's bottom "contentInset".
	   *        Default is 0.
	   * @param {bool} preventNegativeScrolling Whether to allow pulling the content
	   *        down to make it meet the keyboard's top. Default is false.
	   ]]
	self.scrollResponderScrollNativeHandleToKeyboard = function<T>(
		nodeHandle: number | React_ElementRef<HostComponent<T>>,
		additionalOffset: number?,
		preventNegativeScrollOffset: boolean?
	)
		self._additionalScrollOffset = Boolean.toJSBoolean(additionalOffset) and additionalOffset or 0
		self._preventNegativeScrollOffset = Boolean.toJSBoolean(preventNegativeScrollOffset)

		if self._innerViewRef == nil then
			return
		end

		if typeof(nodeHandle) == "number" then
			UIManager:measureLayout(
				nodeHandle,
				ReactNative:findNodeHandle(self),
				-- $FlowFixMe[method-unbinding] added when improving typing for this parameters
				self._textInputFocusError,
				self._inputMeasureAndScrollToKeyboard
			)
		else
			nodeHandle:measureLayout(
				self._innerViewRef,
				self._inputMeasureAndScrollToKeyboard,
				-- $FlowFixMe[method-unbinding] added when improving typing for this parameters
				self._textInputFocusError
			)
		end
	end

	--[[*
	   * A helper function to zoom to a specific rect in the scrollview. The argument has the shape
	   * {x: number; y: number; width: number; height: number; animated: boolean = true}
	   *
	   * @platform ios
	   ]]
	self.scrollResponderZoomTo = function(
		rect: {
			x: number,
			y: number,
			width: number,
			height: number,
			animated: boolean?,
		},
		animated: boolean?
	)
		invariant(Platform.OS == "ios", "zoomToRect is not implemented")
		if Array.indexOf(Object.keys(rect), "animated") ~= -1 then
			self._animated = rect.animated
			rect.animated = nil
		elseif typeof(animated) ~= "nil" then
			console.warn("`scrollResponderZoomTo` `animated` argument is deprecated. Use `options.animated` instead")
		end

		if self._scrollViewRef == nil then
			return
		end
		Commands.zoomToRect(self._scrollViewRef, rect, animated ~= false)
	end

	--[[*
	   * The calculations performed here assume the scroll view takes up the entire
	   * screen - even if has some content inset. We then measure the offsets of the
	   * keyboard, and compensate both for the scroll view's "contentInset".
	   *
	   * @param {number} left Position of input w.r.t. table view.
	   * @param {number} top Position of input w.r.t. table view.
	   * @param {number} width Width of the text input.
	   * @param {number} height Height of the text input.
	   ]]
	self._inputMeasureAndScrollToKeyboard = function(left: number, top: number, width: number, height: number)
		local keyboardScreenY = Dimensions:get("window").height
		local function scrollTextInputIntoVisibleRect()
			if
				self._keyboardWillOpenTo ~= nil --[[ ROBLOX CHECK: loose inequality used upstream ]]
			then
				keyboardScreenY = self._keyboardWillOpenTo.endCoordinates.screenY
			end
			local scrollOffsetY = top - keyboardScreenY + height + self._additionalScrollOffset

			-- By default, this can scroll with negative offset, pulling the content
			-- down so that the target component's bottom meets the keyboard's top.
			-- If requested otherwise, cap the offset at 0 minimum to avoid content
			-- shifting down.
			if self._preventNegativeScrollOffset == true then
				scrollOffsetY = math.max(0, scrollOffsetY)
			end
			self.scrollTo({ x = 0, y = scrollOffsetY, animated = true })

			self._additionalScrollOffset = 0
			self._preventNegativeScrollOffset = false
		end

		if self._keyboardWillOpenTo == nil then
			-- `_keyboardWillOpenTo` is set inside `scrollResponderKeyboardWillShow` which
			-- is not guaranteed to be called before `_inputMeasureAndScrollToKeyboard` but native has already scheduled it.
			-- In case it was not called before `_inputMeasureAndScrollToKeyboard`, we postpone scrolling to
			-- text input.
			setTimeout(function()
				scrollTextInputIntoVisibleRect()
			end, 0)
		else
			scrollTextInputIntoVisibleRect()
		end
	end

	self._handleScroll = function(rbx)
		if _G.__DEV__ then
			if self.props.onScroll and self.props.scrollEventThrottle == nil and Platform.OS == "ios" then
				console.log(
					"You specified `onScroll` on a <ScrollView> but not "
						.. "`scrollEventThrottle`. You will only receive one event. "
						.. "Using `16` you get all the events but be aware that it may "
						.. "cause frame drops, use a bigger number if you don't need as "
						.. "much precision."
				)
			end
		end
		self._observedScrollSinceBecomingResponder = true
		if self.props.onScroll then
			self.props.onScroll(rbx)
		end
	end

	self._handleLayout = function(rbx)
		if self.props.invertStickyHeaders == true then
			self:setState({ layoutHeight = rbx.AbsoluteWindowSize.Y })
		end
		if self.props.onLayout then
			self.props.onLayout(rbx)
		end
	end

	--[[
		ROBLOX DEVIATION: AutomaticCanvasSize is prone to miscalculations with
		complex renderItems
	]]
	self._overrideAutomaticCanvasSize = function(width, height)
		if self._scrollViewRef == nil then
			return
		end

		local scrollRef = self._scrollViewRef._nativeRef.current
		if scrollRef == nil then
			return
		end

		if self.props.AutomaticCanvasSize == Enum.AutomaticSize.XY or self.props.AutomaticCanvasSize == nil then
			scrollRef.CanvasSize = UDim2.new(0, width, 0, height)
		elseif self.props.AutomaticCanvasSize == Enum.AutomaticSize.X then
			scrollRef.CanvasSize = UDim2.new(0, width, 0, scrollRef.AbsoluteCanvasSize.Y)
		elseif self.props.AutomaticCanvasSize == Enum.AutomaticSize.Y then
			scrollRef.CanvasSize = UDim2.new(0, scrollRef.AbsoluteCanvasSize.X, 0, height)
		end
	end

	self._handleContentOnLayout = function(rbx)
		local width, height = rbx.AbsoluteSize.X, rbx.AbsoluteSize.Y
		if self.props.overrideAutomaticCanvasSize then
			self._overrideAutomaticCanvasSize(width, height)
		end

		if self.props.onContentSizeChange then
			self.props.onContentSizeChange(width, height)
		end
	end

	self._scrollViewRef = nil

	self._innerViewRef = nil
	self._setInnerViewRef = setAndForwardRef({
		getForwardedRef = function()
			return self.props.innerViewRef
		end,
		setLocalRef = function(ref)
			self._innerViewRef = ref
			-- ROBLOX deviation: explicit return
			return nil
		end,
	})

	--[[*
	   * Warning, this may be called several times for a single keyboard opening.
	   * It's best to store the information in this method and then take any action
	   * at a later point (either in `keyboardDidShow` or other).
	   *
	   * Here's the order that events occur in:
	   * - focus
	   * - willShow {startCoordinates, endCoordinates} several times
	   * - didShow several times
	   * - blur
	   * - willHide {startCoordinates, endCoordinates} several times
	   * - didHide several times
	   *
	   * The `ScrollResponder` module callbacks for each of these events.
	   * Even though any user could have easily listened to keyboard events
	   * themselves, using these `props` callbacks ensures that ordering of events
	   * is consistent - and not dependent on the order that the keyboard events are
	   * subscribed to. This matters when telling the scroll view to scroll to where
	   * the keyboard is headed - the scroll responder better have been notified of
	   * the keyboard destination before being instructed to scroll to where the
	   * keyboard will be. Stick to the `ScrollResponder` callbacks, and everything
	   * will work.
	   *
	   * WARNING: These callbacks will fire even if a keyboard is displayed in a
	   * different navigation pane. Filter out the events to determine if they are
	   * relevant to you. (For example, only if you receive these callbacks after
	   * you had explicitly focused a node etc).
	   ]]

	self.scrollResponderKeyboardWillShow = function(e: KeyboardEvent)
		self._keyboardWillOpenTo = e
		if self.props.onKeyboardWillShow then
			self.props.onKeyboardWillShow(e)
		end
	end

	self.scrollResponderKeyboardWillHide = function(e: KeyboardEvent)
		self._keyboardWillOpenTo = nil
		if self.props.onKeyboardWillHide then
			self.props.onKeyboardWillHide(e)
		end
	end

	self.scrollResponderKeyboardDidShow = function(e: KeyboardEvent)
		-- TODO(7693961): The event for DidShow is not available on iOS yet.
		-- Use the one from WillShow and do not assign.
		if Boolean.toJSBoolean(e) then
			self._keyboardWillOpenTo = e
		end
		if self.props.onKeyboardDidShow then
			self.props.onKeyboardDidShow(e)
		end
	end

	self.scrollResponderKeyboardDidHide = function(e: KeyboardEvent)
		self._keyboardWillOpenTo = nil
		if self.props.onKeyboardDidHide then
			self.props.onKeyboardDidHide(e)
		end
	end

	--[[*
	   * Invoke this from an `onMomentumScrollBegin` event.
	   ]]
	self._handleMomentumScrollBegin = function(e: ScrollEvent)
		self._lastMomentumScrollBeginTime = os.clock() * 1000 -- ROBLOX deviation: global.performance:now()
		if self.props.onMomentumScrollBegin then
			self.props.onMomentumScrollBegin(e)
		end
	end

	--[[*
	   * Invoke this from an `onMomentumScrollEnd` event.
	   ]]
	self._handleMomentumScrollEnd = function(e: ScrollEvent)
		FrameRateLogger:endScroll()
		self._lastMomentumScrollEndTime = os.clock() * 1000 -- ROBLOX deviation: global.performance:now()
		if self.props.onMomentumScrollEnd then
			self.props.onMomentumScrollEnd(e)
		end
	end

	--[[*
	   * Unfortunately, `onScrollBeginDrag` also fires when *stopping* the scroll
	   * animation, and there's not an easy way to distinguish a drag vs. stopping
	   * momentum.
	   *
	   * Invoke this from an `onScrollBeginDrag` event.
	   ]]
	self._handleScrollBeginDrag = function(rbx)
		FrameRateLogger:beginScroll() -- TODO: track all scrolls after implementing onScrollEndAnimation
		if Platform.OS == "android" and self.props.keyboardDismissMode == "on-drag" then
			dismissKeyboard()
		end
		if self.props.onScrollBeginDrag then
			self.props.onScrollBeginDrag(rbx)
		end
	end

	--[[*
	   * Invoke this from an `onScrollEndDrag` event.
	   ]]
	self._handleScrollEndDrag = function(rbx, input)
		local velocity = nil -- ROBLOX deviation: e.nativeEvent.velocity
		-- - If we are animating, then this is a "drag" that is stopping the scrollview and momentum end
		--   will fire.
		-- - If velocity is non-zero, then the interaction will stop when momentum scroll ends or
		--   another drag starts and ends.
		-- - If we don't get velocity, better to stop the interaction twice than not stop it.
		if not self:_isAnimating() and (not Boolean.toJSBoolean(velocity) or velocity.x == 0 and velocity.y == 0) then
			FrameRateLogger:endScroll()
		end
		if self.props.onScrollEndDrag then
			self.props.onScrollEndDrag(rbx, input)
		end
	end

	--[[*
	   * A helper function for this class that lets us quickly determine if the
	   * view is currently animating. This is particularly useful to know when
	   * a touch has just started or ended.
	   ]]
	self._isAnimating = function()
		local now = os.clock() * 1000 -- ROBLOX deviation: global.performance:now()
		local timeSinceLastMomentumScrollEnd = now - self._lastMomentumScrollEndTime
		local isAnimating = timeSinceLastMomentumScrollEnd < IS_ANIMATING_TOUCH_START_THRESHOLD_MS
		return isAnimating
	end

	--[[*
	   * Invoke this from an `onResponderGrant` event.
	   ]]
	self._handleResponderGrant = function(e: PressEvent)
		self._observedScrollSinceBecomingResponder = false
		if self.props.onResponderGrant then
			self.props.onResponderGrant(e)
		end
		self._becameResponderWhileAnimating = self:_isAnimating()
	end

	--[[*
	   * Invoke this from an `onResponderReject` event.
	   *
	   * Some other element is not yielding its role as responder. Normally, we'd
	   * just disable the `UIScrollView`, but a touch has already began on it, the
	   * `UIScrollView` will not accept being disabled after that. The easiest
	   * solution for now is to accept the limitation of disallowing this
	   * altogether. To improve this, find a way to disable the `UIScrollView` after
	   * a touch has already started.
	   ]]
	self._handleResponderReject = function() end

	--[[*
	   * Invoke this from an `onResponderRelease` event.
	   ]]
	self._handleResponderRelease = function(e: PressEvent)
		self._isTouching = #e.nativeEvent.touches ~= 0
		if self.props.onResponderRelease then
			self.props.onResponderRelease(e)
		end

		if typeof(e.target) == "number" then
			if _G.__DEV__ then
				console.error("Did not expect event target to be a number. Should have been a native component")
			end
			return
		end

		-- By default scroll views will unfocus a textField
		-- if another touch occurs outside of it
		local currentlyFocusedTextInput = TextInputState:currentlyFocusedInput()
		if
			self.props.keyboardShouldPersistTaps ~= true
			and self.props.keyboardShouldPersistTaps ~= "always"
			and self:_keyboardIsDismissible()
			and e.target ~= currentlyFocusedTextInput
			and not self._observedScrollSinceBecomingResponder
			and not self._becameResponderWhileAnimating
		then
			TextInputState:blurTextInput(currentlyFocusedTextInput)
		end
	end

	--[[*
	   * We will allow the scroll view to give up its lock iff it acquired the lock
	   * during an animation. This is a very useful default that happens to satisfy
	   * many common user experiences.
	   *
	   * - Stop a scroll on the left edge, then turn that into an outer view's
	   *   backswipe.
	   * - Stop a scroll mid-bounce at the top, continue pulling to have the outer
	   *   view dismiss.
	   * - However, without catching the scroll view mid-bounce (while it is
	   *   motionless), if you drag far enough for the scroll view to become
	   *   responder (and therefore drag the scroll view a bit), any backswipe
	   *   navigation of a swipe gesture higher in the view hierarchy, should be
	   *   rejected.
	   ]]
	self._handleResponderTerminationRequest = function()
		return not self._observedScrollSinceBecomingResponder
	end

	--[[*
	   * Invoke this from an `onScroll` event.
	   ]]
	self._handleScrollShouldSetResponder = function()
		-- Allow any event touch pass through if the default pan responder is disabled
		if self.props.disableScrollViewPanResponder == true then
			return false
		end
		return self._isTouching
	end

	--[[*
	   * Merely touch starting is not sufficient for a scroll view to become the
	   * responder. Being the "responder" means that the very next touch move/end
	   * event will result in an action/movement.
	   *
	   * Invoke this from an `onStartShouldSetResponder` event.
	   *
	   * `onStartShouldSetResponder` is used when the next move/end will trigger
	   * some UI movement/action, but when you want to yield priority to views
	   * nested inside of the view.
	   *
	   * There may be some cases where scroll views actually should return `true`
	   * from `onStartShouldSetResponder`: Any time we are detecting a standard tap
	   * that gives priority to nested views.
	   *
	   * - If a single tap on the scroll view triggers an action such as
	   *   recentering a map style view yet wants to give priority to interaction
	   *   views inside (such as dropped pins or labels), then we would return true
	   *   from this method when there is a single touch.
	   *
	   * - Similar to the previous case, if a two finger "tap" should trigger a
	   *   zoom, we would check the `touches` count, and if `>= 2`, we would return
	   *   true.
	   *
	   ]]
	self._handleStartShouldSetResponder = function(e: PressEvent)
		-- Allow any event touch pass through if the default pan responder is disabled
		if self.props.disableScrollViewPanResponder == true then
			return false
		end

		local currentlyFocusedInput = TextInputState:currentlyFocusedInput()

		if
			self.props.keyboardShouldPersistTaps == "handled"
			and self:_keyboardIsDismissible()
			and e.target ~= currentlyFocusedInput
		then
			return true
		end
		return false
	end

	--[[*
	   * There are times when the scroll view wants to become the responder
	   * (meaning respond to the next immediate `touchStart/touchEnd`), in a way
	   * that *doesn't* give priority to nested views (hence the capture phase):
	   *
	   * - Currently animating.
	   * - Tapping anywhere that is not a text input, while the keyboard is
	   *   up (which should dismiss the keyboard).
	   *
	   * Invoke this from an `onStartShouldSetResponderCapture` event.
	   ]]
	self._handleStartShouldSetResponderCapture = function(e: PressEvent)
		-- The scroll view should receive taps instead of its descendants if:
		-- * it is already animating/decelerating
		if self:_isAnimating() then
			return true
		end

		-- Allow any event touch pass through if the default pan responder is disabled
		if self.props.disableScrollViewPanResponder == true then
			return false
		end

		-- * the keyboard is up, keyboardShouldPersistTaps is 'never' (the default),
		-- and a new touch starts with a non-textinput target (in which case the
		-- first tap should be sent to the scroll view and dismiss the keyboard,
		-- then the second tap goes to the actual interior view)
		local keyboardShouldPersistTaps = self.props.keyboardShouldPersistTaps
		local keyboardNeverPersistTaps = not Boolean.toJSBoolean(keyboardShouldPersistTaps)
			or keyboardShouldPersistTaps == "never"

		if typeof(e.target) == "number" then
			if _G.__DEV__ then
				console.error("Did not expect event target to be a number. Should have been a native component")
			end

			return false
		end

		if
			keyboardNeverPersistTaps
			and self:_keyboardIsDismissible()
			and e.target ~= nil
			and not Boolean.toJSBoolean(TextInputState:isTextInput(e.target))
		then
			return true
		end

		return false
	end

	--[[*
	   * Do we consider there to be a dismissible soft-keyboard open?
	   ]]
	self._keyboardIsDismissible = function()
		local currentlyFocusedInput = TextInputState:currentlyFocusedInput()

		-- We cannot dismiss the keyboard without an input to blur, even if a soft
		-- keyboard is open (e.g. when keyboard is open due to a native component
		-- not participating in TextInputState). It's also possible that the
		-- currently focused input isn't a TextInput (such as by calling ref.focus
		-- on a non-TextInput).
		local hasFocusedTextInput = currentlyFocusedInput ~= nil and TextInputState:isTextInput(currentlyFocusedInput)

		-- Even if an input is focused, we may not have a keyboard to dismiss. E.g
		-- when using a physical keyboard. Ensure we have an event for an opened
		-- keyboard, except on Android where setting windowSoftInputMode to
		-- adjustNone leads to missing keyboard events.
		local softKeyboardMayBeOpen = self._keyboardWillOpenTo ~= nil or Platform.OS == "android"
		return if hasFocusedTextInput then softKeyboardMayBeOpen else hasFocusedTextInput
	end

	--[[*
	   * Invoke this from an `onTouchEnd` event.
	   *
	   * @param {PressEvent} e Event.
	   ]]
	self._handleTouchEnd = function(rbx, input: InputObject)
		-- ROBLOX deviation START: no native event
		-- local nativeEvent = e.nativeEvent
		-- self._isTouching = #nativeEvent.touches ~= 0
		self._isTouching = false
		-- ROBLOX deviation END
		if self.props.onTouchEnd then
			self.props.onTouchEnd(rbx, input)
		end
	end

	--[[*
	   * Invoke this from an `onTouchCancel` event.
	   *
	   * @param {PressEvent} e Event.
	   ]]
	self._handleTouchCancel = function(e: PressEvent)
		self._isTouching = false

		if self.props.onTouchCancel then
			self.props.onTouchCancel(e)
		end
	end

	--[[*
	   * Invoke this from an `onTouchStart` event.
	   *
	   * Since we know that the `SimpleEventPlugin` occurs later in the plugin
	   * order, after `ResponderEventPlugin`, we can detect that we were *not*
	   * permitted to be the responder (presumably because a contained view became
	   * responder). The `onResponderReject` won't fire in that case - it only
	   * fires when a *current* responder rejects our request.
	   *
	   * @param {PressEvent} e Touch Start event.
	   ]]
	self._handleTouchStart = function(rbx, input: InputObject)
		self._isTouching = true
		if self.props.onTouchStart then
			self.props.onTouchStart(rbx, input)
		end
	end

	--[[*
	   * Invoke this from an `onTouchMove` event.
	   *
	   * Since we know that the `SimpleEventPlugin` occurs later in the plugin
	   * order, after `ResponderEventPlugin`, we can detect that we were *not*
	   * permitted to be the responder (presumably because a contained view became
	   * responder). The `onResponderReject` won't fire in that case - it only
	   * fires when a *current* responder rejects our request.
	   *
	   * @param {PressEvent} e Touch Start event.
	   ]]
	self._handleTouchMove = function(rbx, input: InputObject)
		if self.props.onTouchMove then
			self.props.onTouchMove(rbx, input)
		end
	end

	self._scrollAnimatedValue = AnimatedImplementation.Value.new(
		if self.props.contentOffset and Boolean.toJSBoolean(self.props.contentOffset.y)
			then self.props.contentOffset.y
			else 0
	)
	self._scrollAnimatedValue:setOffset(
		if self.props.contentInset and Boolean.toJSBoolean(self.props.contentInset.top)
			then self.props.contentInset.top
			else 0
	)
end

function ScrollView:componentDidMount()
	if typeof(self.props.keyboardShouldPersistTaps) == "boolean" then
		console.warn(
			("'keyboardShouldPersistTaps={%s}' is deprecated. "):format(
				self.props.keyboardShouldPersistTaps == true and "true" or "false"
			)
				.. ("Use 'keyboardShouldPersistTaps=\"%s\"' instead"):format(
					if Boolean.toJSBoolean(self.props.keyboardShouldPersistTaps) then "always" else "never"
				)
		)
	end

	self._keyboardWillOpenTo = nil
	self._additionalScrollOffset = 0

	self._subscriptionKeyboardWillShow = Keyboard:addListener("keyboardWillShow", self.scrollResponderKeyboardWillShow)
	self._subscriptionKeyboardWillHide = Keyboard:addListener("keyboardWillHide", self.scrollResponderKeyboardWillHide)
	self._subscriptionKeyboardDidShow = Keyboard:addListener("keyboardDidShow", self.scrollResponderKeyboardDidShow)
	self._subscriptionKeyboardDidHide = Keyboard:addListener("keyboardDidHide", self.scrollResponderKeyboardDidHide)
	self:_updateAnimatedNodeAttachment()
end

function ScrollView:componentDidUpdate(prevProps: Props)
	local prevContentInsetTop = if prevProps.contentInset then prevProps.contentInset.top else 0
	local newContentInsetTop = if self.props.contentInset then self.props.contentInset.top else 0
	if prevContentInsetTop ~= newContentInsetTop then
		self._scrollAnimatedValue:setOffset(Boolean.toJSBoolean(newContentInsetTop) and newContentInsetTop or 0)
	end

	self:_updateAnimatedNodeAttachment()
end

function ScrollView:componentWillUnmount()
	if self._subscriptionKeyboardWillShow ~= nil then
		self._subscriptionKeyboardWillShow:remove()
	end
	if self._subscriptionKeyboardWillHide ~= nil then
		self._subscriptionKeyboardWillHide:remove()
	end
	if self._subscriptionKeyboardDidShow ~= nil then
		self._subscriptionKeyboardDidShow:remove()
	end
	if self._subscriptionKeyboardDidHide ~= nil then
		self._subscriptionKeyboardDidHide:remove()
	end

	if self._scrollAnimatedValueAttachment then
		self._scrollAnimatedValueAttachment:detach()
	end
end

function ScrollView._textInputFocusError()
	console.warn("Error measuring text field.")
end

function ScrollView._getKeyForIndex(index, childArray)
	local child = childArray[index]
	return if child then child.key else child
end

function ScrollView:_updateAnimatedNodeAttachment()
	if self._scrollAnimatedValueAttachment then
		self._scrollAnimatedValueAttachment:detach()
	end
	if self.props.stickyHeaderIndices and #self.props.stickyHeaderIndices > 0 then
		self._scrollAnimatedValueAttachment = AnimatedImplementation:attachNativeEvent(
			self._scrollViewRef,
			"onScroll",
			{ { nativeEvent = { contentOffset = { y = self._scrollAnimatedValue } } } }
		)
	end
end

function ScrollView:_setStickyHeaderRef(key: string, ref: React_ElementRef<StickyHeaderComponentType>?)
	if Boolean.toJSBoolean(ref) then
		self._stickyHeaderRefs:set(key, ref)
	else
		self._stickyHeaderRefs:delete(key)
	end
end

function ScrollView:_onStickyHeaderLayout(index, event, key)
	local stickyHeaderIndices = self.props.stickyHeaderIndices
	if not stickyHeaderIndices then
		return
	end
	local childArray = React.Children.toArray(self.props.children)
	if key ~= self._getKeyForIndex(index, childArray) then
		-- ignore stale layout update
		return
	end
	local layoutY = event.nativeEvent.layout.y
	self._headerLayoutYs:set(key, layoutY)

	local indexOfIndex = Array.indexOf(stickyHeaderIndices, index)
	local previousHeaderIndex = stickyHeaderIndices[indexOfIndex - 1]
	if previousHeaderIndex ~= nil then
		local previousHeader = self._stickyHeaderRefs:get(self._getKeyForIndex(previousHeaderIndex, childArray))
		if Boolean.toJSBoolean(previousHeader) and previousHeader.setNextHeaderY then
			previousHeader:setNextHeaderY(layoutY)
		end
	end
end

function ScrollView:render()
	local NativeDirectionalScrollView, NativeDirectionalScrollContentView = table.unpack(
		if self.props.horizontal == true then NativeHorizontalScrollViewTuple else NativeVerticalScrollViewTuple,
		1,
		2
	)

	-- ROBLOX deviation: avoid passing styles as an array if possible
	local contentContainerStyle = self.props.contentContainerStyle

	if _G.__DEV__ and self.props.style ~= nil then
		local style = flattenStyle(self.props.style)
		local childLayoutProps = Array.filter({ "alignItems", "justifyContent" }, function(prop)
			return Boolean.toJSBoolean(style) and style[prop] ~= nil
		end)
		invariant(
			#childLayoutProps == 0,
			"ScrollView child layout ("
				.. HttpService:JSONEncode(childLayoutProps)
				.. ") must be applied through the contentContainerStyle prop."
		)
	end

	local contentSizeChangeProps = if self.props.onContentSizeChange == nil
		then nil
		else { onLayout = self._handleContentOnLayout }

	local stickyHeaderIndices = self.props.stickyHeaderIndices
	local children = self.props.children

	if stickyHeaderIndices ~= nil and #stickyHeaderIndices > 0 then
		local childArray = React.Children.toArray(self.props.children)

		children = Array.map(childArray, function(child, index)
			local indexOfIndex = if Boolean.toJSBoolean(child) then Array.indexOf(stickyHeaderIndices, index) else -1
			if indexOfIndex > -1 then
				local key = child.key
				local nextIndex = stickyHeaderIndices[indexOfIndex + 1]
				local StickyHeaderComponent = if self.props.StickyHeaderComponent
					then self.props.StickyHeaderComponent
					else ScrollViewStickyHeader
				return React.createElement(StickyHeaderComponent, {
					Name = "StickyHeaderComponent",
					key = key,
					nativeID = "StickyHeader-" .. tostring(key), --[[ TODO: T68258846. ]]
					ref = function(ref)
						return self:_setStickyHeaderRef(key, ref)
					end,
					nextHeaderLayoutY = self._headerLayoutYs:get(self._getKeyForIndex(nextIndex, childArray)),
					onLayout = function(event)
						return self:_onStickyHeaderLayout(index, event, key)
					end,
					scrollAnimatedValue = self._scrollAnimatedValue,
					inverted = self.props.invertStickyHeaders,
					hiddenOnScroll = self.props.stickyHeaderHiddenOnScroll,
					scrollViewHeight = self.state.layoutHeight,
				}, child)
			else
				return child
			end
		end)
	end

	children = React.createElement(
		ScrollViewContext.Provider,
		{ value = if self.props.horizontal == true then HORIZONTAL else VERTICAL },
		-- ROBLOX deviation: insert UIListlayout to mimic flex positioning
		-- ROBLOX NOTE: Elements are aligned to the end of the ListLayout for inverted
		React.createElement("UIListLayout", {
			ref = self._listLayoutRef,
			key = "layout",
			Name = if self.props.horizontal then "HorizontalLayout" else "VerticalLayout",
			FillDirection = if self.props.horizontal
				then Enum.FillDirection.Horizontal
				else Enum.FillDirection.Vertical,
			VerticalAlignment = if self.props.horizontal
				then Enum.VerticalAlignment.Center
				else if self.props.layoutStyle
					then self.props.layoutStyle.VerticalAlignment
					else Enum.VerticalAlignment.Top,
			HorizontalAlignment = if self.props.horizontal
				then if self.props.layoutStyle
					then self.props.layoutStyle.HorizontalAlignment
					else Enum.HorizontalAlignment.Left
				else Enum.HorizontalAlignment.Center,
			SortOrder = Enum.SortOrder.LayoutOrder,
		}),
		children
	)

	local hasStickyHeaders = Array.isArray(stickyHeaderIndices) and #stickyHeaderIndices > 0

	local contentContainer = React.createElement(
		NativeDirectionalScrollContentView,
		Object.assign({}, contentSizeChangeProps, { ref = self._setInnerViewRef }, {
			style = contentContainerStyle,
			Size = if self.props.horizontal then UDim2.new(0, 0, 1, 0) else UDim2.new(1, 0, 0, 0),
			AutomaticSize = if self.props.horizontal then Enum.AutomaticSize.X else Enum.AutomaticSize.Y,

			-- Subview clipping causes issues with sticky headers on Android and
			-- would be hard to fix properly in a performant way.
			removeClippedSubviews = if Platform.OS == "android" and hasStickyHeaders
				then false
				else self.props.removeClippedSubviews,
			collapsable = false,
		}),
		children
	)

	local alwaysBounceHorizontal = if self.props.alwaysBounceHorizontal ~= nil
		then self.props.alwaysBounceHorizontal
		else self.props.horizontal

	local alwaysBounceVertical = if self.props.alwaysBounceVertical ~= nil
		then self.props.alwaysBounceVertical
		else not self.props.horizontal

	local baseStyle = if self.props.horizontal == true then styles.baseHorizontal else styles.baseVertical

	local props = Object.assign(table.clone(self.props), {
		alwaysBounceHorizontal = alwaysBounceHorizontal,
		alwaysBounceVertical = alwaysBounceVertical,
		style = StyleSheet.compose(baseStyle, self.props.style),
		-- Override the onContentSizeChange from props, since this event can
		-- bubble up from TextInputs
		onContentSizeChange = Object.None,
		onLayout = self._handleLayout,
		onMomentumScrollBegin = self._handleMomentumScrollBegin,
		onMomentumScrollEnd = self._handleMomentumScrollEnd,
		onResponderGrant = self._handleResponderGrant,
		onResponderReject = self._handleResponderReject,
		onResponderRelease = self._handleResponderRelease,
		onResponderTerminationRequest = self._handleResponderTerminationRequest,
		onScrollBeginDrag = self._handleScrollBeginDrag,
		onScrollEndDrag = self._handleScrollEndDrag,
		onScrollShouldSetResponder = self._handleScrollShouldSetResponder,
		onStartShouldSetResponder = self._handleStartShouldSetResponder,
		onStartShouldSetResponderCapture = self._handleStartShouldSetResponderCapture,
		onTouchEnd = self._handleTouchEnd,
		onTouchMove = self._handleTouchMove,
		onTouchStart = self._handleTouchStart,
		onTouchCancel = self._handleTouchCancel,
		onScroll = self._handleScroll,
		scrollEventThrottle = hasStickyHeaders and 1 or self.props.scrollEventThrottle,
		sendMomentumEvents = if self.props.onMomentumScrollBegin or self.props.onMomentumScrollEnd then true else false,
		-- default to true
		snapToStart = self.props.snapToStart ~= false,
		-- default to true
		snapToEnd = self.props.snapToEnd ~= false,
		-- pagingEnabled is overridden by snapToInterval / snapToOffsets
		pagingEnabled = Platform.select({
			-- on iOS, pagingEnabled must be set to false to have snapToInterval / snapToOffsets work
			ios = self.props.pagingEnabled == true
				and self.props.snapToInterval == nil
				and self.props.snapToOffsets == nil,
			-- on Android, pagingEnabled must be set to true to have snapToInterval / snapToOffsets work
			android = self.props.pagingEnabled == true
				or self.props.snapToInterval ~= nil
				or self.props.snapToOffsets ~= nil,
		}),
		AutomaticCanvasSize = if self.props.overrideAutomaticCanvasSize then Enum.AutomaticSize.None else nil,
	})

	local decelerationRate = self.props.decelerationRate

	if decelerationRate ~= nil then
		props.decelerationRate = processDecelerationRate(decelerationRate)
	end

	local refreshControl = self.props.refreshControl

	if Boolean.toJSBoolean(refreshControl) then
		if Platform.OS == "ios" or Platform.OS == "roblox" then
			-- On iOS the RefreshControl is a child of the ScrollView.
			return React.createElement(
				NativeDirectionalScrollView,
				Object.assign(table.clone(props), { ref = self._setNativeRef }),
				refreshControl,
				contentContainer
			)
		elseif Platform.OS == "android" then
			-- On Android wrap the ScrollView with a AndroidSwipeRefreshLayout.
			-- Since the ScrollView is wrapped add the style props to the
			-- AndroidSwipeRefreshLayout and use flex: 1 for the ScrollView.
			-- Note: we should split props.style on the inner and outer props
			-- however, the ScrollView still needs the baseStyle to be scrollable
			local outer, inner
			do
				local ref = splitLayoutProps(flattenStyle(props.style))
				outer, inner = ref.outer, ref.inner
			end
			return React.cloneElement(
				refreshControl,
				Object.assign({ style = StyleSheet.compose(baseStyle, outer) }),
				React.createElement(
					NativeDirectionalScrollView,
					Object.assign({}, props, {
						style = StyleSheet.compose(baseStyle, inner),
						ref = self._setNativeRef,
					}),
					contentContainer
				)
			)
		end
	end

	props.ref = self._setNativeRef

	return React.createElement(NativeDirectionalScrollView, props, contentContainer)
end

styles = StyleSheet.create({
	--[[
		ROBLOX deviation:
		* use valid props for ScrollingFrame
		* container flex => UIListLayout with Direction
	]]
	baseVertical = {
		ScrollingDirection = Enum.ScrollingDirection.Y,
	},
	baseHorizontal = {
		ScrollingDirection = Enum.ScrollingDirection.X,
	},
	-- 	contentContainerHorizontal = { flexDirection = "row" },
})

local function Wrapper(props, ref)
	return React.createElement(ScrollView, Object.assign(table.clone(props), { scrollViewRef = ref }))
end

--[[ ROBLOX deviation: forwardRef will only accept a function as argument (callable table will show a warning)
	Adding properties to functions is not allowed ]]
-- Wrapper.displayName = "ScrollView"

local ForwardedScrollView = React.forwardRef(Wrapper)

-- $FlowFixMe[prop-missing] Add static context to ForwardedScrollView
ForwardedScrollView.Context = ScrollViewContext

ForwardedScrollView.displayName = "ScrollView"

return ForwardedScrollView :: any
