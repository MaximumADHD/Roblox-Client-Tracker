--[=[
	This is the base package for understanding the scene which is focused solely
	on interfacing with the DataModel.

	There is also [ReactSceneUnderstanding] which sits on top of
	SceneUnderstanding to provide hooks for use in React apps.

	@class SceneUnderstanding
]=]

local ViewportQueryOptions = require(script.options.ViewportQueryOptions)
local RangeQueryOptions = require(script.options.RangeQueryOptions)

export type ViewportQueryOptions = ViewportQueryOptions.ViewportQueryOptions
export type RangeQueryOptions = RangeQueryOptions.RangeQueryOptions

return {
	ViewportQueryOptions = ViewportQueryOptions,
	RangeQueryOptions = RangeQueryOptions,

	getSourceAssetsInView = require(script.getSourceAssetsInView),
	getSourceAssetsInRange = require(script.getSourceAssetsInRange),

	isSourceAsset = require(script.isSourceAsset),

	getAudibleVolume = require(script.audio.getAudibleVolume),
	isAudible = require(script.audio.isAudible),

	-- Private members. Do not use outside of SceneUnderstanding
	hasInternalPermission = require(script.hasInternalPermission),
}
