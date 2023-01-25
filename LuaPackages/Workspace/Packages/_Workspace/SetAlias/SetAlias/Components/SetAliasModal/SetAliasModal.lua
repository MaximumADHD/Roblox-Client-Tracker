local SetAlias = script.Parent.Parent.Parent
local dependencies = require(SetAlias.dependencies)
local TextKeys = require(SetAlias.Common.TextKeys)

local React = dependencies.React
local UIBlox = dependencies.UIBlox
local RoactFitComponents = dependencies.RoactFitComponents
local useLocalization = dependencies.Hooks.useLocalization
local SocialLibraries = dependencies.SocialLibraries

local FitFrameVertical = RoactFitComponents.FitFrameVertical
local FitTextLabel = RoactFitComponents.FitTextLabel
local InteractiveAlert = UIBlox.App.Dialog.Alert.InteractiveAlert
local ButtonType = UIBlox.App.Button.Enum.ButtonType
local useStyle = UIBlox.Core.Style.useStyle
local ImageSetLabel = UIBlox.Core.ImageSet.Label
local Images = UIBlox.App.ImageSet.Images

local CallbackInputBox = SocialLibraries.Components.CallbackInputBox
local getFFlagLimitAliasCharacterInput = require(SetAlias.Flags.getFFlagLimitAliasCharacterInput)

type Props = {
	screenSize: Vector2,
	alias: string?,
	cancelOnActivated: () -> (),
	saveOnActivated: (string) -> (),
}

local BUTTON_HEIGHT: number = 48
local BUTTON_MARGINS: number = 6
local TEXTBOX_VERTICAL_PADDING: number = 10
local TEXTBOX_HORIZONTAL_PADDING: number = 12
local CONTENT_PADDING: number = if getFFlagLimitAliasCharacterInput() then 16 else 24
local MAX_ALIAS_CHARACTERS: number = 20

local SetAliasModal = function(props: Props)
	local inputBoxRef = React.useRef(nil)
	local contentSize, setContentSize = React.useState(Vector2.new(0, 0))
	local aliasText, setAliasText = React.useState(props.alias)
	local initialTextLength = if props.alias then string.len(props.alias) else 0
	local characterCount, setCharacterCount = React.useState(initialTextLength)
	local stylePalette = useStyle()
	local font = stylePalette.Font
	local theme = stylePalette.Theme
	local fontSize = font.BaseSize * font.Body.RelativeSize
	local localized = useLocalization({
		titleText = TextKeys.MODAL_TITLE,
		cancelButtonText = TextKeys.CANCEL_BUTTON,
		saveButtonText = TextKeys.SAVE_BUTTON,
		descriptionText = TextKeys.MODAL_DESCRIPTION,
	})

	local changeContentSize = React.useCallback(function(rbx)
		if contentSize.X ~= rbx.AbsoluteSize.X then
			setContentSize(rbx.AbsoluteSize)
		end
	end, { contentSize })

	local onActivated = function()
		props.saveOnActivated(aliasText)
	end

	local textChanged = function(text: string)
		if getFFlagLimitAliasCharacterInput() then
			local textLength = string.len(text)
			if textLength > MAX_ALIAS_CHARACTERS then
				text = string.sub(text, 1, MAX_ALIAS_CHARACTERS)
				textLength = MAX_ALIAS_CHARACTERS
				if inputBoxRef and inputBoxRef.current then
					inputBoxRef.current.Text = text
				end
			end
			setCharacterCount(textLength)
		end
		setAliasText(text)
	end

	if getFFlagLimitAliasCharacterInput() then
		return React.createElement(InteractiveAlert, {
			title = localized.titleText,
			screenSize = props.screenSize,
			anchorPoint = Vector2.new(0.5, 0),
			position = UDim2.new(0.5, 0, 0, contentSize.Y),
			middleContent = function()
				return React.createElement(FitFrameVertical, {
					BackgroundTransparency = 1,
					width = UDim.new(1, 0),
					FillDirection = Enum.FillDirection.Vertical,
					VerticalAlignment = Enum.VerticalAlignment.Center,
					contentPadding = UDim.new(0, CONTENT_PADDING),
					[React.Change.AbsoluteSize] = changeContentSize,
				}, {
					InputGroup = React.createElement("Frame", {
						BackgroundTransparency = 1,
						Size = UDim2.fromScale(1, 0),
						AutomaticSize = Enum.AutomaticSize.Y,
						LayoutOrder = 1,
					}, {
						UIListLayout = React.createElement("UIListLayout", {
							Padding = UDim.new(0, CONTENT_PADDING * 1.5),
							FillDirection = Enum.FillDirection.Vertical,
							VerticalAlignment = Enum.VerticalAlignment.Center,
						}),
						Description = React.createElement(FitTextLabel, {
							LayoutOrder = 1,
							BackgroundTransparency = 1,
							TextWrapped = true,
							width = FitTextLabel.Width.FitToText,
							maximumWidth = contentSize.X,
							Font = font.Body.Font,
							Text = localized.descriptionText,
							TextSize = font.BaseSize * font.Body.RelativeSize,
							TextColor3 = theme.TextDefault.Color,
						}),
						InputBackground = React.createElement(ImageSetLabel, {
							Size = UDim2.new(1, 0, 0, fontSize + TEXTBOX_VERTICAL_PADDING * 2),
							BackgroundTransparency = 1,
							LayoutOrder = 2,
							Image = Images["component_assets/circle_21"],
							ImageColor3 = theme.UIMuted.Color,
							ScaleType = Enum.ScaleType.Slice,
							SliceCenter = Rect.new(8, 8, 9, 9),
						}, {
							InputBorder = React.createElement(ImageSetLabel, {
								Size = UDim2.new(1, 0, 0, fontSize + TEXTBOX_VERTICAL_PADDING * 2),
								BackgroundTransparency = 1,
								LayoutOrder = 1,
								Image = Images["component_assets/circle_21_stroke_1"],
								ImageColor3 = theme.Divider.Color,
								ScaleType = Enum.ScaleType.Slice,
								SliceCenter = Rect.new(8, 8, 9, 9),
							}, {
								Padding = React.createElement("UIPadding", {
									PaddingLeft = UDim.new(0, TEXTBOX_HORIZONTAL_PADDING),
									PaddingRight = UDim.new(0, TEXTBOX_HORIZONTAL_PADDING),
								}),
								Textbox = React.createElement(CallbackInputBox, {
									inputTextXAlignment = Enum.TextXAlignment.Left,
									inputTextColor3 = theme.TextDefault.Color,
									inputTextTransparency = theme.TextDefault.Transparency,
									inputTextSize = fontSize,
									initialInputText = aliasText,
									placeholderText = "Alias",
									placeholderTextColor3 = theme.TextDefault.Color,
									placeholderTextTransparency = 1,
									captureFocusOnMount = true,
									clearButtonDisabled = true,
									textChangedCallback = textChanged,
									inputBoxRef = inputBoxRef,
								}),
							}),
						}),
					}),

					Counter = React.createElement("Frame", {
						BackgroundTransparency = 1,
						Size = UDim2.fromScale(1, 0),
						AutomaticSize = Enum.AutomaticSize.Y,
						LayoutOrder = 2,
					}, {
						React.createElement(FitTextLabel, {
							BackgroundTransparency = 1,
							width = FitTextLabel.Width.FitToText,
							maximumWidth = contentSize.X,
							Font = font.CaptionBody.Font,
							Text = string.format("%d/%d", characterCount, MAX_ALIAS_CHARACTERS),
							TextSize = font.BaseSize * font.CaptionBody.RelativeSize,
							TextColor3 = theme.TextMuted.Color,
							TextTransparency = theme.TextMuted.Transparency,
							AnchorPoint = Vector2.new(1, 0.5),
							Position = UDim2.fromScale(1, 0),
						}),
					}),
				})
			end,
			buttonStackInfo = {
				buttons = {
					{
						buttonType = ButtonType.Secondary,
						props = {
							onActivated = props.cancelOnActivated,
							text = localized.cancelButtonText,
						},
					},
					{
						buttonType = ButtonType.PrimarySystem,
						props = {
							onActivated = onActivated,
							text = localized.saveButtonText,
						},
					},
				},
				buttonHeight = BUTTON_HEIGHT,
				marginBetween = BUTTON_MARGINS,
				forcedFillDirection = Enum.FillDirection.Horizontal,
			},
		})
	else
		return React.createElement(InteractiveAlert, {
			title = localized.titleText,
			screenSize = props.screenSize,
			anchorPoint = Vector2.new(0.5, 0),
			position = UDim2.new(0.5, 0, 0, contentSize.Y),
			middleContent = function()
				return React.createElement(FitFrameVertical, {
					BackgroundTransparency = 1,
					width = UDim.new(1, 0),
					FillDirection = Enum.FillDirection.Vertical,
					HorizontalAlignment = Enum.HorizontalAlignment.Center,
					VerticalAlignment = Enum.VerticalAlignment.Center,
					contentPadding = UDim.new(0, CONTENT_PADDING),
					[React.Change.AbsoluteSize] = changeContentSize,
				}, {
					Description = React.createElement(FitTextLabel, {
						LayoutOrder = 1,
						BackgroundTransparency = 1,
						TextWrapped = true,
						width = FitTextLabel.Width.FitToText,
						maximumWidth = contentSize.X,
						Font = font.Footer.Font,
						Text = localized.descriptionText,
						TextSize = font.BaseSize * font.Body.RelativeSize,
						TextColor3 = theme.TextDefault.Color,
					}),
					InputBackground = React.createElement(ImageSetLabel, {
						Size = UDim2.new(1, 0, 0, fontSize + TEXTBOX_VERTICAL_PADDING * 2),
						BackgroundTransparency = 1,
						LayoutOrder = 2,
						Image = Images["component_assets/circle_21"],
						ImageColor3 = theme.UIMuted.Color,
						ImageTransparency = theme.UIMuted.Transparency,
						ScaleType = Enum.ScaleType.Slice,
						SliceCenter = Rect.new(8, 8, 9, 9),
					}, {
						InputBorder = React.createElement(ImageSetLabel, {
							Size = UDim2.new(1, 0, 0, fontSize + TEXTBOX_VERTICAL_PADDING * 2),
							BackgroundTransparency = 1,
							LayoutOrder = 1,
							Image = Images["component_assets/circle_21_stroke_1"],
							ImageColor3 = theme.Divider.Color,
							ScaleType = Enum.ScaleType.Slice,
							SliceCenter = Rect.new(8, 8, 9, 9),
						}, {
							Padding = React.createElement("UIPadding", {
								PaddingLeft = UDim.new(0, TEXTBOX_HORIZONTAL_PADDING),
								PaddingRight = UDim.new(0, TEXTBOX_HORIZONTAL_PADDING),
							}),
							Textbox = React.createElement(CallbackInputBox, {
								inputTextXAlignment = Enum.TextXAlignment.Left,
								inputTextColor3 = theme.TextDefault.Color,
								inputTextTransparency = theme.TextDefault.Transparency,
								inputTextSize = fontSize,
								initialInputText = aliasText,
								placeholderText = "Alias",
								placeholderTextColor3 = theme.TextDefault.Color,
								placeholderTextTransparency = 1,
								captureFocusOnMount = true,
								clearButtonDisabled = true,
								textChangedCallback = textChanged,
							}),
						}),
					}),
				})
			end,
			buttonStackInfo = {
				buttons = {
					{
						buttonType = ButtonType.Secondary,
						props = {
							onActivated = props.cancelOnActivated,
							text = localized.cancelButtonText,
						},
					},
					{
						buttonType = ButtonType.PrimarySystem,
						props = {
							onActivated = onActivated,
							text = localized.saveButtonText,
						},
					},
				},
				buttonHeight = BUTTON_HEIGHT,
				marginBetween = BUTTON_MARGINS,
				forcedFillDirection = Enum.FillDirection.Horizontal,
			},
		})
	end
end

return SetAliasModal
