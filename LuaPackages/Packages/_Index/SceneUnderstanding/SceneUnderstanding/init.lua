--[=[
	This is the base package for understanding the scene which is focused solely
	on interfacing with the DataModel.

	There is also [ReactSceneUnderstanding] which sits on top of
	SceneUnderstanding to provide hooks for use in React apps.

	@class SceneUnderstanding
]=]

local ViewportQueryOptions = require(script.options.ViewportQueryOptions)
local RangeQueryOptions = require(script.options.RangeQueryOptions)
local DataModelTraversalOptions = require(script.options.DataModelTraversalOptions)

export type ViewportQueryOptions = ViewportQueryOptions.ViewportQueryOptions
export type RangeQueryOptions = RangeQueryOptions.RangeQueryOptions
export type DataModelTraversalOptions = DataModelTraversalOptions.DataModelTraversalOptions

return {
	ViewportQueryOptions = ViewportQueryOptions,
	RangeQueryOptions = RangeQueryOptions,
	DataModelTraversalOptions = DataModelTraversalOptions,

	getSourceAssetsInView = require(script.getSourceAssetsInView),
	getSourceAssetsInRange = require(script.getSourceAssetsInRange),
	createLazyInstanceCollector = require(script.traversal.createLazyInstanceCollector),

	isSourceAsset = require(script.isSourceAsset),

	getAudibleVolume = require(script.audio.getAudibleVolume),
	isAudible = require(script.audio.isAudible),
}
