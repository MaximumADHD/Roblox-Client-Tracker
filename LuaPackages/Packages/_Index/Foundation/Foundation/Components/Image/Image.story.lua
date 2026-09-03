local Foundation = script:FindFirstAncestor("Foundation")
local Packages = Foundation.Parent

local Dash = require(Packages.Dash)
local React = require(Packages.React)
local Assets = require(Packages.FoundationCloudAssets).Assets

local AssetService = game:GetService("AssetService")

local Flags = require(Foundation.Utility.Flags)
local Image = require(Foundation.Components.Image)
local Text = require(Foundation.Components.Text)
local View = require(Foundation.Components.View)
local useTokens = require(Foundation.Providers.Style.useTokens)

local ThumbnailSize = require(Foundation.Enums.ThumbnailSize)
local ThumbnailType = require(Foundation.Enums.ThumbnailType)
local getRbxThumb = require(Foundation.Utility.getRbxThumb)
type ThumbnailSize = ThumbnailSize.ThumbnailSize
local ControlState = require(Foundation.Enums.ControlState)
type ControlState = ControlState.ControlState

local RING_COLORS = {
	{ 255, 91, 184 },
	{ 84, 220, 255 },
	{ 255, 218, 92 },
}

local function drawRingFrame(image: EditableImage, center: Vector2?, progress: number?)
	local size = image.Size
	local pixelsBuffer = image:ReadPixelsBuffer(Vector2.zero, size)
	local maxRadius = if center
		then math.max(
			(center - Vector2.zero).Magnitude,
			(center - Vector2.new(size.X, 0)).Magnitude,
			(center - Vector2.new(0, size.Y)).Magnitude,
			(center - size).Magnitude
		) + (#RING_COLORS - 1) * 18 + 4
		else 0

	for y = 0, size.Y - 1 do
		for x = 0, size.X - 1 do
			local index = (y * size.X + x) * 4
			local r, g, b, a = 0, 0, 0, 0

			if center and progress then
				local distance = (Vector2.new(x, y) - center).Magnitude
				for ringIndex = 0, #RING_COLORS - 1 do
					local radius = progress * maxRadius - ringIndex * 18
					if radius >= 0 and math.abs(distance - radius) < 3 then
						local color = RING_COLORS[ringIndex + 1]
						r, g, b = color[1], color[2], color[3]
						a = 255
						break
					end
				end
			end

			buffer.writeu8(pixelsBuffer, index, r)
			buffer.writeu8(pixelsBuffer, index + 1, g)
			buffer.writeu8(pixelsBuffer, index + 2, b)
			buffer.writeu8(pixelsBuffer, index + 3, a)
		end
	end

	image:WritePixelsBuffer(Vector2.zero, size, pixelsBuffer)
end

local function createEditableImage(size: Vector2): EditableImage?
	local success, editableImage = pcall(function()
		return AssetService:CreateEditableImage({ Size = size })
	end)
	if not success then
		return nil
	end

	local image = editableImage :: EditableImage
	drawRingFrame(image, nil, nil)
	return image
end

local function AssetStory()
	local tokens = useTokens()
	return React.createElement(
		View,
		{
			backgroundStyle = {
				Transparency = 0.5,
			},
			tag = "col gap-large auto-xy padding-small",
		},
		React.createElement(Image, {
			Image = "rbxassetid://7229442422",
			backgroundStyle = tokens.Color.Extended.White.White_100,
			tag = "size-2800",
		}),
		React.createElement(
			Image,
			{
				Image = "component_assets/circle_22_stroke_3",
				slice = {
					center = Rect.new(11, 11, 12, 12),
				},
				backgroundStyle = tokens.Color.Extended.White.White_0,
				tag = "col align-x-center align-y-center size-2800-800",
			},
			React.createElement(Text, {
				Text = "Slice Center",
				AutomaticSize = Enum.AutomaticSize.XY,
				textStyle = tokens.Color.Content.Emphasis,
			})
		)
	)
end

local function StoryGuiState()
	local guiState, setGuiState = React.useBinding(ControlState.Initialize :: ControlState)
	local tokens = useTokens()

	local function onStateChanged(new: ControlState)
		setGuiState(new)
	end

	return React.createElement(Image, {
		Image = guiState:map(function(state)
			if state == ControlState.Default then
				return getRbxThumb(ThumbnailType.Asset, 23155839, ThumbnailSize.Large)
			elseif state == ControlState.Hover then
				return getRbxThumb(ThumbnailType.Asset, 23155842, ThumbnailSize.Large)
			elseif state == ControlState.Pressed then
				return getRbxThumb(ThumbnailType.Asset, 23155847, ThumbnailSize.Large)
			end
			return getRbxThumb(ThumbnailType.Asset, 23155833, ThumbnailSize.Large)
		end),
		backgroundStyle = tokens.Color.Extended.Purple.Purple_500,
		tag = "col align-x-center align-y-center size-2800",
		onStateChanged = onStateChanged,
	})
end

local function ImageSliceWithChildren()
	local tokens = useTokens()

	return React.createElement(Image, {
		tag = "auto-xy",
		slice = {
			center = Rect.new(52, 24, 66, 32),
			scale = 1,
		},
		backgroundStyle = {
			Transparency = 1,
		},
		Image = "rbxassetid://78323814447735",
		ScaleType = Enum.ScaleType.Slice,
	}, {
		DialogueSpeechBubbleInner = React.createElement(View, {
			tag = "gap-large auto-xy",
			padding = {
				top = UDim.new(0, 30),
				bottom = UDim.new(0, 40),
				left = UDim.new(0, 64),
				right = UDim.new(0, 32),
			},
		}, {
			SpeakerContainer = React.createElement(View, {
				tag = "size-1500",
				LayoutOrder = 1,
			}, {
				Outer = React.createElement(Image, {
					tag = "position-center-center anchor-center-center",
					Image = "component_assets/circle_36",
					Size = UDim2.fromOffset(60, 60),
					imageStyle = tokens.Color.None,
					ZIndex = 0,
				}),
				Inner = React.createElement(Image, {
					tag = "position-center-center anchor-center-center",
					Image = "component_assets/circle_36",
					Size = UDim2.fromOffset(60, 60),
					scale = 1,
					imageStyle = tokens.Color.None,
					ZIndex = 1,
				}),
				SpeakerIcon = React.createElement(Image, {
					tag = "position-center-center anchor-center-center",
					Image = "icons/controls/speaker",
					Size = UDim2.fromOffset(32, 32),
					imageStyle = tokens.Color.Extended.Gray.Gray_300,
					ZIndex = 2,
				}),
			}),
		}),
	})
end

local function PlaygroundStory(props)
	return React.createElement(View, {
		tag = "row align-y-top gap-xlarge auto-xy",
	}, {
		ImageAsset = React.createElement(View, {
			tag = "col gap-small auto-xy",
			LayoutOrder = 1,
		}, {
			Label = React.createElement(Text, {
				Text = "image",
				tag = "self-center text-body-small text-align-x-center content-emphasis",
				AutomaticSize = Enum.AutomaticSize.XY,
				LayoutOrder = 1,
			}),
			Image = React.createElement(Image, {
				Image = props.controls.image,
				tag = "size-2800 content-emphasis",
				LayoutOrder = 2,
			}),
		}),
		CloudAsset = React.createElement(View, {
			tag = "col gap-small auto-xy",
			LayoutOrder = 2,
		}, {
			Label = React.createElement(Text, {
				Text = "cloudAsset",
				tag = "self-center text-body-small text-align-x-center content-emphasis",
				AutomaticSize = Enum.AutomaticSize.XY,
				LayoutOrder = 1,
			}),
			Image = React.createElement(Image, {
				Image = props.controls.cloudAsset,
				tag = "size-2800 content-emphasis",
				LayoutOrder = 2,
			}),
		}),
	})
end

local function InteractiveEditableImageStory()
	local editableImage, setEditableImage = React.useState(nil :: EditableImage?)
	local animationId = React.useRef(0)

	React.useEffect(function()
		local createdImage = createEditableImage(Vector2.new(128, 128))
		setEditableImage(createdImage)

		return function()
			animationId.current += 1
			if createdImage then
				createdImage:Destroy()
			end
		end
	end, {})

	local onActivated = React.useCallback(function(guiObject: GuiObject, inputObject: InputObject)
		if not editableImage then
			return
		end

		local inputPosition = Vector2.new(inputObject.Position.X, inputObject.Position.Y)
		local relativePosition = inputPosition - guiObject.AbsolutePosition
		local absoluteSize = guiObject.AbsoluteSize
		local center = Vector2.new(
			relativePosition.X / math.max(absoluteSize.X, 1) * editableImage.Size.X,
			relativePosition.Y / math.max(absoluteSize.Y, 1) * editableImage.Size.Y
		)

		animationId.current += 1
		local currentAnimationId = animationId.current
		task.spawn(function()
			for frame = 0, 24 do
				if animationId.current ~= currentAnimationId then
					return
				end
				drawRingFrame(editableImage, center, frame / 24)
				for _ = 0, 5 do
					task.wait()
				end
			end
		end)
	end, { editableImage })

	return React.createElement(View, {
		tag = "col align-x-center gap-small auto-xy",
	}, {
		Label = React.createElement(Text, {
			Text = "Click for EditableImage rings",
			tag = "auto-xy text-body-small content-emphasis",
			LayoutOrder = 1,
		}),
		Image = if editableImage
			then React.createElement(Image, {
				ImageContent = Content.fromObject(editableImage),
				tag = "bg-surface-100",
				Size = UDim2.fromOffset(360, 360),
				ScaleType = Enum.ScaleType.Stretch,
				LayoutOrder = 2,
				onActivated = onActivated,
			})
			else React.createElement(Text, {
				Text = "EditableImage unavailable in this environment",
				tag = "size-2800-800 text-caption-small text-wrap text-align-x-center content-default",
				LayoutOrder = 2,
			}),
	})
end

local function ImageContentStory()
	if not Flags.FoundationImageContentSupport then
		return React.createElement(Text, {
			Text = "Enable FoundationImageContentSupport to view this story.",
			tag = "auto-xy text-body-medium content-default",
		})
	end

	return React.createElement(InteractiveEditableImageStory)
end

return {
	base = true,
	summary = "Image",
	stories = {
		{
			name = "Playground",
			story = PlaygroundStory :: unknown,
		},
		{
			name = "Basic Image",
			story = function()
				return React.createElement(View, {
					tag = "row gap-xlarge auto-xy",
				}, {
					NoBinding = React.createElement(View, {
						tag = "col gap-small auto-xy",
					}, {
						Text = React.createElement(Text, {
							tag = "self-center text-body-small text-align-x-center content-emphasis",
							Text = "No Image binding",
							AutomaticSize = Enum.AutomaticSize.XY,
							LayoutOrder = 1,
						}),
						Image = React.createElement(Image, {
							Image = "icons/graphic/success_xlarge",
							tag = "size-2800",
							LayoutOrder = 2,
						}),
					}),
					WithBinding = React.createElement(View, {
						tag = "col gap-small auto-xy",
					}, {
						Text = React.createElement(Text, {
							tag = "self-center text-body-small text-align-x-center content-emphasis",
							Text = "With Image binding",
							AutomaticSize = Enum.AutomaticSize.XY,
							LayoutOrder = 1,
						}),
						Image = React.createElement(Image, {
							Image = React.createBinding("icons/graphic/success_xlarge"),
							tag = "size-2800",
							LayoutOrder = 2,
						}),
					}),
				})
			end :: unknown,
		},
		{
			name = "Basic Asset Use",
			story = AssetStory,
		},
		{
			name = "GUI State Use",
			story = StoryGuiState,
		},
		{
			name = "Custom 9-slice Image",
			story = function(props)
				return React.createElement(ImageSliceWithChildren, props)
			end,
		},
		{
			name = "Interactive EditableImage",
			story = ImageContentStory,
		},
	},
	controls = {
		image = {
			"icons/graphic/success_xlarge",
			"icons/status/oof_xlarge",
			"component_assets/circle_22_stroke_3",
		},
		cloudAsset = Dash.keys(Assets),
	},
}
