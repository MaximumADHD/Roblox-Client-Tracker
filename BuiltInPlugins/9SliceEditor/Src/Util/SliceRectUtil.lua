local Plugin = script.Parent.Parent.Parent
local Orientation = require(Plugin.Src.Util.Orientation)
local Types = require(Plugin.Src.Types)
local Cryo = require(Plugin.Packages.Cryo)

local SliceRectUtil = {}

local LEFT = Orientation.Left.rawValue()
local RIGHT = Orientation.Right.rawValue()
local TOP = Orientation.Top.rawValue()
local BOTTOM = Orientation.Bottom.rawValue()

function SliceRectUtil.getSliceRectFromSliceCenter(sliceCenter: Rect): Types.SliceRectType
	return { sliceCenter.Min.X, sliceCenter.Max.X, sliceCenter.Min.Y, sliceCenter.Max.Y }
end

function SliceRectUtil.getSliceCenterFromSliceRect(sliceRect: Types.SliceRectType): Rect
	return Rect.new(sliceRect[LEFT], sliceRect[TOP], sliceRect[RIGHT], sliceRect[BOTTOM])
end

function SliceRectUtil.copySliceRect(sliceRect: Types.SliceRectType): Types.SliceRectType
	return Cryo.Dictionary.join(sliceRect)
end

function SliceRectUtil.getOffsetsFromSliceRect(
	sliceRect: Types.SliceRectType,
	pixelDimensions: Vector2
): Types.SliceOffsetsType
	return {
		sliceRect[LEFT],
		pixelDimensions.X - sliceRect[RIGHT],
		sliceRect[TOP],
		pixelDimensions.Y - sliceRect[BOTTOM],
	}
end

function SliceRectUtil.getSliceRectFromOffsets(
	offsets: Types.SliceOffsetsType,
	pixelDimensions: Vector2
): Types.SliceRectType
	return { offsets[LEFT], pixelDimensions.X - offsets[RIGHT], offsets[TOP], pixelDimensions.Y - offsets[BOTTOM] }
end

return SliceRectUtil
