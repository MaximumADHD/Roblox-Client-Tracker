local IMAGE_PATH  = "rbxasset://textures/ui/Settings/ShareGame/icons.png"

local function createFrameModel(offset, size)
	return {
		offset = offset,
		size = size,
	}
end

local SHEET_MODEL = {
	frames = {
		back = createFrameModel(Vector2.new(2, 30), Vector2.new(24, 24)),
		clear = createFrameModel(Vector2.new(6, 62), Vector2.new(16, 16)),
		invite = createFrameModel(Vector2.new(2, 86), Vector2.new(24, 24)),
		search_border = createFrameModel(Vector2.new(11, 11), Vector2.new(7, 7)),
		search_large = createFrameModel(Vector2.new(3, 143), Vector2.new(22, 22)),
		search_small = createFrameModel(Vector2.new(6, 117), Vector2.new(16, 16)),
		friends = createFrameModel(Vector2.new(0, 170), Vector2.new(72, 72)),
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
