--[[
	A text input field used in the Upload Asset prompt that allows the user to enter an asset description.
	Has a max length value which is displayed below the input field.
	Supports multi-line input and re-positions the canvas scrolling to fit the cursor position.
]]
local CorePackages = game:GetService("CorePackages")
local TextService = game:GetService("TextService")
local CoreGui = game:GetService("CoreGui")
local RobloxGui = CoreGui:WaitForChild("RobloxGui")

local Roact = require(CorePackages.Roact)
local RoactRodux = require(CorePackages.RoactRodux)
local t = require(CorePackages.Packages.t)
local RoactGamepad = require(CorePackages.Packages.RoactGamepad)
local RobloxTranslator = require(RobloxGui.Modules.RobloxTranslator)

local Focusable = RoactGamepad.Focusable

local UIBlox = require(CorePackages.UIBlox)
local withStyle = UIBlox.Style.withStyle
local withSelectionCursorProvider = UIBlox.App.SelectionImage.withSelectionCursorProvider
local CursorKind = UIBlox.App.SelectionImage.CursorKind

local Images = UIBlox.App.ImageSet.Images
local ImageSetLabel = UIBlox.Core.ImageSet.ImageSetLabel

local TEXTBOX_PADDING = 6

local MAX_DESCRIPTION_LENGTH = 1000 -- Source of truth is AssetConfigConstants.lua in game-engine
local BUTTON_STROKE = Images["component_assets/circle_17_stroke_1"]
local BACKGROUND_9S_CENTER = Rect.new(8, 8, 8, 8)
local SCROLL_BAR_THICKNESS = 12
local MIN_CANVAS_HEIGHT = 100
local SCROLL_FRAME_HEIGHT = 100
local DEFAULT_TEXTBOX_WIDTH = 100
local LENGTH_COUNTER_HEIGHT = 15
local WARNING_TEXT_SIZE = 12
local WARNING_TEXT_HEIGHT = 15

local PublishAssetPrompt = script.Parent.Parent
local GetFFlagValidateDescription = require(PublishAssetPrompt.GetFFlagValidateDescription)

local AssetDescriptionTextBox = Roact.PureComponent:extend("AssetDescriptionTextBox")

AssetDescriptionTextBox.validateProps = t.strictInterface({
	Size = t.optional(t.UDim2),
	Position = t.optional(t.UDim2),
	onAssetDescriptionUpdated = t.callback, -- function(newDescription, isDescriptionValid)
	descriptionTextBoxRef = t.optional(t.table),
	NextSelectionUp = t.optional(t.table),
	assetType = t.optional(t.enum(Enum.AssetType)),
	defaultDescription = t.optional(t.string),
})

local function getStringLength(str: string): number
	local utf8Length: number? = utf8.len(utf8.nfcnormalize(str))
	if utf8Length == nil then
		return 0
	else
		return utf8Length
	end
end

local function isDescriptionTooLong(str: string, maxLength: number)
	return getStringLength(str) > maxLength
end

function AssetDescriptionTextBox:init()
	self:setState({
		lastValidDescription = "",
		assetDescription = self.props.defaultDescription or "",
		descriptionLength = 0,
		scrollingFrameHeight = SCROLL_FRAME_HEIGHT,
		canvasHeight = MIN_CANVAS_HEIGHT,
		canvasPosition = 0,
		cursorPosition = 0,
		textBoxWidth = DEFAULT_TEXTBOX_WIDTH,
		isDescriptionValid = true,
	})

	self.wasInitiallyFocused = false

	self.tryFocusTextBox = function()
		if self.wasInitiallyFocused then
			return
		end

		local textbox = self.props.descriptionTextBoxRef:getValue()
		if textbox and textbox:IsDescendantOf(game) then
			textbox:CaptureFocus()
			self.wasInitiallyFocused = true
		end
	end
end

-- Updates the canvasPosition of the scrolling frame so that the cursor is always in view.
function AssetDescriptionTextBox:calculateNeedsRescroll(
	style,
	textFont: {
		Font: Enum.Font,
		RelativeSize: number,
		RelativeMinSize: number,
	}
)
	if self.state.cursorPosition == -1 then
		return
	end

	local assetDescription = self.state.assetDescription or ""
	local textBeforeCursor = assetDescription:sub(1, self.state.cursorPosition - 1)
	local fontHeight = textFont.RelativeSize * style.Font.BaseSize
	local availableSpace = Vector2.new(self.state.textBoxWidth, 10000)
	local textSize = TextService:GetTextSize(textBeforeCursor, fontHeight, textFont.Font, availableSpace)

	if textSize.Y > self.state.scrollingFrameHeight + self.state.canvasPosition then
		-- The cursor is below the visible frame. Scroll down just enough to show the cursor.
		self:setState({
			canvasPosition = textSize.Y - self.state.scrollingFrameHeight,
		})
	elseif textSize.Y - fontHeight < self.state.canvasPosition then
		-- The cursor is above the visible frame. Scroll up.
		self:setState({
			canvasPosition = textSize.Y - fontHeight,
		})
	end
end

-- When the text in the text box changes, we need to validate that it is under the max length,
-- recalculate the absolute height of the scrolling canvas, and update the length counter.
function AssetDescriptionTextBox:onTextChanged(
	rbx,
	style,
	textFont: { Font: Enum.Font, RelativeSize: number, RelativeMinSize: number }
)
	local assetDescription = rbx.Text
	local isDescriptionValid = if GetFFlagValidateDescription() and assetDescription == "" then false else true

	local lastValidDescription = self.state.lastValidDescription
	if isDescriptionTooLong(assetDescription, MAX_DESCRIPTION_LENGTH) then
		assetDescription = lastValidDescription
		rbx.Text = assetDescription
	else
		lastValidDescription = rbx.Text
	end

	local descriptionLength = getStringLength(assetDescription)

	local fontHeight = textFont.RelativeSize * style.Font.BaseSize
	local availableSpace = Vector2.new(self.state.textBoxWidth, 10000)
	local textSize = TextService:GetTextSize(assetDescription, fontHeight, textFont.Font, availableSpace)

	self:setState({
		lastValidDescription = lastValidDescription,
		assetDescription = assetDescription,
		descriptionLength = descriptionLength,
		canvasHeight = math.max(MIN_CANVAS_HEIGHT, textSize.Y),
		isDescriptionValid = isDescriptionValid,
	})

	self.props.onAssetDescriptionUpdated(assetDescription, isDescriptionValid)
end

function AssetDescriptionTextBox:renderWithProviders(stylePalette, getSelectionCursor)
	local font = stylePalette.Font
	local fontType = font.CaptionBody
	local theme = stylePalette.Theme
	local showWarningText = if GetFFlagValidateDescription() then not self.state.isDescriptionValid else false

	return Roact.createElement("Frame", {
		BackgroundTransparency = 1,
		Size = self.props.Size,
		Position = self.props.Position,
	}, {
		TextboxContainer = Roact.createElement(ImageSetLabel, {
			BackgroundTransparency = 1,
			Image = BUTTON_STROKE,
			ImageColor3 = theme.UIDefault.Color,
			ImageTransparency = theme.UIDefault.Transparency,
			LayoutOrder = 1,
			ScaleType = Enum.ScaleType.Slice,
			Size = UDim2.new(1, 0, 1, -LENGTH_COUNTER_HEIGHT),
			SliceCenter = BACKGROUND_9S_CENTER,
		}, {
			-- Scrolling frame so that when the description text exceeds the box length, we scroll down.
			ScrollingFrame = Roact.createElement("ScrollingFrame", {
				Size = UDim2.fromScale(1, 1),
				BackgroundTransparency = 1,
				CanvasPosition = Vector2.new(0, self.state.canvasPosition),
				AutomaticCanvasSize = Enum.AutomaticSize.Y,
				ScrollBarThickness = SCROLL_BAR_THICKNESS,
				BorderSizePixel = 0,

				[Roact.Change.CanvasPosition] = function(rbx: ScrollingFrame)
					self:setState({
						canvasPosition = rbx.CanvasPosition.Y,
					})
				end,

				[Roact.Change.AbsoluteSize] = function(rbx: ScrollingFrame)
					self:setState({
						scrollingFrameHeight = rbx.AbsoluteSize.Y,
					})
					self:calculateNeedsRescroll(stylePalette, fontType)
				end,
			}, {
				Textbox = Roact.createElement(Focusable.TextBox, {
					Text = self.state.assetDescription,
					BackgroundTransparency = 1,
					ClearTextOnFocus = false,
					Font = font.Header2.Font,
					TextSize = font.BaseSize * fontType.RelativeSize,
					PlaceholderColor3 = theme.PlaceHolder.Color,
					PlaceholderText = RobloxTranslator:FormatByKey(
						"CoreScripts.PublishAssetPrompt.AssetDescriptionPlaceholder"
					),
					Position = UDim2.fromOffset(TEXTBOX_PADDING, 0),
					Size = UDim2.new(1, -TEXTBOX_PADDING * 2 - SCROLL_BAR_THICKNESS, 0, self.state.canvasHeight),
					MultiLine = true,
					TextColor3 = theme.TextDefault.Color,
					TextTruncate = Enum.TextTruncate.AtEnd,
					TextWrapped = true,
					TextXAlignment = Enum.TextXAlignment.Left,
					TextYAlignment = Enum.TextYAlignment.Top,
					OverlayNativeInput = true,
					NextSelectionUp = self.props.NextSelectionUp,
					[Roact.Change.TextFits] = self.onTextFitsChanged,
					SelectionImageObject = getSelectionCursor(CursorKind.InputFields),

					[Roact.Ref] = self.props.descriptionTextBoxRef,
					[Roact.Event.AncestryChanged] = self.tryFocusTextBox,

					[Roact.Change.Text] = function(rbx)
						self:onTextChanged(rbx, stylePalette, fontType)
					end,

					[Roact.Change.AbsoluteSize] = function(rbx)
						self:setState({
							textBoxWidth = rbx.AbsoluteSize.X,
						})
						self:calculateNeedsRescroll(stylePalette, fontType)
					end,

					[Roact.Change.CursorPosition] = function(rbx)
						self:setState({
							cursorPosition = rbx.CursorPosition,
						})
						self:calculateNeedsRescroll(stylePalette, fontType)
					end,
				}),
			}),
		}),

		-- Only display the description length if it's above a certain amount.
		LengthDisplay = if self.state.descriptionLength / MAX_DESCRIPTION_LENGTH > 0.9
			then Roact.createElement("TextLabel", {
				Size = UDim2.new(GetFFlagValidateDescription() and 0.2 or 1, 0, 0, LENGTH_COUNTER_HEIGHT),
				AnchorPoint = Vector2.new(1, 1),
				Position = UDim2.fromScale(1, 1),
				Text = self.state.descriptionLength .. "/" .. MAX_DESCRIPTION_LENGTH,
				TextXAlignment = Enum.TextXAlignment.Right,
				TextColor3 = theme.TextDefault.Color,
				BackgroundTransparency = 1,
			})
			else nil,
		WarningText = (GetFFlagValidateDescription() and showWarningText) and Roact.createElement("TextLabel", {
			Position = UDim2.new(0, 0, 1, -WARNING_TEXT_HEIGHT),
			BackgroundTransparency = 1,
			Text = RobloxTranslator:FormatByKey("CoreScripts.PublishAssetPrompt.InvalidDescription"),
			TextXAlignment = Enum.TextXAlignment.Left,
			TextYAlignment = Enum.TextYAlignment.Top,
			Size = UDim2.new(0.8, 0, 0, 20),
			TextColor3 = theme.Alert.Color,
			TextWrapped = true,
			Font = font.Body.Font,
			TextSize = WARNING_TEXT_SIZE,
		}),
	})
end

function AssetDescriptionTextBox:render()
	return withStyle(function(stylePalette)
		return withSelectionCursorProvider(function(getSelectionCursor)
			return self:renderWithProviders(stylePalette, getSelectionCursor)
		end)
	end)
end

function AssetDescriptionTextBox:didMount()
	self.tryFocusTextBox()
end

local function mapStateToProps(state)
	return {
		assetType = state.promptRequest.promptInfo.assetType,
	}
end

return RoactRodux.connect(mapStateToProps)(AssetDescriptionTextBox)
