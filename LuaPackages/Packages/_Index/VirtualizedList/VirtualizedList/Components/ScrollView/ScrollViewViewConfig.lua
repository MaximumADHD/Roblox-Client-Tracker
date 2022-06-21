-- ROBLOX upstream: https://github.com/facebook/react-native/blob/v0.68.0-rc.2/Libraries/Components/ScrollView/ScrollViewViewConfig.js
--[[*
 * Copyright (c) Meta Platforms, Inc. and affiliates.
 *
 * This source code is licensed under the MIT license found in the
 * LICENSE file in the root directory of this source tree.
 *
 * @flow strict-local
 * @format
]]

-- ROBLOX deviation START: missing module/type
-- local ReactNativeTypesModule = require(script.Parent.Parent.Parent.Renderer.shims.ReactNativeTypes)
-- type PartialViewConfig = ReactNativeTypesModule.PartialViewConfig
type PartialViewConfig = { [string]: any }
-- ROBLOX deviation END

local ScrollViewViewConfig = {
	uiViewClassName = "RCTScrollView",
	bubblingEventTypes = {},
	directEventTypes = { topScrollToTop = { registrationName = "onScrollToTop" } },
	validAttributes = {
		alwaysBounceHorizontal = true,
		alwaysBounceVertical = true,
		automaticallyAdjustContentInsets = true,
		automaticallyAdjustKeyboardInsets = true,
		automaticallyAdjustsScrollIndicatorInsets = true,
		bounces = true,
		bouncesZoom = true,
		canCancelContentTouches = true,
		centerContent = true,
		-- ROBLOX TODO: investigate if this depenendency is required
		-- contentInset = { diff = require("../../Utilities/differ/pointsDiffer") },
		-- ROBLOX TODO: investigate if this depenendency is required
		-- contentOffset = { diff = require("../../Utilities/differ/pointsDiffer") },
		contentInsetAdjustmentBehavior = true,
		decelerationRate = true,
		directionalLockEnabled = true,
		disableIntervalMomentum = true,
		-- ROBLOX TODO: investigate if this depenendency is required
		-- endFillColor = { process = require("../../StyleSheet/processColor") },
		fadingEdgeLength = true,
		indicatorStyle = true,
		inverted = true,
		keyboardDismissMode = true,
		maintainVisibleContentPosition = true,
		maximumZoomScale = true,
		minimumZoomScale = true,
		nestedScrollEnabled = true,
		onMomentumScrollBegin = true,
		onMomentumScrollEnd = true,
		onScroll = true,
		onScrollBeginDrag = true,
		onScrollEndDrag = true,
		onScrollToTop = true,
		overScrollMode = true,
		pagingEnabled = true,
		persistentScrollbar = true,
		pinchGestureEnabled = true,
		scrollEnabled = true,
		scrollEventThrottle = true,
		-- ROBLOX TODO: investigate if this depenendency is required
		-- scrollIndicatorInsets = { diff = require("../../Utilities/differ/pointsDiffer") },
		scrollPerfTag = true,
		scrollToOverflowEnabled = true,
		scrollsToTop = true,
		sendMomentumEvents = true,
		showsHorizontalScrollIndicator = true,
		showsVerticalScrollIndicator = true,
		snapToAlignment = true,
		snapToEnd = true,
		snapToInterval = true,
		snapToOffsets = true,
		snapToStart = true,
		zoomScale = true,
	},
}
return ScrollViewViewConfig :: PartialViewConfig
