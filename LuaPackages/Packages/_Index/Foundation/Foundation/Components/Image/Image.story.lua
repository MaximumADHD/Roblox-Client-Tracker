local Foundation = script:FindFirstAncestor("Foundation")
local Packages = Foundation.Parent

local React = require(Packages.React)

local AssetService = game:GetService("AssetService")

local Image = require(Foundation.Components.Image)
local MatrixGridShared = require(Foundation.Utility.Stories.Shared.MatrixGrid)
local StorySection = require(Foundation.Utility.Stories.Shared.StorySection)
local Text = require(Foundation.Components.Text)
local Types = require(Foundation.Components.Types)
local View = require(Foundation.Components.View)
local useTokens = require(Foundation.Providers.Style.useTokens)

local ControlState = require(Foundation.Enums.ControlState)
local ThumbnailSize = require(Foundation.Enums.ThumbnailSize)
local ThumbnailType = require(Foundation.Enums.ThumbnailType)
local getRbxThumb = require(Foundation.Utility.getRbxThumb)

type ColorStyle = Types.ColorStyle
type ControlState = ControlState.ControlState
type MatrixGridRow = MatrixGridShared.MatrixGridRow

local matrixLabel = MatrixGridShared.matrixLabel

local Section = StorySection.Section
local LabeledCell = StorySection.LabeledCell
local MatrixSection = StorySection.MatrixSection
local StoryMatrixGrid = StorySection.StoryMatrixGrid
local STORY_FRAME_TAG = StorySection.STORY_FRAME_TAG
local STORY_PAGE_TAG = StorySection.STORY_PAGE_TAG

local IMAGE_SET_KEY = "icons/graphic/success_xlarge"
local RING_KEY = "component_assets/circle_22_stroke_3"
local CLOUD_ASSET_KEY = "pictograms/celebrate"
local THUMBNAIL_URI = getRbxThumb(ThumbnailType.Asset, 23155839, ThumbnailSize.Large)

local CELL_SIZE = UDim2.fromOffset(160, 160)
local WIDE_CELL_SIZE = UDim2.fromOffset(160, 100)
local SLICE_SIZE = UDim2.fromOffset(200, 72)
local DIMENSION_WIDE_SIZE = UDim2.fromOffset(240, 100)
local DIMENSION_TALL_SIZE = UDim2.fromOffset(100, 240)
local EDITABLE_IMAGE_SIZE = UDim2.fromOffset(240, 240)
local EDITABLE_IMAGE_RESOLUTION = Vector2.new(128, 128)
-- Puts every ring inside the buffer; at progress 1 they have all expanded past its corners.
local EDITABLE_IMAGE_SEED_PROGRESS = 0.5

local SURFACE_TAG = "bg-surface-200"
local TINT_TAG = "content-emphasis"
local UPSCALE_TAG = "size-3000"

local NARROW_COLUMN_WIDTH = 140
local CELL_COLUMN_WIDTH = 180
local WIDE_COLUMN_WIDTH = 220
local SLICE_COLUMN_WIDTH = 250
local LABEL_COLUMN_WIDTH = 130

local RING_SLICE_CENTER = Rect.new(11, 11, 12, 12)
local CROP_SIZE = Vector2.new(210, 210)

local SPEECH_BUBBLE_URI = "rbxassetid://78323814447735"
local SPEECH_BUBBLE_SLICE_CENTER = Rect.new(52, 24, 66, 32)
-- Left and bottom clear the tail; top and right clear the rounded border.
local SPEECH_BUBBLE_PADDING = {
	top = UDim.new(0, 30),
	bottom = UDim.new(0, 40),
	left = UDim.new(0, 64),
	right = UDim.new(0, 32),
}
local SPEECH_BUBBLE_WRAP_WIDTH = 220

local RING_COLORS = {
	{ 255, 91, 184 },
	{ 84, 220, 255 },
	{ 255, 218, 92 },
}

local SIZE_PRESET_SQUARE = "Square"
local SIZE_PRESET_WIDE = "Wide"
local SIZE_PRESET_TALL = "Tall"

local SIZE_PRESET_ORDER: { string } = {
	SIZE_PRESET_SQUARE,
	SIZE_PRESET_WIDE,
	SIZE_PRESET_TALL,
}

local SCALE_TYPE_PRESET_DEFAULT = "Default"
local SCALE_TYPE_PRESET_STRETCH = "Stretch"
local SCALE_TYPE_PRESET_FIT = "Fit"
local SCALE_TYPE_PRESET_CROP = "Crop"
local SCALE_TYPE_PRESET_TILE = "Tile"

local SCALE_TYPE_PRESET_ORDER: { string } = {
	SCALE_TYPE_PRESET_DEFAULT,
	SCALE_TYPE_PRESET_STRETCH,
	SCALE_TYPE_PRESET_FIT,
	SCALE_TYPE_PRESET_CROP,
	SCALE_TYPE_PRESET_TILE,
}

local RESAMPLE_MODE_PRESET_DEFAULT = "Default"
local RESAMPLE_MODE_PRESET_PIXELATED = "Pixelated"

local RESAMPLE_MODE_PRESET_ORDER: { string } = {
	RESAMPLE_MODE_PRESET_DEFAULT,
	RESAMPLE_MODE_PRESET_PIXELATED,
}

local IMAGE_STYLE_PRESET_DEFAULT = "Default"
local IMAGE_STYLE_PRESET_TINT = "Tint"
local IMAGE_STYLE_PRESET_FADED = "Faded"

local IMAGE_STYLE_PRESET_ORDER: { string } = {
	IMAGE_STYLE_PRESET_DEFAULT,
	IMAGE_STYLE_PRESET_TINT,
	IMAGE_STYLE_PRESET_FADED,
}

local SOURCE_OPTIONS: { string } = {
	IMAGE_SET_KEY,
	CLOUD_ASSET_KEY,
	THUMBNAIL_URI,
}

local SOURCE_HEADERS: { string } = {
	"Image set key",
	"Cloud asset key",
	"Asset URI",
}

local DIMENSION_SIZES: { UDim2 } = {
	CELL_SIZE,
	DIMENSION_WIDE_SIZE,
	DIMENSION_TALL_SIZE,
}

local DIMENSION_HEADERS: { string } = {
	"UDim2.fromOffset(160, 160)",
	"UDim2.fromOffset(240, 100)",
	"UDim2.fromOffset(100, 240)",
}

local IMAGE_RECT_HEADERS: { string } = {
	"Unset",
	"offset (0, 0), size (210, 210)",
	"offset (210, 210), size (210, 210)",
}

local IMAGE_STYLE_HEADERS: { string } = {
	"Unset",
	"tokens.Color.Content.Emphasis",
	"{ Transparency = 0.5 }",
}

local SLICE_HEADERS: { string } = {
	"Unset",
	"center Rect.new(11, 11, 12, 12)",
	"center Rect.new(11, 11, 12, 12), scale 2",
}

local SCALE_TYPE_HEADERS: { string } = {
	"Stretch",
	"Fit",
	"Crop",
	"Tile",
}

local SCALE_TYPES: { Enum.ScaleType } = {
	Enum.ScaleType.Stretch,
	Enum.ScaleType.Fit,
	Enum.ScaleType.Crop,
	Enum.ScaleType.Tile,
}

local TILE_SIZE_HEADERS: { string } = {
	"UDim2.fromScale(0.5, 0.5)",
	"UDim2.fromOffset(48, 48)",
}

local TILE_SIZES: { UDim2 } = {
	UDim2.fromScale(0.5, 0.5),
	UDim2.fromOffset(48, 48),
}

local RESAMPLE_MODE_HEADERS: { string } = {
	"Default",
	"Pixelated",
}

local RESAMPLE_MODES: { Enum.ResamplerMode } = {
	Enum.ResamplerMode.Default,
	Enum.ResamplerMode.Pixelated,
}

local ASPECT_RATIO_HEADERS: { string } = {
	"Cloud asset key, aspectRatio = 0.75",
	"Thumbnail URI, aspectRatio = 0.75",
}

local CALLER_ASPECT_RATIO = 0.75

local function sizeForPreset(preset: string): UDim2
	if preset == SIZE_PRESET_WIDE then
		return DIMENSION_WIDE_SIZE
	elseif preset == SIZE_PRESET_TALL then
		return DIMENSION_TALL_SIZE
	end
	return CELL_SIZE
end

local function scaleTypeForPreset(preset: string): Enum.ScaleType?
	if preset == SCALE_TYPE_PRESET_STRETCH then
		return Enum.ScaleType.Stretch
	elseif preset == SCALE_TYPE_PRESET_FIT then
		return Enum.ScaleType.Fit
	elseif preset == SCALE_TYPE_PRESET_CROP then
		return Enum.ScaleType.Crop
	elseif preset == SCALE_TYPE_PRESET_TILE then
		return Enum.ScaleType.Tile
	end
	return nil
end

local function resampleModeForPreset(preset: string): Enum.ResamplerMode?
	return if preset == RESAMPLE_MODE_PRESET_PIXELATED then Enum.ResamplerMode.Pixelated else nil
end

type PlaygroundControls = {
	Image: string,
	sizePreset: string,
	scaleTypePreset: string,
	resampleModePreset: string,
	imageStylePreset: string,
}

local function PlaygroundStory(props: { controls: PlaygroundControls }): React.ReactNode
	local controls = props.controls
	local tokens = useTokens()

	local imageStyle: ColorStyle? = if controls.imageStylePreset == IMAGE_STYLE_PRESET_TINT
		then tokens.Color.Content.Emphasis
		elseif controls.imageStylePreset == IMAGE_STYLE_PRESET_FADED then { Transparency = 0.5 }
		else nil

	return React.createElement(View, {
		tag = `col gap-large auto-xy {STORY_FRAME_TAG}`,
	}, {
		Image = React.createElement(Image, {
			Image = controls.Image,
			tag = SURFACE_TAG,
			Size = sizeForPreset(controls.sizePreset),
			ScaleType = scaleTypeForPreset(controls.scaleTypePreset),
			ResampleMode = resampleModeForPreset(controls.resampleModePreset),
			imageStyle = imageStyle,
			LayoutOrder = 1,
		}),
	})
end

local function SizingStory(): React.ReactNode
	local dimensionCells: { React.ReactNode } = {}
	for index, size in DIMENSION_SIZES do
		dimensionCells[index] = React.createElement(Image, {
			Image = THUMBNAIL_URI,
			tag = SURFACE_TAG,
			Size = size,
		})
	end

	return React.createElement(View, {
		tag = `col gap-xxlarge {STORY_PAGE_TAG}`,
	}, {
		Dimensions = React.createElement(MatrixSection, {
			LayoutOrder = 1,
			name = "Dimensions",
			showLabelColumn = false,
			columnHeaders = DIMENSION_HEADERS,
			cellColumnWidth = WIDE_COLUMN_WIDTH,
			rows = {
				{
					cells = dimensionCells,
				},
			} :: { MatrixGridRow },
		}),
		AspectRatio = React.createElement(MatrixSection, {
			LayoutOrder = 2,
			name = "Aspect ratio",
			note = "A cloud-asset key derives aspectRatio from the asset's intrinsic size, so the value a caller passes is discarded.",
			showLabelColumn = false,
			columnHeaders = ASPECT_RATIO_HEADERS,
			cellColumnWidth = WIDE_COLUMN_WIDTH,
			rows = {
				{
					cells = {
						React.createElement(Image, {
							Image = CLOUD_ASSET_KEY,
							tag = SURFACE_TAG,
							aspectRatio = CALLER_ASPECT_RATIO,
							Size = CELL_SIZE,
						}),
						React.createElement(Image, {
							Image = THUMBNAIL_URI,
							tag = SURFACE_TAG,
							aspectRatio = CALLER_ASPECT_RATIO,
							Size = CELL_SIZE,
						}),
					},
				},
			} :: { MatrixGridRow },
		}),
	})
end

local function ImageStyleStory(): React.ReactNode
	local tokens = useTokens()

	return React.createElement(View, {
		tag = `col gap-xxlarge {STORY_PAGE_TAG}`,
	}, {
		Styles = React.createElement(StoryMatrixGrid, {
			LayoutOrder = 1,
			showLabelColumn = false,
			columnHeaders = IMAGE_STYLE_HEADERS,
			cellColumnWidth = CELL_COLUMN_WIDTH,
			rows = {
				{
					cells = {
						React.createElement(Image, {
							Image = IMAGE_SET_KEY,
							tag = UPSCALE_TAG,
						}),
						React.createElement(Image, {
							Image = IMAGE_SET_KEY,
							tag = UPSCALE_TAG,
							imageStyle = tokens.Color.Content.Emphasis,
						}),
						React.createElement(Image, {
							Image = IMAGE_SET_KEY,
							tag = UPSCALE_TAG,
							imageStyle = { Transparency = 0.5 },
						}),
					},
				},
			} :: { MatrixGridRow },
		}),
	})
end

local function SliceStory(): React.ReactNode
	return React.createElement(View, {
		tag = `col gap-xxlarge {STORY_PAGE_TAG}`,
	}, {
		Slices = React.createElement(StoryMatrixGrid, {
			LayoutOrder = 1,
			showLabelColumn = false,
			columnHeaders = SLICE_HEADERS,
			cellColumnWidth = SLICE_COLUMN_WIDTH,
			rows = {
				{
					cells = {
						React.createElement(Image, {
							Image = RING_KEY,
							tag = TINT_TAG,
							Size = SLICE_SIZE,
						}),
						React.createElement(Image, {
							Image = RING_KEY,
							tag = TINT_TAG,
							slice = { center = RING_SLICE_CENTER },
							Size = SLICE_SIZE,
						}),
						React.createElement(Image, {
							Image = RING_KEY,
							tag = TINT_TAG,
							slice = { center = RING_SLICE_CENTER, scale = 2 },
							Size = SLICE_SIZE,
						}),
					},
				},
			} :: { MatrixGridRow },
		}),
	})
end

local function ScaleTypeStory(): React.ReactNode
	local scaleTypeCells: { React.ReactNode } = {}
	for index, scaleType in SCALE_TYPES do
		scaleTypeCells[index] = React.createElement(Image, {
			Image = THUMBNAIL_URI,
			tag = SURFACE_TAG,
			ScaleType = scaleType,
			Size = WIDE_CELL_SIZE,
		})
	end

	local tileSizeCells: { React.ReactNode } = {}
	for index, tileSize in TILE_SIZES do
		tileSizeCells[index] = React.createElement(Image, {
			Image = THUMBNAIL_URI,
			tag = SURFACE_TAG,
			ScaleType = Enum.ScaleType.Tile,
			TileSize = tileSize,
			Size = WIDE_CELL_SIZE,
		})
	end

	return React.createElement(View, {
		tag = `col gap-xxlarge {STORY_PAGE_TAG}`,
	}, {
		ScaleTypes = React.createElement(StoryMatrixGrid, {
			LayoutOrder = 1,
			showLabelColumn = false,
			columnHeaders = SCALE_TYPE_HEADERS,
			cellColumnWidth = CELL_COLUMN_WIDTH,
			rows = {
				{
					cells = scaleTypeCells,
				},
			} :: { MatrixGridRow },
		}),
		TileSize = React.createElement(MatrixSection, {
			LayoutOrder = 2,
			name = "Tile size",
			note = "TileSize is read only under ScaleType.Tile; the sweep omits its default because the Tile column above already renders it.",
			showLabelColumn = false,
			columnHeaders = TILE_SIZE_HEADERS,
			cellColumnWidth = WIDE_COLUMN_WIDTH,
			rows = {
				{
					cells = tileSizeCells,
				},
			} :: { MatrixGridRow },
		}),
	})
end

local function ResampleModeStory(): React.ReactNode
	local cells: { React.ReactNode } = {}
	for index, resampleMode in RESAMPLE_MODES do
		cells[index] = React.createElement(Image, {
			Image = RING_KEY,
			tag = `{TINT_TAG} {UPSCALE_TAG}`,
			ResampleMode = resampleMode,
		})
	end

	return React.createElement(View, {
		tag = `col gap-xxlarge {STORY_PAGE_TAG}`,
	}, {
		Modes = React.createElement(StoryMatrixGrid, {
			LayoutOrder = 1,
			showLabelColumn = false,
			columnHeaders = RESAMPLE_MODE_HEADERS,
			cellColumnWidth = NARROW_COLUMN_WIDTH,
			rows = {
				{
					cells = cells,
				},
			} :: { MatrixGridRow },
		}),
	})
end

local function ControlledStory(): React.ReactNode
	local guiState, setGuiState = React.useBinding(ControlState.Initialize :: ControlState)
	local tokens = useTokens()

	local onStateChanged = React.useCallback(function(state: ControlState)
		setGuiState(state)
	end, {})

	return React.createElement(View, {
		tag = `col gap-xxlarge {STORY_PAGE_TAG}`,
	}, {
		Example = React.createElement(Image, {
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
			LayoutOrder = 1,
		}),
	})
end

local function LoadProbe(props: {
	LayoutOrder: number,
	label: string,
	image: string,
}): React.ReactNode
	local status, setStatus = React.useState("not fired yet")

	local onLoaded = React.useCallback(function(assetStatus: Enum.AssetFetchStatus)
		setStatus(assetStatus.Name)
	end, {})

	return React.createElement(LabeledCell, {
		LayoutOrder = props.LayoutOrder,
		label = props.label,
	}, {
		Content = React.createElement(View, {
			tag = "col gap-small auto-xy",
		}, {
			Image = React.createElement(Image, {
				Image = props.image,
				tag = SURFACE_TAG,
				Size = CELL_SIZE,
				onLoaded = onLoaded,
				LayoutOrder = 1,
			}),
			Status = React.createElement(Text, {
				Text = `onLoaded: {status}`,
				tag = "auto-xy text-caption-small text-align-x-left content-muted",
				LayoutOrder = 2,
			}),
		}),
	})
end

local function LoadReportingStory(): React.ReactNode
	return React.createElement(View, {
		tag = `col gap-xxlarge {STORY_PAGE_TAG}`,
	}, {
		Probes = React.createElement(Section, {
			LayoutOrder = 1,
			name = "Asset fetch status",
			note = "The request settles asynchronously, so the cell shows that onLoaded has not fired until the engine reports Success a moment later.",
		}, {
			Existing = React.createElement(LoadProbe, {
				LayoutOrder = 1,
				label = "Existing asset",
				image = THUMBNAIL_URI,
			}),
		}),
	})
end

local function SourceCell(props: {
	image: string,
}): React.ReactNode
	return React.createElement(View, {
		-- A scale width inside the grid's automatically sized cell resolves against the page, not the column.
		tag = "col gap-small auto-y",
		Size = UDim2.fromOffset(WIDE_COLUMN_WIDTH, 0),
	}, {
		Image = React.createElement(Image, {
			Image = props.image,
			tag = SURFACE_TAG,
			Size = CELL_SIZE,
			LayoutOrder = 1,
		}),
		Value = React.createElement(Text, {
			Text = props.image,
			tag = "size-full-0 auto-y text-caption-small text-wrap text-align-x-left content-muted",
			LayoutOrder = 2,
		}),
	})
end

local function SpeechBubbleExample(props: {
	LayoutOrder: number,
	label: string,
	text: string,
	wraps: boolean?,
}): React.ReactNode
	local tokens = useTokens()

	return React.createElement(LabeledCell, {
		LayoutOrder = props.LayoutOrder,
		label = props.label,
	}, {
		Bubble = React.createElement(Image, {
			Image = SPEECH_BUBBLE_URI,
			tag = "auto-xy",
			slice = {
				center = SPEECH_BUBBLE_SLICE_CENTER,
				scale = 1,
			},
			padding = SPEECH_BUBBLE_PADDING,
			LayoutOrder = 1,
		}, {
			Message = React.createElement(Text, {
				Text = props.text,
				tag = if props.wraps
					then "auto-y text-body-medium text-wrap text-align-x-left"
					else "auto-xy text-body-medium text-align-x-left",
				-- The bubble artwork is a fixed light asset, so the text cannot follow the theme.
				textStyle = tokens.Color.Extended.Gray.Gray_1000,
				Size = if props.wraps then UDim2.fromOffset(SPEECH_BUBBLE_WRAP_WIDTH, 0) else nil,
				LayoutOrder = 1,
			}),
		}),
	})
end

local function drawRingFrame(image: EditableImage, center: Vector2, progress: number)
	local size = image.Size
	local pixelsBuffer = image:ReadPixelsBuffer(Vector2.zero, size)
	local maxRadius = math.max(
		(center - Vector2.zero).Magnitude,
		(center - Vector2.new(size.X, 0)).Magnitude,
		(center - Vector2.new(0, size.Y)).Magnitude,
		(center - size).Magnitude
	) + (#RING_COLORS - 1) * 18 + 4

	for y = 0, size.Y - 1 do
		for x = 0, size.X - 1 do
			local index = (y * size.X + x) * 4
			local r, g, b, a = 0, 0, 0, 0
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
	-- Seed the buffer so the cell shows the Content object rendering before any click.
	drawRingFrame(image, size / 2, EDITABLE_IMAGE_SEED_PROGRESS)
	return image
end

local function EditableImageExample(props: { LayoutOrder: number }): React.ReactNode
	local editableImage, setEditableImage = React.useState(nil :: EditableImage?)
	local animationId = React.useRef(0)

	React.useEffect(function()
		local createdImage = createEditableImage(EDITABLE_IMAGE_RESOLUTION)
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

	if not editableImage then
		return React.createElement(Text, {
			Text = "EditableImage unavailable in this environment",
			tag = "size-2800-800 text-caption-small text-wrap text-align-x-left content-default",
			LayoutOrder = props.LayoutOrder,
		})
	end

	return React.createElement(Image, {
		ImageContent = Content.fromObject(editableImage),
		tag = "bg-surface-100",
		Size = EDITABLE_IMAGE_SIZE,
		ScaleType = Enum.ScaleType.Stretch,
		LayoutOrder = props.LayoutOrder,
		onActivated = onActivated,
	})
end

local function imageRectCells(source: string): { React.ReactNode }
	return {
		React.createElement(Image, {
			Image = source,
			tag = SURFACE_TAG,
			Size = CELL_SIZE,
		}),
		React.createElement(Image, {
			Image = source,
			tag = SURFACE_TAG,
			imageRect = { offset = Vector2.zero, size = CROP_SIZE },
			Size = CELL_SIZE,
		}),
		React.createElement(Image, {
			Image = source,
			tag = SURFACE_TAG,
			imageRect = { offset = CROP_SIZE, size = CROP_SIZE },
			Size = CELL_SIZE,
		}),
	}
end

local function ContentStory(): React.ReactNode
	local sourceCells: { React.ReactNode } = {}
	for index, source in SOURCE_OPTIONS do
		sourceCells[index] = React.createElement(SourceCell, {
			image = source,
		})
	end

	local children: { [string]: React.ReactNode } = {
		Source = React.createElement(MatrixSection, {
			LayoutOrder = 1,
			name = "Source",
			note = "An image-set key resolves to a sprite-sheet rect and a cloud-asset key to an asset id plus that asset's intrinsic aspect ratio, while a URI is passed to the engine untouched.",
			showLabelColumn = false,
			columnHeaders = SOURCE_HEADERS,
			cellColumnWidth = WIDE_COLUMN_WIDTH,
			rows = {
				{
					cells = sourceCells,
				},
			} :: { MatrixGridRow },
		}),
		ImageRect = React.createElement(MatrixSection, {
			LayoutOrder = 3,
			name = "Image rect",
			note = "imageRect indexes the asset's own pixels, so the image-set row is unchanged by design: the key already supplies the rect of the sheet it resolves to.",
			labelColumnWidth = LABEL_COLUMN_WIDTH,
			columnHeaders = IMAGE_RECT_HEADERS,
			cellColumnWidth = WIDE_COLUMN_WIDTH,
			rows = {
				{
					label = matrixLabel("Thumbnail URI"),
					cells = imageRectCells(THUMBNAIL_URI),
				},
				{
					label = matrixLabel("Image set key"),
					cells = imageRectCells(IMAGE_SET_KEY),
				},
			} :: { MatrixGridRow },
		}),
		Children = React.createElement(Section, {
			LayoutOrder = 4,
			name = "Children",
			note = "An Image lays out children like any container, so the frame hugs whatever the text measures. Padding is what keeps that text off the sliced tail and border — a sliced frame has to reserve it.",
		}, {
			ShortText = React.createElement(SpeechBubbleExample, {
				LayoutOrder = 1,
				label = "Hugging one line",
				text = "Nice hat!",
			}),
			WrappedText = React.createElement(SpeechBubbleExample, {
				LayoutOrder = 2,
				label = "Growing with wrapped text",
				text = "The frame grows with the child, and the sliced corners and tail keep their shape.",
				wraps = true,
			}),
		}),
	}
	children.ImageContent = React.createElement(Section, {
		LayoutOrder = 2,
		name = "ImageContent",
		note = "A string is wrapped in Content.fromUri and a Content object is passed to the engine as given, so unlike Image this prop takes a URI rather than a Foundation image-set or cloud-asset key. The second cell redraws its EditableImage in place on click: the object is what changed, not the prop.",
	}, {
		Uri = React.createElement(LabeledCell, {
			LayoutOrder = 1,
			label = "Thumbnail URI",
		}, {
			Image = React.createElement(Image, {
				ImageContent = THUMBNAIL_URI,
				tag = SURFACE_TAG,
				Size = CELL_SIZE,
			}),
		}),
		EditableImage = React.createElement(LabeledCell, {
			LayoutOrder = 2,
			label = "Content.fromObject(EditableImage) — click to redraw",
		}, {
			Example = React.createElement(EditableImageExample, {
				LayoutOrder = 1,
			}),
		}),
	})

	return React.createElement(View, {
		tag = `col gap-xxlarge {STORY_PAGE_TAG}`,
	}, children)
end

type StoryEntry = {
	name: string,
	summary: string?,
	story: unknown,
}

local stories: { StoryEntry } = {
	{
		name = "Playground",
		story = PlaygroundStory,
	},
	{
		name = "Sizing",
		story = SizingStory,
	},
	{
		name = "Image style",
		summary = "imageStyle drives ImageColor3 and ImageTransparency together, so a token that carries transparency applies both.",
		story = ImageStyleStory,
	},
	{
		name = "Slice",
		summary = "Passing slice forces ScaleType.Slice, and for a Foundation image the center is rescaled to the resolution the key resolves to.",
		story = SliceStory,
	},
	{
		name = "Scale type",
		summary = "Slice is absent from the sweep because the slice prop is what selects it.",
		story = ScaleTypeStory,
	},
	{
		name = "Resample mode",
		summary = "The source is a 22 px sprite drawn at 120 px; at or below native size the two modes are indistinguishable.",
		story = ResampleModeStory,
	},
	{
		name = "Controlled component",
		summary = "The page holds the control state onStateChanged reports and maps it back to Image, so the source changes on hover and press.",
		story = ControlledStory,
	},
	{
		name = "Load reporting",
		summary = "onLoaded fires once with the final status, and immediately when the asset was already fetched.",
		story = LoadReportingStory,
	},
	{
		name = "Content",
		story = ContentStory,
	},
}

local controls: { [string]: unknown } = {
	Image = SOURCE_OPTIONS,
	sizePreset = SIZE_PRESET_ORDER,
	scaleTypePreset = SCALE_TYPE_PRESET_ORDER,
	resampleModePreset = RESAMPLE_MODE_PRESET_ORDER,
	imageStylePreset = IMAGE_STYLE_PRESET_ORDER,
}

return {
	base = true,
	summary = "Image displays an image asset in place of the engine's ImageLabel and ImageButton.",
	stories = stories,
	controls = controls,
}
