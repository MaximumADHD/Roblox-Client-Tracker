local UIBloxRoot = script.Parent.Parent
local Roact = require(UIBloxRoot.Parent.Roact)
local Cryo = require(UIBloxRoot.Parent.Cryo)
local t = require(UIBloxRoot.Parent.t)

local function getImageSetPath(imageSet)
	return string.format("rbxasset://textures/ui/ImageSet/%s.png", imageSet)
end

local transformPropsInput = t.tuple(t.table, t.table, t.optional(t.number))
local function transformProps(props, imageSetData, resolutionScale)
	assert(transformPropsInput(props, imageSetData, resolutionScale))

	resolutionScale = resolutionScale or 1

	if props.Image == nil then
		return props
	end

	local imageData = imageSetData[props.Image]

	-- If the image URI is not available in a image-set, let engine handle this
	if imageData == nil then
		return props
	end

	local imageSetProps = {}
	imageSetProps.Image = getImageSetPath(imageData.ImageSet)

	if props.ImageRectOffset ~= nil then
		imageSetProps.ImageRectOffset = imageData.ImageRectOffset + (props.ImageRectOffset * resolutionScale)
	else
		imageSetProps.ImageRectOffset = imageData.ImageRectOffset
	end

	if props.ImageRectSize ~= nil then
		imageSetProps.ImageRectSize = props.ImageRectSize * resolutionScale
	else
		imageSetProps.ImageRectSize = imageData.ImageRectSize
	end

	if props.SliceCenter ~= nil then
		imageSetProps.SliceCenter = Rect.new(
			props.SliceCenter.Min.X * resolutionScale,
			props.SliceCenter.Min.Y * resolutionScale,
			props.SliceCenter.Max.X * resolutionScale,
			props.SliceCenter.Max.Y * resolutionScale
		)
		if resolutionScale == 0 then
			imageSetProps.SliceScale = 0
		else
			local sliceScale = props.SliceScale or 1
			imageSetProps.SliceScale = sliceScale / resolutionScale
		end
	end

	return Cryo.Dictionary.join(props, imageSetProps)
end

local ImageSetFunctions = {
	getImageSetPath = getImageSetPath,
	transformProps = transformProps,
}

return ImageSetFunctions