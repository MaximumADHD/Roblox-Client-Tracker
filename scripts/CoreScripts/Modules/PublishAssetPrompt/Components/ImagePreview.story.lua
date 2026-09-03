local AssetService = game:GetService("AssetService")
local CorePackages = game:GetService("CorePackages")

local Roact = require(CorePackages.Packages.Roact)

local ImagePreview = require(script.Parent.ImagePreview)

local IMAGE_SIZE = 64
local SHAPE_INSET = 16
-- Matches DELAYED_INPUT_ANIM_SEC, the window the prompt keeps Submit disabled for.
local AUTO_ROTATE_SECONDS = 3

-- The prompt is handed a Decal's TextureContent, so build in-memory images rather than uploaded
-- assets. `shade` is the grey level of the centered square; `backgroundAlpha` of 0 leaves the
-- surrounding pixels transparent, which is the case the background swatches exist for.
local function makeImageContent(shade: number, backgroundAlpha: number): Content
	local image = AssetService:CreateEditableImage({ Size = Vector2.new(IMAGE_SIZE, IMAGE_SIZE) })
	local pixels = buffer.create(IMAGE_SIZE * IMAGE_SIZE * 4)
	local offset = 0

	for y = 1, IMAGE_SIZE do
		for x = 1, IMAGE_SIZE do
			local insideShape = x > SHAPE_INSET
				and x <= IMAGE_SIZE - SHAPE_INSET
				and y > SHAPE_INSET
				and y <= IMAGE_SIZE - SHAPE_INSET
			local value = if insideShape then shade else 255
			buffer.writeu8(pixels, offset, value)
			buffer.writeu8(pixels, offset + 1, value)
			buffer.writeu8(pixels, offset + 2, value)
			buffer.writeu8(pixels, offset + 3, if insideShape then 255 else backgroundAlpha)
			offset += 4
		end
	end

	image:WritePixelsBuffer(Vector2.zero, Vector2.new(IMAGE_SIZE, IMAGE_SIZE), pixels)
	return Content.fromObject(image)
end

-- Built once so each re-render isn't handed a fresh image.
local nearWhiteOnTransparent = makeImageContent(250, 0)
local darkOnOpaqueWhite = makeImageContent(40, 255)

-- ImagePreview fills its parent, so every story supplies an explicitly sized container. The
-- container is deliberately non-square to show the preview holding a square aspect ratio.
local function inContainer(width: number, height: number, imageContent: Content, autoRotateSeconds: number?)
	return Roact.createElement("Frame", {
		Size = UDim2.fromOffset(width, height),
		BackgroundColor3 = Color3.fromRGB(45, 47, 52),
		BorderSizePixel = 0,
	}, {
		Preview = Roact.createElement(ImagePreview, {
			imageContent = imageContent,
			autoRotateSeconds = autoRotateSeconds,
		}),
	})
end

return {
	summary = "The image preview shown in the publish prompt, with the background swatches that let "
		.. "a creator check their image against black, white, and transparent (checkered) backdrops. "
		.. "The NearWhiteShapeOnTransparent story is the case the swatches exist for: the shape is "
		.. "invisible against white but visible against black and the checkerboard.",
	stories = {
		NearWhiteShapeOnTransparent = function()
			return inContainer(280, 250, nearWhiteOnTransparent)
		end,
		-- Mirrors the prompt, where the backdrop cycles for as long as Submit stays disabled.
		AutoRotating = function()
			return inContainer(280, 250, nearWhiteOnTransparent, AUTO_ROTATE_SECONDS)
		end,
		DarkShapeOnOpaqueWhite = function()
			return inContainer(280, 250, darkOnOpaqueWhite)
		end,
		WideContainer = function()
			return inContainer(360, 220, nearWhiteOnTransparent)
		end,
		TallContainer = function()
			return inContainer(200, 320, nearWhiteOnTransparent)
		end,
	},
}
