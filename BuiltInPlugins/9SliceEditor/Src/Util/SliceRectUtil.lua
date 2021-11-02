local Plugin = script.Parent.Parent.Parent
local Orientation = require(Plugin.Src.Util.Orientation)
local Cryo = require(Plugin.Packages.Cryo)

local SliceRectUtil = {}

local LEFT = Orientation.Left.rawValue()
local RIGHT = Orientation.Right.rawValue()
local TOP = Orientation.Top.rawValue()
local BOTTOM = Orientation.Bottom.rawValue()

export type SliceRectType = {
    [number]: number,
}

function SliceRectUtil.getSliceRectFromSliceCenter(sliceCenter: Rect): SliceRectType
	return {sliceCenter.Min.X, sliceCenter.Max.X, sliceCenter.Min.Y, sliceCenter.Max.Y}
end

function SliceRectUtil.getSliceCenterFromSliceRect(sliceRect: SliceRectType): Rect
	return Rect.new(sliceRect[LEFT], sliceRect[TOP], sliceRect[RIGHT], sliceRect[BOTTOM])
end

function SliceRectUtil.copySliceRect(sliceRect: SliceRectType): SliceRectType
    return Cryo.Dictionary.join(sliceRect)
end

return SliceRectUtil
