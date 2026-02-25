local Foundation = script:FindFirstAncestor("Foundation")
local Packages = Foundation.Parent

local FoundationImages = require(Packages.FoundationImages)
local React = require(Packages.React)

local Images = FoundationImages.Images
local CursorComponent = require(script.Parent.Parent.CursorComponent)
local CursorType = require(Foundation.Enums.CursorType)
type CursorType = CursorType.CursorType
local useTokens = require(Foundation.Providers.Style.useTokens)

local Components = script.Parent.Parent.Parent.Parent.Components
local getScaledSlice = require(Components.Image.ImageSet.getScaledSlice)

--selene: allow(roblox_internal_custom_color)
local NAV_HIGHLIGHT_HEIGHT = 3

type SlicedImage = {
	Tag: "SlicedImage",
	Image: string,
	SliceCenter: Rect,
	InsetAdjustment: Vector2,
	Padding: number?,
}

type FixedSizeImage = {
	Tag: "FixedSizeImage",
	Image: string,
	Size: number,
}

type RoundedImage = {
	Tag: "RoundedImage",
	CornerRadius: UDim,
	Offset: number,
	BorderWidth: number,
}

local CURSOR_TYPE_DETAILS: { [CursorType]: SlicedImage | FixedSizeImage | RoundedImage } = {
	[CursorType.BulletUp] = {
		Tag = "SlicedImage",
		Image = "component_assets/bulletUp_17_stroke_3",
		SliceCenter = Rect.new(8, 8, 9, 9),
		InsetAdjustment = Vector2.new(2, 2),
	},
	[CursorType.BulletDown] = {
		Tag = "SlicedImage",
		Image = "component_assets/bulletDown_17_stroke_3",
		SliceCenter = Rect.new(8, 8, 9, 9),
		InsetAdjustment = Vector2.new(2, 2),
	},
	[CursorType.InputFields] = {
		Tag = "SlicedImage",
		Image = "component_assets/circle_22_stroke_3",
		SliceCenter = Rect.new(11, 11, 12, 12),
		InsetAdjustment = Vector2.new(7, 0),
	},
	[CursorType.SelectionCell] = {
		Tag = "SlicedImage",
		Image = "component_assets/square_7_stroke_3",
		SliceCenter = Rect.new(3.5, 3.5, 3.5, 3.5),
		InsetAdjustment = Vector2.new(2, 2),
		Padding = 50,
	},
	[CursorType.SelectedKnob] = {
		Tag = "FixedSizeImage",
		Image = "component_assets/circle_42_stroke_3",
		Size = 42,
	} :: FixedSizeImage,
	[CursorType.UnselectedKnob] = {
		Tag = "FixedSizeImage",
		Image = "component_assets/circle_52_stroke_3",
		Size = 52,
	} :: FixedSizeImage,
	[CursorType.InputButton] = {
		Tag = "RoundedImage",
		CornerRadius = UDim.new(0, 11),
		Offset = 11,
		BorderWidth = 3,
	},
	[CursorType.RoundedRect] = {
		Tag = "RoundedImage",
		CornerRadius = UDim.new(0, 8),
		Offset = 9,
		BorderWidth = 3,
	},
	[CursorType.RoundedRectNoInset] = {
		Tag = "RoundedImage",
		CornerRadius = UDim.new(0, 8),
		Offset = 0,
		BorderWidth = 3,
	},
	[CursorType.RoundedSlot] = {
		Tag = "RoundedImage",
		CornerRadius = UDim.new(0, 7),
		Offset = 0,
		BorderWidth = 3,
	},
	[CursorType.SkinToneCircle] = {
		Tag = "RoundedImage",
		CornerRadius = UDim.new(0.5, 0),
		Offset = 0,
		BorderWidth = 3,
	},
	[CursorType.SmallPill] = {
		Tag = "RoundedImage",
		CornerRadius = UDim.new(0, 15),
		Offset = 0,
		BorderWidth = 3,
	},
	[CursorType.LargePill] = {
		Tag = "RoundedImage",
		CornerRadius = UDim.new(0, 26),
		Offset = 0,
		BorderWidth = 3,
	},
	[CursorType.Square] = {
		Tag = "RoundedImage",
		CornerRadius = UDim.new(0, 0),
		Offset = 2,
		BorderWidth = 3,
	},
	[CursorType.Toggle] = {
		Tag = "RoundedImage",
		CornerRadius = UDim.new(0, 13),
		Offset = 0,
		BorderWidth = 3,
	},
}

type Props = {
	cursorType: CursorType,
	isVisible: boolean,
}

local Cursor = React.forwardRef(function(props: Props, ref: React.Ref<Frame>)
	local tokens = useTokens()
	if props.cursorType == CursorType.NavHighlight then
		return React.createElement("Frame", {
			AnchorPoint = Vector2.new(0, 1),
			Position = UDim2.new(0, 0, 1, -NAV_HIGHLIGHT_HEIGHT),
			Size = UDim2.new(1, 0, 0, NAV_HIGHLIGHT_HEIGHT),
			BorderSizePixel = 1,
			BackgroundColor3 = tokens.Color.Selection.Start.Color3,
			BackgroundTransparency = 0,
			BorderColor3 = tokens.Color.Selection.Start.Color3,
			ref = ref,
		})
	elseif props.cursorType == CursorType.Invisible then
		return React.createElement("Frame", {
			BackgroundTransparency = 1,
			Size = UDim2.fromScale(1, 1),
			ref = ref,
		})
	else
		local cursorDetails = CURSOR_TYPE_DETAILS[props.cursorType]

		if cursorDetails.Tag == "FixedSizeImage" then
			local size = UDim2.fromOffset(cursorDetails.Size, cursorDetails.Size)
			local position = UDim2.new(0.5, -size.X.Offset / 2, 0.5, -size.Y.Offset / 2)
			return React.createElement("ImageLabel", {
				Image = Images[cursorDetails.Image].Image,
				BackgroundTransparency = 1,
				ImageRectOffset = Images[cursorDetails.Image].ImageRectOffset,
				ImageRectSize = Images[cursorDetails.Image].ImageRectSize,
				Size = size,
				Position = position,
				ImageColor3 = tokens.Color.Selection.Start.Color3,
				ImageTransparency = tokens.Color.Selection.Start.Transparency,
				ref = ref,
			})
		elseif cursorDetails.Tag == "SlicedImage" then
			local inset = cursorDetails.InsetAdjustment
			local size = UDim2.new(1, inset.X * 2, 1, inset.Y * 2)
			local scaledSlice = getScaledSlice(cursorDetails.SliceCenter)
			local padding = if cursorDetails.Padding
				then React.createElement("UIPadding", {
					PaddingTop = UDim.new(0, cursorDetails.Padding),
					PaddingBottom = UDim.new(0, cursorDetails.Padding),
					PaddingLeft = UDim.new(0, cursorDetails.Padding),
					PaddingRight = UDim.new(0, cursorDetails.Padding),
				})
				else nil
			return React.createElement("ImageLabel", {
				Image = Images[cursorDetails.Image].Image,
				BackgroundTransparency = 1,
				ImageRectOffset = Images[cursorDetails.Image].ImageRectOffset,
				ImageRectSize = Images[cursorDetails.Image].ImageRectSize,
				SliceCenter = scaledSlice.center,
				SliceScale = scaledSlice.scale,
				ScaleType = Enum.ScaleType.Slice,
				Size = size,
				Position = UDim2.fromOffset(-inset.X, -inset.Y),
				ImageColor3 = tokens.Color.Selection.Start.Color3,
				ImageTransparency = tokens.Color.Selection.Start.Transparency,
				ref = ref,
			}, {
				Padding = padding,
			})
		elseif cursorDetails.Tag == "RoundedImage" then
			local roundedCursorDetails = cursorDetails
			return React.createElement(CursorComponent, {
				isVisible = props.isVisible,
				cornerRadius = roundedCursorDetails.CornerRadius,
				offset = roundedCursorDetails.Offset - roundedCursorDetails.BorderWidth,
				borderWidth = roundedCursorDetails.BorderWidth,
				ref = ref,
			})
		end
	end
	return nil
end)

return Cursor
