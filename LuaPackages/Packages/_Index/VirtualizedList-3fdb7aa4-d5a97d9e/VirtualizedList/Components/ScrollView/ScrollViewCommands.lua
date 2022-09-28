-- ROBLOX upstream: https://github.com/facebook/react-native/blob/v0.68.0-rc.2/Libraries/Components/ScrollView/ScrollViewCommands.js
--[[
  Copyright (c) Meta Platforms, Inc. and affiliates.

  This source code is licensed under the MIT license found in the
  LICENSE file in the root directory of this source tree.

  @format
  @flow strict-local
 ]]
local srcWorkspace = script.Parent.Parent.Parent
local Packages = srcWorkspace.Parent
local LuauPolyfill = require(Packages.LuauPolyfill)

type Object = LuauPolyfill.Object

-- ROBLOX deviation: inline implementation
-- local codegenNativeCommands = require(script.Parent.Parent.Parent.Utilities.codegenNativeCommands).default
local React = require(Packages.React)
type React_ElementRef<T> = React.ElementRef<T>

local exports = {}

-- ROBLOX deviation: type Double as number
type Double = number

-- ROBLOX TODO: add better, proper type
type ScrollViewNativeComponentType = Object

type NativeCommands = {
	flashScrollIndicators: (viewRef: React_ElementRef<ScrollViewNativeComponentType>) -> (),
	scrollTo: (viewRef: React_ElementRef<ScrollViewNativeComponentType>, x: Double, y: Double, animated: boolean) -> (),
	scrollToEnd: (viewRef: React_ElementRef<ScrollViewNativeComponentType>, animated: boolean) -> (),
	zoomToRect: (
		viewRef: React_ElementRef<ScrollViewNativeComponentType>,
		rect: {
			x: Double,
			y: Double,
			width: Double,
			height: Double,
			animated: boolean?,
		},
		animated: boolean?
	) -> (),
}

--[[ ROBLOX deviation: inline implementation
originally:
-- codegenNativeCommands({
-- 	supportedCommands = {
-- 		"flashScrollIndicators",
-- 		"scrollTo",
-- 		"scrollToEnd",
-- 		"zoomToRect",
-- 	},
-- })
]]
exports.default = {
	flashScrollIndicators = function(viewRef: React_ElementRef<ScrollViewNativeComponentType>)
		warn("flashScrollIndicators not implemented")
	end,
	scrollTo = function(viewRef: React_ElementRef<ScrollViewNativeComponentType>, x: number, y: number, animated: boolean)
		if animated then
			viewRef._nativeRef.animateScrollTo(x, y)
		else
			viewRef._nativeRef.current.CanvasPosition = Vector2.new(x, y)
		end
	end,
	scrollToEnd = function(viewRef: React_ElementRef<ScrollViewNativeComponentType>, animated: boolean)
		local x = if viewRef._nativeRef.current.ScrollingDirection == Enum.ScrollingDirection.Y
			then 0
			else viewRef._nativeRef.current.AbsoluteCanvasSize.X
		local y = if viewRef._nativeRef.current.ScrollingDirection == Enum.ScrollingDirection.Y
			then viewRef._nativeRef.current.AbsoluteCanvasSize.Y
			else 0

		if animated then
			viewRef._nativeRef.animateScrollTo(x, y)
		else
			viewRef._nativeRef.current.CanvasPosition = Vector2.new(x, y)
		end
	end,
	zoomToRect = function(
		viewRef: React_ElementRef<ScrollViewNativeComponentType>,
		rect: {
			x: Double,
			y: Double,
			width: Double,
			height: Double,
			animated: boolean?,
		},
		animated: boolean?
	)
		warn("zoomToRect not implemented")
	end,
} :: NativeCommands

return exports
