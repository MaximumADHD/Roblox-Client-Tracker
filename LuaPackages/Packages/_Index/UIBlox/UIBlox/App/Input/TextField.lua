local Input = script.Parent
local App = Input.Parent
local UIBlox = App.Parent
local Packages = UIBlox.Parent

local React = require(Packages.React)
local Foundation = require(Packages.Foundation)
local normalizeFontFace = Foundation.Utility.normalizeFontFace

local InputLabel = require(Input.InputLabel)
local HelperText = require(Input.HelperText)
local ImageSetComponent = require(UIBlox.Core.ImageSet.ImageSetComponent)
local ImagesTypes = require(App.ImageSet.ImagesTypes)

local useStyle = require(UIBlox.Core.Style.useStyle)
local useCursor = require(UIBlox.App.SelectionCursor.useCursor)
local UIBloxConfig = require(UIBlox.UIBloxConfig)

local FFlagFoundationFontFaceMigration = Foundation.Utility.Flags.FoundationFontFaceMigration

type TextFieldProps = {
	-- Input text value
	text: string,
	-- Input type. Note: Only available on CoreGui.
	textInputType: Enum.TextInputType?,
	-- Whether the input is in an error state
	error: boolean?,
	-- Whether the input is disabled
	disabled: boolean?,
	-- Whether the input is required, true for "*", false for " (optional)", nil for nothing
	required: boolean?,
	-- On input text change
	onChange: (text: string) -> (),
	-- Input label text
	label: string?,
	-- Helper text below the input, is red on error
	hint: string?,
	-- Placeholder text for input
	placeholder: string?,
	-- Width of the component
	width: UDim?,
	-- Image before the input
	iconLeading: ImagesTypes.ImageSetImage?,
	-- Image after the input, can be pressed
	iconButton: ImagesTypes.ImageSetImage?,
	-- On press of the icon button
	onButtonPress: (() -> ())?,
	-- On successful focus of the textbox (doesn't call if focus is attempted while the input is disabled)
	onFocusGained: (() -> ())?,
	LayoutOrder: number?,
	openTypeFeatures: string?,
}

local defaultProps = {
	width = UDim.new(0, 400),
}

local function TextField(props: TextFieldProps)
	local style = useStyle()
	local tokens = style.Tokens

	local textBox = React.useRef(nil)
	local hover, setHover = React.useState(false)
	local focus, setFocus = React.useState(false)

	local selectionBorderThickness = tokens.Stroke.Thick
	local iconSize = tokens.Size.Size_400

	local outerBorderThickness = tokens.Stroke.Standard
	local outerBorderOffset = math.ceil(outerBorderThickness) * 2
	local innerBorderThickness = tokens.Stroke.Thick
	local innerBorderOffset = math.ceil(innerBorderThickness) * 2

	local inputCursor = useCursor(UDim.new(0, tokens.Radius.Medium), selectionBorderThickness, selectionBorderThickness)
	local iconCursor = useCursor(UDim.new(0.5), iconSize / 2, selectionBorderThickness)

	local width = if props.width ~= nil then props.width else defaultProps.width

	local function canUseTextInputType(): boolean
		local success, value = pcall(function()
			local CoreGui = game:GetService("CoreGui")
			local _ = CoreGui.Name
			return CoreGui
		end)
		return success and value ~= nil
	end

	local function getTextBoxWidthOffset(): number
		local offset = 0
		if props.iconLeading then
			offset -= iconSize
			offset -= tokens.Gap.Small * 2
		end
		if props.iconButton then
			offset -= iconSize
			offset -= tokens.Gap.Small * 2
		end
		return offset
	end

	local function onTextChange(rbx: TextBox?)
		if rbx == nil then
			props.onChange("")
		else
			props.onChange(rbx.Text)
		end
	end

	local function onFocusGained()
		if props.disabled and textBox.current then
			textBox.current:ReleaseFocus()
		else
			setFocus(true)
			if props.onFocusGained then
				props.onFocusGained()
			end
		end
	end

	local function onFocusLost()
		setFocus(false)
	end

	return React.createElement("Frame", {
		BackgroundTransparency = 1,
		Size = UDim2.new(width, UDim.new(0, 0)),
		AutomaticSize = Enum.AutomaticSize.Y,
		LayoutOrder = props.LayoutOrder,
	}, {
		Layout = React.createElement("UIListLayout", {
			FillDirection = Enum.FillDirection.Vertical,
			SortOrder = Enum.SortOrder.LayoutOrder,
			Padding = UDim.new(0, tokens.Size.Size_100),
		}),

		InputLabel = if props.label
			then React.createElement(InputLabel, {
				text = props.label,
				required = props.required,
				LayoutOrder = 1,
			})
			else nil,

		InputCanvas = React.createElement("CanvasGroup", {
			Size = UDim2.new(1, 0, 0, tokens.Size.Size_1200),
			BackgroundTransparency = 1,
			LayoutOrder = 2,
			GroupTransparency = if props.disabled then 1 - tokens.Component.TextField.Disabled.Field.Opacity else 0,
		}, {
			Input = React.createElement("ImageButton", {
				Size = UDim2.new(1, -outerBorderOffset, 1, -outerBorderOffset),
				Position = UDim2.new(0, outerBorderOffset / 2, 0, outerBorderOffset / 2),
				BackgroundTransparency = 1,
				Selectable = not props.disabled,
				Image = "",
				SelectionImageObject = inputCursor,

				[React.Event.Activated] = function()
					if textBox.current then
						textBox.current:CaptureFocus()
					end
				end,
				[React.Event.MouseEnter] = function()
					setHover(true)
				end,
				[React.Event.MouseLeave] = function()
					setHover(false)
				end,
			}, {
				Corner = React.createElement("UICorner", {
					CornerRadius = UDim.new(0, tokens.Radius.Medium),
				}),

				Border = React.createElement("UIStroke", {
					Color = if props.error
						then tokens.Color.ActionAlert.Border.Color3
						else tokens.Color.Stroke.Emphasis.Color3,
					Transparency = if props.error
						then tokens.Color.ActionAlert.Border.Transparency
						else if focus then 0 else tokens.Color.Stroke.Emphasis.Transparency,
					Thickness = outerBorderThickness,
				}),

				BorderFrame = React.createElement("Frame", {
					Size = UDim2.new(1, -innerBorderOffset, 1, -innerBorderOffset),
					Position = UDim2.new(0, innerBorderOffset / 2, 0, innerBorderOffset / 2),
					BackgroundTransparency = 1,
				}, {
					Corner = React.createElement("UICorner", {
						CornerRadius = UDim.new(0, tokens.Radius.Medium - innerBorderOffset / 2),
					}),

					Focus = if not props.disabled and (hover or focus)
						then React.createElement("UIStroke", {
							Color = tokens.Color.Stroke.Emphasis.Color3,
							Transparency = 0.88,
							Thickness = innerBorderThickness,
						})
						else nil,

					Padding = React.createElement("UIPadding", {
						PaddingLeft = UDim.new(0, tokens.Size.Size_300),
						PaddingRight = UDim.new(0, tokens.Size.Size_300),
					}),

					Layout = React.createElement("UIListLayout", {
						FillDirection = Enum.FillDirection.Horizontal,
						VerticalAlignment = Enum.VerticalAlignment.Center,
						SortOrder = Enum.SortOrder.LayoutOrder,
						Padding = UDim.new(0, tokens.Gap.Small * 2),
					}),

					IconLeading = if props.iconLeading
						then React.createElement(ImageSetComponent.Label, {
							BackgroundTransparency = 1,
							Image = props.iconLeading,
							Size = UDim2.new(0, iconSize, 0, iconSize),
							ImageColor3 = tokens.Color.Content.Muted.Color3,
							ImageTransparency = tokens.Color.Content.Muted.Transparency,
							LayoutOrder = 1,
						})
						else nil,

					TextBox = React.createElement("TextBox", {
						ref = textBox,
						Text = props.text,
						TextInputType = canUseTextInputType() and props.textInputType or nil,
						ClearTextOnFocus = false,
						Size = UDim2.new(1, getTextBoxWidthOffset(), 1, 0),
						TextEditable = not props.disabled,
						BackgroundTransparency = 1,
						TextXAlignment = Enum.TextXAlignment.Left,
						TextYAlignment = Enum.TextYAlignment.Center,
						Font = if FFlagFoundationFontFaceMigration then nil else tokens.Typography.BodyLarge.Font,
						FontFace = if FFlagFoundationFontFaceMigration
							then normalizeFontFace(tokens.Typography.BodyLarge.Font)
							else nil,
						OpenTypeFeatures = if UIBloxConfig.enableOpenTypeSupport and props.openTypeFeatures
							then props.openTypeFeatures
							else nil,
						TextSize = tokens.Typography.BodyLarge.FontSize,
						LineHeight = 1,
						TextColor3 = tokens.Color.Content.Emphasis.Color3,
						TextTransparency = tokens.Color.Content.Emphasis.Transparency,
						PlaceholderText = props.placeholder,
						PlaceholderColor3 = tokens.Color.Content.Default.Color3,
						ClipsDescendants = true,
						Selectable = false,
						LayoutOrder = 2,

						[React.Event.Focused] = onFocusGained,
						[React.Event.FocusLost] = onFocusLost,
						[React.Change.Text] = onTextChange,
					}),

					IconButton = if props.iconButton
						then React.createElement(ImageSetComponent.Button, {
							BackgroundTransparency = 1,
							Image = props.iconButton,
							Size = UDim2.new(0, iconSize, 0, iconSize),
							ImageColor3 = tokens.Color.Content.Muted.Color3,
							Selectable = not props.disabled,
							SelectionImageObject = iconCursor,
							LayoutOrder = 3,

							[React.Event.Activated] = if not props.disabled then props.onButtonPress else nil,
						})
						else nil,
				}),
			}),
		}),

		HelperText = if props.hint
			then React.createElement(HelperText, {
				text = props.hint,
				error = props.error,
				LayoutOrder = 3,
			})
			else nil,
	})
end

return TextField
