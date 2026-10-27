--[[
	Displays a toast-style alert that can take many forms.
	Comes in "Warning", "Error", "Success", and "Info" styles.

	Required Props:
		string Title: The main text to show on the alert.

	Optional Props:
		string Description: Less prominent text to show underneath the title.
		table LinkMap: A table where the outermost element is a string representing the LinkPlaceholder, which points to an inner table containing the LinkCallback and LinkText
		string ShortTitle: If the title is too long for the alert, this will be used in its place.
		table PrimaryAction: A table that has a "Text" string and an "OnClick" property. If defined, the text will show as underlined text on the right, and OnClick will be called when the alert is clicked.
		callback OnClose: If specified, will add an "X" button that will call this callback when clicked.
		number ZIndex: The z-index to give to the alert.
]]
local TextService = game:GetService("TextService")

local Framework = script:FindFirstAncestor("UI").Parent

local React = require(Framework.Util.React)

local Image = require(Framework.UI.Components.Image)
local TextLabel = require(Framework.UI.Components.TextLabel)
local TextWithLinks = require(Framework.UI.Components.TextWithLinks)
local Pane = require(Framework.UI.Components.Pane)

local Colors = require(Framework.Style.Colors)
local Stylizer = require(Framework.UI.ContextServices.Stylizer)

local LayoutOrderIterator = require(Framework.Util.LayoutOrderIterator)

local Theme = require(script.style)

type Action = {
	Text: string,
	OnClick: () -> (),
}

export type Props = {
	Title: string,
	Description: string?,
	LinkMap: { [string]: string }?,

	ShortTitle: string?,

	PrimaryAction: Action?,
	OnClose: (() -> ())?,

	ZIndex: number?,

	Style: string?,
}

type ToggleState = {
	enabled: boolean,
	enable: () -> (),
	disable: () -> (),
}

local function useToggleState(default: boolean): ToggleState
	local enabled, setEnabled = React.useState(default)

	local enable = React.useCallback(function()
		setEnabled(true)
	end, {})

	local disable = React.useCallback(function()
		setEnabled(false)
	end, {})

	return {
		enabled = enabled,
		enable = enable,
		disable = disable,
	}
end

local function Alert(props: Props)
	assert(React ~= "", "You must be using non-legacy React in order to use Alert")

	local style: Theme.Style = Stylizer:use("Alert", props)

	local layoutOrderIterator = LayoutOrderIterator.new()

	local alertHovered = useToggleState(false)
	local closeHovered = useToggleState(false)

	local titleStartX, setTitleStartX = React.useState(0)
	local rightSideStartX, setRightSideStartX = React.useState(0)

	local function textWidth(text: string, font: Enum.Font)
		return TextService:GetTextSize(text, style.TextSize, font, Vector2.new(math.huge, style.TextSize)).X
	end

	local longTitleWidth = textWidth(props.Title, style.TitleFont)

	local useShortTitle = props.ShortTitle ~= nil and titleStartX + longTitleWidth > rightSideStartX
	local title = if useShortTitle then props.ShortTitle else props.Title

	local displayTitleWidth = if useShortTitle
		then textWidth(assert(props.ShortTitle, "ShortTitle not specified, but useShortTitle is true"), style.TitleFont)
		else longTitleWidth

	local primaryActionWidth = if props.PrimaryAction
		then textWidth(props.PrimaryAction.Text, style.PrimaryActionFont)
		else 0

	local showIcon = style.Icon ~= nil

	return React.createElement(Pane, {
		AnchorPoint = Vector2.new(0.5, 0),
		AutomaticSize = Enum.AutomaticSize.Y,
		BackgroundColor3 = if (alertHovered.enabled and not closeHovered.enabled)
			then Colors.darker(style.BackgroundColor, style.BackgroundColorHoverDarkerMultiplier)
			else style.BackgroundColor,
		Position = UDim2.new(UDim.new(0.5, 0), style.TopPadding),
		Size = UDim2.new(UDim.new(1, 0) - style.HorizontalPadding, UDim.new(0, 0)),
		ZIndex = props.ZIndex,

		Padding = style.InnerPadding,

		[React.Event.MouseEnter] = if props.PrimaryAction then alertHovered.enable else nil,
		[React.Event.MouseLeave] = if props.PrimaryAction then alertHovered.disable else nil,
		OnClick = if props.PrimaryAction then props.PrimaryAction.OnClick else nil,
	}, {
		UICorner = React.createElement("UICorner", {
			CornerRadius = style.CornerRadius,
		}),

		UISizeConstraint = React.createElement("UISizeConstraint", {
			MaxSize = Vector2.new(style.MaxWidth, math.huge),
		}),

		UIStroke = React.createElement("UIStroke", {
			ApplyStrokeMode = Enum.ApplyStrokeMode.Border,
			Color = style.StrokeColor,
			Thickness = style.StrokeThickness,
		}),

		Image = showIcon and React.createElement(Image, {
			Image = style.Icon,
			ImageColor3 = style.TextColor,
			LayoutOrder = layoutOrderIterator:getNextOrder(),
			Position = style.IconPosition,
			Size = style.IconSize,
		}),

		Contents = React.createElement(Pane, {
			AnchorPoint = Vector2.new(1, 0),
			AutomaticSize = Enum.AutomaticSize.Y,
			LayoutOrder = layoutOrderIterator:getNextOrder(),
			Position = UDim2.fromScale(1, 0),
			Size = UDim2.new(
				UDim.new(1, 0)
					- (if showIcon then (style.IconSize.X + UDim.new(0, style.ContentsSpacing)) else UDim.new()),
				UDim.new(0, 0)
			),

			Layout = Enum.FillDirection.Vertical,
			Spacing = 2,
		}, {
			Title = React.createElement(Pane, {
				AutomaticSize = Enum.AutomaticSize.Y,
				LayoutOrder = layoutOrderIterator:getNextOrder(),
				Size = UDim2.fromScale(1, 0),
			}, {
				LeftSide = React.createElement(Pane, {
					AutomaticSize = Enum.AutomaticSize.XY,
					Layout = Enum.FillDirection.Horizontal,
					Spacing = style.ContentsSpacing,
				}, {
					TitleSpace = React.createElement(Pane, {
						AutomaticSize = Enum.AutomaticSize.XY,
						LayoutOrder = layoutOrderIterator:getNextOrder(),
						Size = UDim2.fromOffset(0, 0),
						[React.Change.AbsolutePosition] = function(instance)
							setTitleStartX(instance.AbsolutePosition.X)
						end,
					}, {
						MaxSizeContraint = React.createElement("UISizeConstraint", {
							MaxSize = Vector2.new(longTitleWidth, math.huge),
							MinSize = Vector2.new(0, 0),
						}),
						Title = React.createElement(TextLabel, {
							Font = style.TitleFont,
							Text = title,
							TextColor = style.TextColor,
							TextSize = style.TextSize,
							AutomaticSize = Enum.AutomaticSize.XY,
							TextWrapped = true,
							TextXAlignment = Enum.TextXAlignment.Left,
							TextYAlignment = Enum.TextYAlignment.Top,
						}),
					}),
				}),

				RightSide = React.createElement(Pane, {
					AnchorPoint = Vector2.new(1, 0),
					AutomaticSize = Enum.AutomaticSize.X,
					Position = UDim2.fromScale(1, 0),
					Size = UDim2.fromOffset(0, 18),

					Layout = Enum.FillDirection.Horizontal,
					Spacing = style.ContentsSpacing,

					[React.Change.AbsolutePosition] = function(instance)
						setRightSideStartX(instance.AbsolutePosition.X)
					end,
				}, {
					PrimaryActionSpace = React.createElement(Pane, {
						AutomaticSize = Enum.AutomaticSize.Y,
						LayoutOrder = layoutOrderIterator:getNextOrder(),
						Size = UDim2.fromOffset(primaryActionWidth, 0),
					}, {
						PrimaryAction = if props.PrimaryAction ~= nil
								and (titleStartX + displayTitleWidth) < rightSideStartX
							then React.createElement(TextLabel, {
								AutomaticSize = Enum.AutomaticSize.XY,
								Font = style.PrimaryActionFont,
								LayoutOrder = layoutOrderIterator:getNextOrder(),
								RichText = true,
								Text = `<u>{props.PrimaryAction.Text}</u>`,
								TextColor = style.TextColor,
							})
							else nil,
					}),

					Close = props.OnClose and React.createElement("TextButton", {
						BackgroundTransparency = 1,
						LayoutOrder = layoutOrderIterator:getNextOrder(),
						Size = UDim2.fromScale(1, 1),
						Text = "",

						[React.Event.Activated] = props.OnClose,
						[React.Event.MouseEnter] = closeHovered.enable,
						[React.Event.MouseLeave] = closeHovered.disable,
					}, {
						UIAspectRatioConstraint = React.createElement("UIAspectRatioConstraint"),

						IconContents = React.createElement(Pane, {
							Padding = {
								Left = 4,
								Right = 4,
								Top = 2,
							},
						}, {
							Icon = React.createElement(Image, {
								AnchorPoint = Vector2.new(0.5, 0.5),
								Image = style.CloseButtonImage,
								ImageColor3 = style.TextColor,
								Position = UDim2.fromScale(0.5, 0.5),
								Size = UDim2.fromScale(1, 1),
							}, {
								UIAspectRatioConstraint = React.createElement("UIAspectRatioConstraint"),
							}),
						}),

						HoverBackground = closeHovered.enabled and React.createElement(Pane, {
							AnchorPoint = Vector2.new(0.5, 0.5),
							BackgroundColor3 = style.HoverCircleColor,
							Position = UDim2.fromScale(0.5, 0.5),
							Size = style.IconSize + style.HoverCircleAdditionalSize,
							Transparency = style.HoverCircleTransparency,
							ZIndex = 0,
						}, {
							UICorner = React.createElement("UICorner", {
								CornerRadius = UDim.new(1, 0),
							}),
						}),
					}),
				}),
			}),

			Description = props.Description and props.LinkMap == nil and React.createElement(TextLabel, {
				AutomaticSize = Enum.AutomaticSize.Y,
				LayoutOrder = layoutOrderIterator:getNextOrder(),
				Size = UDim2.fromScale(1, 0),
				Text = props.Description,
				TextColor = style.TextColor,
				TextWrapped = true,
				TextXAlignment = Enum.TextXAlignment.Left,
			}),

			DescriptionWithLink = props.Description and props.LinkMap ~= nil and React.createElement(TextWithLinks, {
				AutomaticSize = Enum.AutomaticSize.Y,
				HorizontalAlignment = Enum.HorizontalAlignment.Left,
				LayoutOrder = layoutOrderIterator:getNextOrder(),
				LinkMap = props.LinkMap,
				Size = UDim2.fromScale(1, 0),
				Text = props.Description,
				TextColor = style.TextColor,
				TextProps = {
					Font = Enum.Font.SourceSans,
					TextSize = 18,
					TextXAlignment = Enum.TextXAlignment.Left,
				},
				TextWrapped = true,
				TextXAlignment = Enum.TextXAlignment.Left,
			}),
		}),
	})
end

return Alert
