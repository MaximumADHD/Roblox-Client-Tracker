local Foundation = script:FindFirstAncestor("Foundation")
local Packages = Foundation.Parent
local Dash = require(Packages.Dash)
local React = require(Packages.React)

local AssetService = game:GetService("AssetService")

local Text = require(Foundation.Components.Text)
local Types = require(Foundation.Components.Types)
local View = require(Foundation.Components.View)
type ColorStyleValue = Types.ColorStyleValue

local Device = require(Foundation.Enums.Device)
local Theme = require(Foundation.Enums.Theme)
local Tokens = require(Foundation.Providers.Style.Tokens)
local useTokens = require(Foundation.Providers.Style.useTokens)

local getBackgroundStyleWithStateLayer = require(script.Parent.getBackgroundStyleWithStateLayer)

type ImageData = {
	backgroundImage: EditableImage,
	overlayImage: EditableImage,
	resultImage: EditableImage,
	backgroundStyle: { Color3: Color3, Transparency: number },
	overlayStyle: { Color3: Color3, Transparency: number },
	resultColor3: Color3,
	resultTransparency: number,
}

-- Helper function to create an EditableImage with a solid color
local function createSolidColorImage(size: Vector2, color: Color3, transparency: number)
	local editableImage = AssetService:CreateEditableImage({ Size = size })
	local pixelsBuffer = editableImage:ReadPixelsBuffer(Vector2.zero, editableImage.Size)

	local width = size.X
	local height = size.Y
	local r = math.floor(color.R * 255)
	local g = math.floor(color.G * 255)
	local b = math.floor(color.B * 255)
	local a = math.floor((1 - transparency) * 255)

	for y = 0, height - 1 do
		for x = 0, width - 1 do
			local pixelIndex = (y * width + x) * 4
			buffer.writeu8(pixelsBuffer, pixelIndex, r)
			buffer.writeu8(pixelsBuffer, pixelIndex + 1, g)
			buffer.writeu8(pixelsBuffer, pixelIndex + 2, b)
			buffer.writeu8(pixelsBuffer, pixelIndex + 3, a)
		end
	end

	editableImage:WritePixelsBuffer(Vector2.zero, editableImage.Size, pixelsBuffer)
	return editableImage
end

local function BlendingVisualization(props)
	local controls = props.controls

	local tokens = useTokens()

	-- Store all generated images in state
	local images, setImages = React.useState({} :: { ImageData })

	-- Generate all images when controls change
	React.useEffect(
		function()
			local newImages = {}
			local imagesToCleanup = {}

			for i, backgroundColorToken in tokens.Color.Extended[controls.backgroundColor] do
				for j, overlayColorToken in tokens.Color.Extended[controls.overlayColor] do
					if backgroundColorToken ~= overlayColorToken then
						local width = tokens.Size.Size_1400
						local height = tokens.Size.Size_2000
						local imageSize = Vector2.new(width, height)

						-- Create background image
						local backgroundImage = createSolidColorImage(
							imageSize,
							backgroundColorToken.Color3,
							controls.backgroundTransparency
						)
						table.insert(imagesToCleanup, backgroundImage)

						-- Create overlay image
						local overlayImage =
							createSolidColorImage(imageSize, overlayColorToken.Color3, controls.overlayTransparency)
						table.insert(imagesToCleanup, overlayImage)

						-- Create result image by combining
						local resultHeight = tokens.Size.Size_2800
						local resultImageSize = Vector2.new(width, resultHeight)
						local resultImage = AssetService:CreateEditableImage({ Size = resultImageSize })
						table.insert(imagesToCleanup, resultImage)

						-- Initialize with transparent pixels
						local resultBuffer = resultImage:ReadPixelsBuffer(Vector2.zero, resultImage.Size)
						for k = 0, (width * resultHeight * 4) - 1 do
							buffer.writeu8(resultBuffer, k, 0)
						end
						resultImage:WritePixelsBuffer(Vector2.zero, resultImage.Size, resultBuffer)

						-- Draw background first
						resultImage:DrawImage(Vector2.zero, backgroundImage, Enum.ImageCombineType.Overwrite)
						-- Then overlay with the selected combine type at offset
						local overlayOffset = Vector2.new(0, tokens.Size.Size_800)
						resultImage:DrawImage(overlayOffset, overlayImage, controls.imageCombineType)

						-- Read the resulting color from the overlapping region
						local sampleBuffer =
							resultImage:ReadPixelsBuffer(Vector2.new(0, tokens.Size.Size_800 + 10), Vector2.new(1, 1))
						local r = buffer.readu8(sampleBuffer, 0)
						local g = buffer.readu8(sampleBuffer, 1)
						local b = buffer.readu8(sampleBuffer, 2)
						local a = buffer.readu8(sampleBuffer, 3)
						-- selene: allow(roblox_internal_custom_color)
						local resultColor3 = Color3.fromRGB(r, g, b)
						local resultTransparency = 1 - (a / 255)

						newImages[i .. "-" .. j] = {
							backgroundImage = backgroundImage,
							overlayImage = overlayImage,
							resultImage = resultImage,
							backgroundStyle = {
								Color3 = backgroundColorToken.Color3,
								Transparency = controls.backgroundTransparency,
							},
							overlayStyle = {
								Color3 = overlayColorToken.Color3,
								Transparency = controls.overlayTransparency,
							},
							resultColor3 = resultColor3,
							resultTransparency = resultTransparency,
						}
					end
				end
			end

			setImages(newImages)

			-- Cleanup function
			return function()
				for _, image in imagesToCleanup do
					image:Destroy()
				end
			end
		end,
		{
			controls.imageCombineType,
			controls.backgroundTransparency,
			controls.overlayTransparency,
			controls.backgroundColor,
			controls.overlayColor,
		} :: { unknown }
	)

	local children = {}
	for key, imageData in images do
		local resultTransparency = string.format("%.2f", imageData.resultTransparency)
		children[key] = React.createElement(View, {
			tag = "row auto-xy gap-large",
		}, {
			Container = React.createElement(View, {
				tag = "auto-xy size-0-0",
			}, {
				-- Background rectangle
				Background = if not controls.showEditableImage
					then React.createElement("ImageLabel", {
						Size = UDim2.fromOffset(tokens.Size.Size_1400, tokens.Size.Size_2000),
						ImageContent = Content.fromObject(imageData.backgroundImage),
						BackgroundTransparency = 1,
						BorderSizePixel = 0,
					})
					else nil,
				-- Overlay rectangle - overlapping
				Overlay = if not controls.showEditableImage
					then React.createElement("ImageLabel", {
						Size = UDim2.fromOffset(tokens.Size.Size_1400, tokens.Size.Size_2000),
						ImageContent = Content.fromObject(imageData.overlayImage),
						Position = UDim2.fromOffset(0, tokens.Size.Size_800),
						BackgroundTransparency = 1,
						BorderSizePixel = 0,
						ZIndex = 2,
					})
					else nil,
				-- Editable image alternative (to compare with overlapping frames, and see other blending methods)
				EditableImage = if controls.showEditableImage
					then React.createElement("ImageLabel", {
						Size = UDim2.fromOffset(tokens.Size.Size_1400, tokens.Size.Size_2800),
						ImageContent = Content.fromObject(imageData.resultImage),
						BackgroundTransparency = 1,
						BorderSizePixel = 0,
					})
					else nil,
				-- Result
				ResultEditableImage = React.createElement(View, {
					tag = "size-1400-1400",
					backgroundStyle = {
						Color3 = imageData.resultColor3,
						Transparency = imageData.resultTransparency,
					},
					Position = UDim2.fromOffset(tokens.Size.Size_1400, 0),
				}),
				ResultBlended = React.createElement(View, {
					tag = "size-1400-1400",
					backgroundStyle = getBackgroundStyleWithStateLayer(
						imageData.backgroundStyle,
						imageData.overlayStyle
					),
					Position = UDim2.fromOffset(tokens.Size.Size_1400, tokens.Size.Size_1400),
				}),
				Details = React.createElement(Text, {
					tag = "auto-y size-2800-0 wraps text-caption-small",
					Position = UDim2.fromOffset(0, tokens.Size.Size_2800 + tokens.Gap.Large),
					Text = `Background: #{tostring(imageData.backgroundStyle.Color3:ToHex())}, {controls.backgroundTransparency}`
						.. `\nOverlay: #{tostring(imageData.overlayStyle.Color3:ToHex())}, {controls.overlayTransparency}`
						.. `\nResult: #{tostring(imageData.resultColor3:ToHex())}, {resultTransparency}`,
				}),
			}),
		})
	end

	return React.createElement(View, {
		tag = "row flex wrap size-full-0 auto-y gap-xlarge",
	}, children)
end

local tokens = Tokens.getTokens(Device.Console, Theme.Dark)

return {
	summary = "Visualizes results of getBackgroundStyleWithStateLayer, allowing a comparison with blending approaches used by EditableImages",
	story = BlendingVisualization,
	controls = {
		backgroundTransparency = 0.5,
		overlayTransparency = 0.5,
		backgroundColor = Dash.keys(tokens.Color.Extended),
		overlayColor = Dash.keys(tokens.Color.Extended),
		imageCombineType = Enum.ImageCombineType:GetEnumItems(),
		showEditableImage = true,
	},
}
