local IMAGE_PATH  = "rbxasset://textures/ui/Settings/ShareGame/icons.png"

local function createFrameModel(offset, size)
	return {
		offset = offset,
		size = size,
	}
end

local SHEET_MODEL = {
	frames = {
		back = createFrameModel(Vector2.new(2, 19), Vector2.new(24, 24)),
		clear = createFrameModel(Vector2.new(6, 51), Vector2.new(16, 16)),
		invite = createFrameModel(Vector2.new(2, 75), Vector2.new(24, 24)),
		search_border = createFrameModel(Vector2.new(11, 1), Vector2.new(7, 7)),
		search_large = createFrameModel(Vector2.new(3, 132), Vector2.new(22, 22)),
		search_small = createFrameModel(Vector2.new(6, 106), Vector2.new(16, 16)),
		friends = createFrameModel(Vector2.new(0, 159), Vector2.new(72, 72)),
		cross = createFrameModel(Vector2.new(4, 231), Vector2.new(24, 24)),
		modal_border = createFrameModel(Vector2.new(0, 255), Vector2.new(7, 7)),
	},
}

local ShareGameIcons = {}

function ShareGameIcons:GetFrame(key)
	return SHEET_MODEL.frames[key]
end

function ShareGameIcons:GetImagePath()
	return IMAGE_PATH
end

function ShareGameIcons:ApplyImage(guiObject, key)
	local frameModel = self:GetFrame(key)

	guiObject.Image = IMAGE_PATH
	guiObject.ImageRectOffset = frameModel.offset
	guiObject.ImageRectSize = frameModel.size
end

return ShareGameIcons
