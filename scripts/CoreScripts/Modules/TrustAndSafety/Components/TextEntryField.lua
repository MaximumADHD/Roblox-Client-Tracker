--!nonstrict
local TextService = game:GetService("TextService")
local CorePackages = game:GetService("CorePackages")

local Cryo = require(CorePackages.Cryo)
local Roact = require(CorePackages.Roact)
local UIBlox = require(CorePackages.UIBlox)
local t = require(CorePackages.Packages.t)

local TnsModule = script.Parent.Parent
local Assets = require(TnsModule.Resources.Assets)
local Dependencies = require(TnsModule.Dependencies)
local ThemedTextLabel = require(Dependencies.ThemedTextLabel)

local FillCircle = require(TnsModule.Components.FillCircle)

local ImageSetLabel = UIBlox.Core.ImageSet.Label
local withStyle = UIBlox.Core.Style.withStyle
local CursorKind = UIBlox.App.SelectionImage.CursorKind
local withSelectionCursorProvider = UIBlox.App.SelectionImage.withSelectionCursorProvider

local TextEntryField = Roact.PureComponent:extend("TextEntryField")

local FULL_CIRCLE_OVERAGE = 10
local LARGER_CIRCLE_CHARACTERS = 20
local TEXT_SIDE_PADDING = 12

TextEntryField.validateProps = t.strictInterface({
	-- Wether the TextEntryField is enabled or disabled. Can not be interacted with when disabled.
	enabled = t.boolean,
	-- The text in the entry field.
	text = t.string,
	-- Callback function to be called when the text changes
	textChanged = t.callback,
	-- The maximum length of text allowed in codepoints
	maxTextLength = t.integer,
	-- If the TextBox should be auto focused when the TextEntry field is enabled.
	autoFocusOnEnabled = t.boolean,
	-- The placeholder text that is displayed when the TextEntryField is empty (text = "").
	PlaceholderText = t.string,
	LayoutOrder = t.optional(t.integer),
	Size = t.UDim2,
	Position = t.optional(t.UDim2),
	textBoxRef = t.optional(t.table),
})

function TextEntryField:init()
	self.textBoxRef = self.props.textBoxRef or Roact.createRef()

	self.state = {
		textBoxWidth = 100,
		scrollingFrameHeight = 100,
		canvasPosition = 0,
		cursorPosition = 0,
	}
end

function TextEntryField:calculateNeedsRescroll(style, textFont)
	self:setState(function(prevState, prevProps)
		if prevState.cursorPosition == -1 then
			return nil
		end

		local textBeforeCursor = prevProps.text:sub(1, prevState.cursorPosition - 1)
		local fontHeight = textFont.RelativeSize * style.Font.BaseSize
		local availableSpace = Vector2.new(prevProps.textBoxWidth, 10000)
		local textSize = TextService:GetTextSize(textBeforeCursor, fontHeight, textFont.Font, availableSpace)

		if textSize.Y > prevState.scrollingFrameHeight + prevState.canvasPosition then
			return {
				canvasPosition = textSize.Y - prevState.scrollingFrameHeight
			}
		elseif textSize.Y - fontHeight < prevState.canvasPosition then
			return {
				canvasPosition = textSize.Y - fontHeight
			}
		end
		return nil
	end)
end

function TextEntryField:renderWithSelectionCursor(getSelectionCursor)
	return withStyle(function(style)
		local textTheme = style.Theme.TextDefault
		local textFont = style.Font.Body

		local textSize = TextService:GetTextSize(
			self.props.text,
			textFont.RelativeSize * style.Font.BaseSize,
			textFont.Font,
			Vector2.new(self.state.textBoxWidth, 10000)
		)

		return Roact.createElement(ImageSetLabel, {
			BackgroundTransparency = 1,
			Image = Assets.Images.RoundedRect.Image,
			ImageColor3 = style.Theme.BackgroundMuted.Color,
			ImageTransparency = style.Theme.BackgroundMuted.Transparency,
			Position = self.props.Position,
			ScaleType = Assets.Images.RoundedRect.ScaleType,
			Size = self.props.Size,
			SliceCenter = Assets.Images.RoundedRect.SliceCenter,
			LayoutOrder = self.props.LayoutOrder,
		}, {
			ScrollingFrame = Roact.createElement("ScrollingFrame", {
				Size = UDim2.new(1, -(TEXT_SIDE_PADDING * 2), 1, -14),
				AnchorPoint = Vector2.new(0.5, 0),
				Position = UDim2.new(0.5, 0, 0, 7),
				BackgroundTransparency = 1,
				BorderSizePixel = 0,
				CanvasSize = UDim2.new(1, -(TEXT_SIDE_PADDING * 2), 0, textSize.Y),
				ScrollBarThickness = 8,
				VerticalScrollBarInset = Enum.ScrollBarInset.Always,
				CanvasPosition = Vector2.new(0, self.state.canvasPosition),
				Selectable = false,

				[Roact.Change.CanvasPosition] = function(rbx)
					self:setState({
						canvasPosition = rbx.CanvasPosition.Y,
					})
				end,

				[Roact.Change.AbsoluteSize] = function(rbx)
					self:setState({ scrollingFrameHeight = rbx.AbsoluteSize.Y }, function()
						self:calculateNeedsRescroll(style, textFont)
					end)
				end,
			}, {
				TextBox = Roact.createElement("TextBox", {
					Size = UDim2.new(1, -2, 1, 0),
					AnchorPoint = Vector2.new(0.5, 0.5),
					Position = UDim2.new(0.5, 0, 0.5, 0),
					Text = self.props.text,
					ClearTextOnFocus = false,
					TextEditable = self.props.enabled,
					BackgroundTransparency = 1,
					TextXAlignment = Enum.TextXAlignment.Left,
					TextYAlignment = Enum.TextYAlignment.Top,
					TextColor3 = textTheme.Color,
					TextTransparency = textTheme.Transparency,
					Font = textFont.Font,
					TextSize = textFont.RelativeSize * style.Font.BaseSize,
					TextWrapped = true,
					MultiLine = true,
					SelectionImageObject = getSelectionCursor(CursorKind.InputFields),

					[Roact.Ref] = self.textBoxRef,

					[Roact.Change.Text] = function(rbx)
						local success, normLen = pcall(function()
							return utf8.len(utf8.nfcnormalize(rbx.Text))
						end)
						if (not success) or (normLen > self.props.maxTextLength) then
							-- just rollback to props.text
							rbx.Text = self.props.text
							return
						end
						self.props.textChanged(rbx.Text)
						self:setState({ cursorPosition = rbx.CursorPosition }, function()
							self:calculateNeedsRescroll(style, textFont)
						end)
					end,

					[Roact.Change.AbsoluteSize] = function(rbx)
						self:setState({ textBoxWidth = rbx.AbsoluteSize.X }, function()
							self:calculateNeedsRescroll(style, textFont)
						end)
					end,

					[Roact.Change.CursorPosition] = function(rbx)
						self:setState({ cursorPosition = rbx.CursorPosition }, function()
							self:calculateNeedsRescroll(style, textFont)
						end)
					end,
				}, {
					--TextBox.PlaceholderText can't be used as it's text transparency can't be changed.
					PlaceholderText = Roact.createElement(ThemedTextLabel, {
						themeKey = "TextDefault",
						fontKey = "Body",
						Text = self.props.PlaceholderText,
						Size = UDim2.new(1, 0, 1, 0),
						Position = UDim2.new(0, 0, 0, 0),
						TextTransparency = 0.5,
						TextWrapped = true,
						TextXAlignment = Enum.TextXAlignment.Left,
						TextYAlignment = Enum.TextYAlignment.Top,
						Visible = self.props.text == "",
					}),
				}),
			}),
			TextAmmountIndicator = Roact.createElement("Frame", {
				BackgroundTransparency = 1,
				Position = UDim2.new(1, -10, 1, -16),
				AnchorPoint = Vector2.new(1, 0.5),
				Size = UDim2.new(0, 20, 0, 20),
				ZIndex = 1,
			}, {
				Roact.createElement(FillCircle, {
					Position = UDim2.new(0.5, 0, 0.5, 0),
					AnchorPoint = Vector2.new(0.5, 0.5),
					fillFraction = utf8.len(utf8.nfcnormalize(self.props.text)) / (self.props.maxTextLength - FULL_CIRCLE_OVERAGE),
					largerCircleFraction = (self.props.maxTextLength - LARGER_CIRCLE_CHARACTERS) / self.props.maxTextLength,
					popCircleFraction = 1,
					shakeCircleFraction = self.props.maxTextLength / (self.props.maxTextLength - FULL_CIRCLE_OVERAGE),
					BackgroundColor = style.Theme.BackgroundMuted.Color,
				})
			}),
		})
	end)
end

function TextEntryField:render()
	return withSelectionCursorProvider(function(getSelectionCursor)
		return self:renderWithSelectionCursor(getSelectionCursor)
	end)
end

function TextEntryField:didUpdate(prevProps, prevState)
	if not self.props.enabled and prevProps.enabled then
		-- Release focus of current textbox.
		if self.textBoxRef.current and self.textBoxRef.current:IsFocused() then
			self.textBoxRef.current:ReleaseFocus()
		end
	elseif self.props.enabled and not prevProps.enabled then
		if self.props.autoFocusOnEnabled and self.textBoxRef.current then
			self.textBoxRef.current:CaptureFocus()
		end
	end
end

return Roact.forwardRef(function(props, ref)
	return Roact.createElement(TextEntryField, Cryo.Dictionary.join(props, {
		textBoxRef = ref
	}))
end)
