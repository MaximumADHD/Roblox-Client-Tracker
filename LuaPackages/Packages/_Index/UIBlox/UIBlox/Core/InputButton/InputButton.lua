--!nonstrict
local Packages = script.Parent.Parent.Parent.Parent
local Roact = require(Packages.Roact)
local t = require(Packages.t)
local Cryo = require(Packages.Cryo)
local RoactGamepad = require(Packages.RoactGamepad)
local UIBloxConfig = require(Packages.UIBlox.UIBloxConfig)

local withStyle = require(Packages.UIBlox.Core.Style.withStyle)
local ImageSetComponent = require(Packages.UIBlox.Core.ImageSet.ImageSetComponent)
local Controllable = require(Packages.UIBlox.Core.Control.Controllable)
local ControlState = require(Packages.UIBlox.Core.Control.Enum.ControlState)
local GetEngineFeatureSafe = require(Packages.UIBlox.Core.Utility.GetEngineFeatureSafe)
local GetTextSize = require(Packages.UIBlox.Core.Text.GetTextSize)

local FitTextLabel = require(Packages.FitFrame).FitTextLabel
local FitFrameHorizontal = require(Packages.FitFrame).FitFrameHorizontal

-- TODO AVBURST-3748: Remove this soon after TextBoundsRoundUp is turned on to make the UIBlox places display
-- the same way as the App
local EngineFeatureTextBoundsRoundUp = GetEngineFeatureSafe("TextBoundsRoundUp")

local InputButton = Roact.PureComponent:extend("InputButton")

InputButton.validateProps = t.strictInterface({
	text = t.string,
	size = t.optional(t.UDim2),
	image = t.table,
	imageColor = t.Color3,
	fillImage = t.optional(t.table),
	fillImageSize = t.optional(t.UDim2),
	fillImageColor = t.optional(t.Color3),
	selectedColor = t.Color3,
	textColor = t.Color3,
	transparency = t.number,
	onActivated = t.callback,
	isDisabled = t.optional(t.boolean),
	layoutOrder = t.optional(t.number),
	frameRef = t.optional(t.table),

	NextSelectionLeft = t.optional(t.table),
	NextSelectionRight = t.optional(t.table),
	NextSelectionUp = t.optional(t.table),
	NextSelectionDown = t.optional(t.table),
	SelectionImageObject = t.optional(t.table),
})

InputButton.defaultProps = {
	layoutOrder = 0,
	isDisabled = false,
}

local SELECTION_BUTTON_SIZE = 26
local HORIZONTAL_PADDING = 8

function InputButton:init()
	self.state = {
		outerImage = self.props.image,
		outerTransparency = 1,
		outerImageColor = self.props.imageColor,
		innerImage = self.props.image,
		innerImageColor = self.props.fillImageColor,
		innerTransparency = 1,
	}

	self.changeSprite = function(buttonState)
		if buttonState == ControlState.Hover then
			if not self.props.isDisabled then
				self:setState({
					outerImageColor = self.props.selectedColor,
				})
			end
		elseif buttonState == ControlState.Default then
			self:setState({
				outerImageColor = self.props.imageColor,
			})
		end
	end

	if not self.props.size then
		--Initalize height to SELECTION_BUTTON_SIZE as the height can't be smaller than the button height
		self.sizeBinding, self.updateSizeBinding = Roact.createBinding(UDim2.new(1, 0, 0, SELECTION_BUTTON_SIZE))

		self.textAbsoluteSizeChanged = function(rbx)
			local sizeY = SELECTION_BUTTON_SIZE
			if rbx.AbsoluteSize.Y > sizeY then
				sizeY = rbx.AbsoluteSize.Y
			end
			self.updateSizeBinding(UDim2.new(1, 0, 0, sizeY))
		end
	end
end

function InputButton:render()
	return withStyle(function(stylePalette)
		local font = stylePalette.Font
		local fontSize = font.Body.RelativeSize * font.BaseSize

		local textComponent
		local textComponentProps = {
			LayoutOrder = 2,
			BackgroundTransparency = 1,

			Text = self.props.text,
			TextXAlignment = Enum.TextXAlignment.Left,

			TextSize = fontSize,
			Font = font.Body.Font,
			TextWrapped = true,
			TextColor3 = self.props.textColor,
			TextTransparency = self.props.transparency,
		}

		local frameComponent = "Frame"
		local useAutomaticSizing = false
		if self.props.size then
			local size = self.props.size
			local frameSize = Vector2.new(size.X.Offset - SELECTION_BUTTON_SIZE - HORIZONTAL_PADDING, size.Y.Offset)
			local touchZoneWidth = if not UIBloxConfig.ensureTextWrapsInputButton
				then GetTextSize(self.props.text, fontSize, font.Body.Font, frameSize).X
				else nil
			if
				not UIBloxConfig.ensureTextWrapsInputButton
				and not EngineFeatureTextBoundsRoundUp
				and touchZoneWidth > 0
			then
				-- GetTextSize documentation recommends to add a pixel of padding to the result to ensure no text is cut off
				-- Only add that extra padding if there is text to display
				touchZoneWidth = touchZoneWidth + 1
			end

			textComponent = "TextButton"
			textComponentProps = Cryo.Dictionary.join(textComponentProps, {
				Size = if UIBloxConfig.ensureTextWrapsInputButton
					then UDim2.new(1, -SELECTION_BUTTON_SIZE - HORIZONTAL_PADDING, 0, SELECTION_BUTTON_SIZE) -- note this changes default behavior by constraining width of the text label; with default behavior, the text label sometimes exceeds the bounds of the input button's frame
					else UDim2.new(0, touchZoneWidth, 1, 0),
				AutomaticSize = if UIBloxConfig.ensureTextWrapsInputButton then Enum.AutomaticSize.Y else nil,
				[Roact.Event.Activated] = not self.props.isDisabled and self.props.onActivated or nil,
			})
		else
			useAutomaticSizing = true
			frameComponent = FitFrameHorizontal
			textComponent = FitTextLabel
			textComponentProps = Cryo.Dictionary.join(textComponentProps, {
				width = FitTextLabel.Width.FitToText,
				onActivated = self.props.onActivated,
				[Roact.Change.AbsoluteSize] = self.textAbsoluteSizeChanged,
			})
		end

		frameComponent = RoactGamepad.Focusable[frameComponent]

		local fillImage = self.props.fillImage

		return Roact.createElement(frameComponent, {
			Size = not useAutomaticSizing and (self.props.size or self.sizeBinding) or nil,
			height = useAutomaticSizing and UDim.new(0, SELECTION_BUTTON_SIZE) or nil,
			AutomaticSize = if UIBloxConfig.ensureTextWrapsInputButton then Enum.AutomaticSize.Y else nil,
			BackgroundTransparency = 1,
			LayoutOrder = self.props.layoutOrder,
			[Roact.Ref] = self.props.frameRef,
			SelectionImageObject = self.props.SelectionImageObject,
			inputBindings = {
				Activated = RoactGamepad.Input.onBegin(Enum.KeyCode.ButtonA, self.props.onActivated),
			},
			FillDirection = useAutomaticSizing and Enum.FillDirection.Horizontal or nil,
			VerticalAlignment = useAutomaticSizing and Enum.VerticalAlignment.Center or nil,
			contentPadding = useAutomaticSizing and UDim.new(0, HORIZONTAL_PADDING) or nil,
		}, {
			HorizontalLayout = not useAutomaticSizing and Roact.createElement("UIListLayout", {
				SortOrder = Enum.SortOrder.LayoutOrder,
				FillDirection = Enum.FillDirection.Horizontal,
				Padding = UDim.new(0, HORIZONTAL_PADDING),
				VerticalAlignment = Enum.VerticalAlignment.Center,
			}) or nil,
			Padding = not useAutomaticSizing and Roact.createElement("UIPadding", {
				PaddingLeft = UDim.new(0, HORIZONTAL_PADDING),
			}) or nil,
			InputButtonImage = Roact.createElement(Controllable, {
				controlComponent = {
					component = ImageSetComponent.Button,
					props = {
						BackgroundTransparency = 1,
						Size = UDim2.new(0, SELECTION_BUTTON_SIZE, 0, SELECTION_BUTTON_SIZE),
						Image = self.props.image,
						ImageTransparency = self.props.transparency,
						ScaleType = self.props.buttonSliceType,
						SliceCenter = self.props.buttonSliceCenter,
						ImageColor3 = self.state.outerImageColor,
						[Roact.Event.Activated] = self.props.onActivated,
						LayoutOrder = 1,
					},
					children = {
						InputFillImage = fillImage and Roact.createElement(ImageSetComponent.Label, {
							BackgroundTransparency = 1,
							Size = self.props.fillImageSize,
							Image = fillImage,
							ImageTransparency = self.props.transparency,
							ImageColor3 = self.props.fillImageColor,
							AnchorPoint = Vector2.new(0.5, 0.5),
							Position = UDim2.new(0.5, 0, 0.5, 0),
						}),
					},
				},
				isDisabled = self.props.isDisabled,

				onStateChanged = function(_, newState)
					self.changeSprite(newState)
				end,
			}),
			-- Only create this element if there is text to display
			InputButtonText = (self.props.text ~= "") and Roact.createElement(Controllable, {
				controlComponent = {
					component = textComponent,
					props = textComponentProps,
				},
				isDisabled = self.props.isDisabled,
				onStateChanged = function(_, newState)
					self.changeSprite(newState)
				end,
			}),
		})
	end)
end

return Roact.forwardRef(function(props, ref)
	return Roact.createElement(
		InputButton,
		Cryo.Dictionary.join(props, {
			frameRef = ref,
		})
	)
end)
