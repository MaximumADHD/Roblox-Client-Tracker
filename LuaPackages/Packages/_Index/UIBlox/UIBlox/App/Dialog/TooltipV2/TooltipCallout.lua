local Tooltip = script.Parent
local Dialog = Tooltip.Parent
local App = Dialog.Parent
local UIBlox = App.Parent
local Packages = UIBlox.Parent

local React = require(Packages.React)
local LuauPolyfill = require(Packages.LuauPolyfill)

local Types = require(Tooltip.Types)
local StyledTextLabel = require(App.Text.StyledTextLabel)
local ImageSetLabel = require(UIBlox.Core.ImageSet.ImageSetComponent).Label
local Button = require(App.Button.Button)
local ButtonType = require(App.Button.Enum.ButtonType)
local StandardButtonSize = require(UIBlox.Core.Button.Enum.StandardButtonSize)

local KeyLabelRoot = App.Menu.KeyLabel
local KeyLabel = require(KeyLabelRoot.KeyLabel)
local KeyLabelTypes = require(KeyLabelRoot.Types)
local getKeyLabelWidth = require(KeyLabelRoot.Utilities).getKeyLabelWidth

local useStyle = require(UIBlox.Core.Style.useStyle)
local Consts = require(Tooltip.Constants)
local GetTextSize = require(UIBlox.Core.Text.GetTextSize)
local TooltipOrientation = require(Dialog.Tooltip.Enum.TooltipOrientation)
local IconButton = require(UIBlox.App.Button.IconButton)
local IconSize = require(UIBlox.App.ImageSet.Enum.IconSize)
local Images = require(UIBlox.App.ImageSet.Images)
local UIBloxConfig = require(UIBlox.UIBloxConfig)

-- return elementwise product of two vectors
local function product(v1: Vector2, v2: Vector2)
	return Vector2.new(v1.X * v2.X, v1.Y * v2.Y)
end

-- find the position which is `offset` away from the esge of the trigger point, in a direction
function getOffsetPosition(triggerPointCenter: Vector2, triggerPointRadius: Vector2, orientation, offset: number)
	local position = triggerPointCenter
		+ product(Consts.ORIENTATION_VECTOR[orientation], triggerPointRadius + Vector2.new(offset, offset))
	return position
end

-- convert a Vector2 into a UDim2
local function vectorToPosition(vector: Vector2)
	return UDim2.fromOffset(vector.X, vector.Y)
end

-- get the anchor point for the content co based on orentation
-- we use the center of the edge near the trigger point, because that is the default location
local function getContentAnchorPoint(orientation)
	return Vector2.new(0.5, 0.5) - (0.5 * Consts.ORIENTATION_VECTOR[orientation])
end

-- convert an optional number into a UDim, using default padding
local function convertPadding(padding: number?, defaultPadding: number)
	return UDim.new(0, padding or defaultPadding)
end

-- add offsets to a size and return the larger size
local function addOffsets<K>(originalSize: Vector2, offset: { [K]: number }): Vector2
	return originalSize
		+ Vector2.new(
			offset[TooltipOrientation.Left] + offset[TooltipOrientation.Right],
			offset[TooltipOrientation.Top] + offset[TooltipOrientation.Bottom]
		)
end

local function getHotkeysAndWidth(
	hotkeyCodes: { KeyLabelTypes.FlexibleKeyCode }?,
	contentWidth,
	font
): (React.ReactElement?, number)
	if not hotkeyCodes or #hotkeyCodes == 0 then
		return nil, contentWidth
	else
		local hotkeyChildren = {}
		local width = 0
		for i, keyCode in ipairs(hotkeyCodes) do
			hotkeyChildren[i] = React.createElement(KeyLabel, {
				keyCode = keyCode,
				LayoutOrder = i,
			})
			width += getKeyLabelWidth(keyCode, font)
		end
		width += Consts.HOTKEY_PADDING * (#hotkeyCodes - 1)
		width = math.max(width, contentWidth)
		hotkeyChildren.Layout = React.createElement("UIListLayout", {
			FillDirection = Enum.FillDirection.Horizontal,
			HorizontalAlignment = Enum.HorizontalAlignment.Center,
			SortOrder = Enum.SortOrder.LayoutOrder,
			Padding = UDim.new(0, Consts.HOTKEY_PADDING),
		})
		return React.createElement("Frame", {
			Name = "Hotkeys",
			BackgroundTransparency = 1,
			AutomaticSize = Enum.AutomaticSize.Y,
			Size = UDim2.fromOffset(width, 0),
			LayoutOrder = 3,
		}, hotkeyChildren),
			width
	end
end

local function TooltipWithRef(props: Types.TooltipProps, ref)
	assert(props.headerText or props.bodyText, "Must supply either header or body")
	assert(
		not (props.renderCustomComponents and props.buttonProps),
		"renderCustomComponents and buttonProps are not compatible"
	)

	local boxSize, setBoxSize = React.useState(Vector2.zero)
	local stylePalette = useStyle()

	local textAlignment = props.textAlignment or Enum.TextXAlignment.Left
	local listAlignment = Enum.HorizontalAlignment[textAlignment.Name]

	local theme = stylePalette.Theme
	local font = stylePalette.Font
	local settings = stylePalette.Settings

	local baseSize: number = font.BaseSize
	local headerFont = font.CaptionHeader
	local headerTextSize = baseSize * headerFont.RelativeSize

	local maxContentWidth = Consts.MAX_WIDTH
		- (props.PaddingLeft or Consts.DEFAULT_PADDING)
		- (props.PaddingRight or Consts.DEFAULT_PADDING)
	local sizeConstraint = Vector2.new(maxContentWidth, math.huge)

	local contentWidth = 0
	local headerSize
	if props.headerText then
		local maxHeaderSize = Vector2.new(maxContentWidth, 2 * headerTextSize)
		local headerContainerWidth: Vector2 = maxHeaderSize
		if props.onClose then
			headerContainerWidth = headerContainerWidth - Vector2.new(Consts.CLOSE_BUTTON_SIZE, 0)
		end

		headerSize = GetTextSize(props.headerText, headerTextSize, headerFont.Font, headerContainerWidth)
		-- for some reason luau doesn't know about Vector2:Min
		headerSize = (headerSize :: any):Min(maxHeaderSize)
		contentWidth = math.max(contentWidth, headerSize.X)
	end
	local bodyFont
	if UIBloxConfig.enableTooltipV2BodyFontFix then
		bodyFont = font.BodySmall
	else
		bodyFont = font.CaptionBody
	end
	local bodySize
	if props.bodyText then
		bodySize = GetTextSize(props.bodyText, baseSize * bodyFont.RelativeSize, bodyFont.Font, sizeConstraint)
		contentWidth = math.max(contentWidth, bodySize.X)
	end

	if props.minContentWidth then
		contentWidth = math.max(contentWidth, props.minContentWidth)
	end

	local hotkeyContainer
	hotkeyContainer, contentWidth = getHotkeysAndWidth(props.hotkeyCodes, contentWidth, font)

	local customChildren: { [string]: React.ReactElement }
	if props.renderCustomComponents then
		customChildren = {
			Content = props.renderCustomComponents(contentWidth),
			SizeConstraint = React.createElement("UISizeConstraint", {
				MaxSize = sizeConstraint,
			}),
		}
	elseif props.buttonProps then
		local buttonProps = LuauPolyfill.Object.assign({}, props.buttonProps, {
			buttonType = ButtonType.PrimarySystem,
			standardSize = StandardButtonSize.XSmall,
			fontStyle = headerFont,
		})
		customChildren = {
			Layout = React.createElement("UIListLayout", {
				FillDirection = Enum.FillDirection.Horizontal,
				HorizontalAlignment = Enum.HorizontalAlignment.Right,
			}),
			-- this is a workaround for https://jira.rbx.com/browse/UISYS-1511
			SizeContraint = React.createElement("UISizeConstraint", {
				MinSize = Vector2.new(0, 28),
			}),
			Button = React.createElement(Button, buttonProps),
		}
	end

	local customContainer = customChildren
		and React.createElement("Frame", {
			AutomaticSize = Enum.AutomaticSize.XY,
			Size = UDim2.new(0, contentWidth, 0, 0),
			BackgroundTransparency = 1,
			LayoutOrder = 4,
			Name = if props.renderCustomComponents then "CustomComponents" else "ButtonFrame",
		}, customChildren :: any) -- `any` cast due to https://jira.rbx.com/browse/CLI-54682

	local additionalContent = if hotkeyContainer and customContainer
		then React.createElement("Frame", {
			AutomaticSize = Enum.AutomaticSize.XY,
			Size = UDim2.new(0, contentWidth, 0, 0),
			BackgroundTransparency = 1,
			LayoutOrder = 3,
		}, {
			Layout = React.createElement("UIListLayout", {
				FillDirection = Enum.FillDirection.Vertical,
				HorizontalAlignment = Enum.HorizontalAlignment.Center,
				Padding = convertPadding(props.listPadding, Consts.DEFAULT_LIST_PADDING),
				SortOrder = Enum.SortOrder.LayoutOrder,
			}),
			Hotkeys = hotkeyContainer,
			CustomContent = customContainer,
		})
		else hotkeyContainer or customContainer

	local dropShadowConsts = if props.useLargeDropShadow then Consts.DropShadow.Large else Consts.DropShadow.Small

	-- this is the side of the tooltip that is close to the trigger point
	local caretSide = Consts.OPPOSITE_ORIENTATION[props.orientation]
	local dropShadowSize = addOffsets(boxSize, dropShadowConsts.OFFSET)

	local totalOffsets = table.clone(dropShadowConsts.OFFSET)
	-- how much the caret extends past the dropshadow
	local caretOffset = Consts.CONTENT_TO_CARET_TIP - totalOffsets[caretSide]
	local positiveCaretOffset = math.max(0, caretOffset)
	-- the total offset around the box (to the edge of the canvas) increases if the caret extends past the dropshadow
	totalOffsets[caretSide] += positiveCaretOffset
	local boxPosition = Vector2.new(totalOffsets[TooltipOrientation.Left], totalOffsets[TooltipOrientation.Top])
	-- if the caret extends past the dropshadow to the top or left, then the dropshadow should be shifted by that much
	local dropShadowPosition = (Vector2.zero :: any):Max(
		Consts.ORIENTATION_VECTOR[props.orientation] * positiveCaretOffset
	)
	local caretPosition = boxPosition
		+ product(boxSize, getContentAnchorPoint(props.orientation))
		- props.contentOffsetVector
		+ Consts.ORIENTATION_VECTOR[caretSide] * Consts.CONTENT_TO_CARET_CENTER

	local canvasSize = addOffsets(boxSize, totalOffsets)

	-- round to make the animation consistent regardless of orientation
	-- otherwise the implicit floor in the engine causes different effects when animating up vs down
	local distanceOffset = math.floor(props.distanceOffset + 0.5)
	local canvasPosition = getOffsetPosition(
		props.triggerPointCenter,
		props.triggerPointRadius,
		props.orientation,
		Consts.CARET_DISTANCE + math.min(0, caretOffset) + distanceOffset
	) + props.contentOffsetVector

	local defaultBackgroundStyle = if UIBloxConfig.useFoundationColors
		then theme.BackgroundUIDefault
		else theme.UIDefault
	local backgroundColor = props.backgroundColor or defaultBackgroundStyle.Color
	local backgroundTransparency = (props.backgroundTransparency or defaultBackgroundStyle.Transparency)
		* settings.PreferredTransparency

	return React.createElement("CanvasGroup", {
		GroupTransparency = props.transparency,
		Position = vectorToPosition(canvasPosition),
		Size = vectorToPosition(canvasSize),
		AnchorPoint = getContentAnchorPoint(props.orientation),
		BackgroundTransparency = if props.canvasBackground then props.canvasBackground.Transparency else 1,
		BackgroundColor3 = if props.canvasBackground then props.canvasBackground.Color else nil,
		BorderSizePixel = 0,
	}, {
		Caret = React.createElement(ImageSetLabel, {
			Image = Consts.CARET_IMAGE,
			AnchorPoint = Vector2.new(0.5, 0.5),
			Position = vectorToPosition(caretPosition),
			BackgroundTransparency = 1,
			Size = Consts.CARET_SIZE,
			Rotation = Consts.CARET_ROTATION[props.orientation],
			ImageColor3 = backgroundColor,
			ImageTransparency = backgroundTransparency,
			ZIndex = 2,
		}),
		DropShadow = React.createElement(ImageSetLabel, {
			Image = dropShadowConsts.IMAGE,
			ImageColor3 = theme.DropShadow.Color,
			ImageTransparency = theme.DropShadow.Transparency,
			BackgroundTransparency = 1,
			Position = vectorToPosition(dropShadowPosition),
			Size = vectorToPosition(dropShadowSize),
			ScaleType = Enum.ScaleType.Slice,
			SliceCenter = dropShadowConsts.SLICE_CENTER,
			ZIndex = 1,
		}),
		Box = React.createElement("Frame", {
			AutomaticSize = Enum.AutomaticSize.XY,
			Position = vectorToPosition(boxPosition),
			BackgroundColor3 = backgroundColor,
			BackgroundTransparency = backgroundTransparency,
			-- AnchorPoint = getContentAnchorPoint(props.orientation),
			[React.Change.AbsoluteSize] = function(rbx: GuiObject)
				setBoxSize(rbx.AbsoluteSize)
				if props.onContentSizeChanged then
					props.onContentSizeChanged(rbx.AbsoluteSize)
				end
			end,
			ref = ref,
			ZIndex = 2,
		}, {
			Layout = React.createElement("UIListLayout", {
				FillDirection = Enum.FillDirection.Vertical,
				HorizontalAlignment = listAlignment,
				SortOrder = Enum.SortOrder.LayoutOrder,
				Padding = convertPadding(props.listPadding, Consts.DEFAULT_LIST_PADDING),
			}),
			Padding = React.createElement("UIPadding", {
				PaddingTop = convertPadding(props.PaddingTop, Consts.DEFAULT_PADDING),
				PaddingBottom = convertPadding(props.PaddingBottom, Consts.DEFAULT_PADDING),
				PaddingLeft = convertPadding(props.PaddingLeft, Consts.DEFAULT_PADDING),
				PaddingRight = convertPadding(props.PaddingRight, Consts.DEFAULT_PADDING),
			}),
			Corner = React.createElement("UICorner", {
				CornerRadius = Consts.CORNER_RADIUS,
			}),
			Header = props.headerText and React.createElement(StyledTextLabel, {
				text = props.headerText,
				fontStyle = headerFont,
				colorStyle = theme.TextEmphasis,
				textYAlignment = Enum.TextYAlignment.Center,
				textXAlignment = textAlignment,
				textTruncate = Enum.TextTruncate.AtEnd,
				layoutOrder = 1,
				size = vectorToPosition(headerSize),
				fluidSizing = false,
				richText = false,
				lineHeight = 1,
			}),
			Body = props.bodyText and React.createElement(StyledTextLabel, {
				text = props.bodyText,
				fontStyle = bodyFont,
				colorStyle = theme.TextEmphasis,
				textYAlignment = Enum.TextYAlignment.Center,
				textXAlignment = textAlignment,
				textTruncate = Enum.TextTruncate.None,
				layoutOrder = 2,
				size = vectorToPosition(bodySize),
				fluidSizing = false,
				richText = false,
				lineHeight = 1,
			}),
			Additional = additionalContent,
		}),
		CloseButton = props.onClose ~= nil and React.createElement("Frame", {
			BackgroundTransparency = 1,
			ZIndex = 3,
			Size = UDim2.fromOffset(Consts.CLOSE_BUTTON_SIZE, Consts.CLOSE_BUTTON_SIZE),
			Position = UDim2.new(
				1,
				-(Consts.CLOSE_BUTTON_SIZE + Consts.CLOSE_BUTTON_PADDING * 2),
				0,
				Consts.CLOSE_BUTTON_SIZE / 2
			),
		}, {
			Button = React.createElement(IconButton, {
				backgroundTransparency = 1,
				icon = Images["icons/navigation/close"],
				iconSize = IconSize.Small,
				size = UDim2.new(1, 0, 1, 0),
				onActivated = props.onClose,
			}),
		}),
	})
end

return React.forwardRef(TooltipWithRef)
