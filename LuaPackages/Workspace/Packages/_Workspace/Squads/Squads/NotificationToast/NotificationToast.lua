local TextService = game:GetService("TextService")
local Squads = script:FindFirstAncestor("Squads")
local dependencies = require(Squads.dependencies)
local Dash = dependencies.Dash
local React = dependencies.React
local Roact = dependencies.Roact
local RoactFitComponents = dependencies.RoactFitComponents
local UIBlox = dependencies.UIBlox
local useLocalization = dependencies.Hooks.useLocalization

local FitFrameVertical = RoactFitComponents.FitFrameVertical
local ButtonStack = UIBlox.App.Button.ButtonStack
local ButtonType = UIBlox.App.Button.Enum.ButtonType
local LoadableImage = UIBlox.App.Loading.LoadableImage
local useStyle = UIBlox.Core.Style.useStyle

local FacePile = require(Squads.Components.FacePile)
local ProgressBar = require(Squads.Components.ProgressBar)

export type Props = {
	-- The title of the notification.
	title: string,
	-- The subtext of the notification.
	subtext: string?,
	-- The description of the notification.
	description: string?,
	-- The thumbnail image of the notification.
	thumbnail: string?,
	-- The negative action button string.
	negativeText: string?,
	-- The positive action button string.
	positiveText: string?,
	-- Shows the buttons.
	showButtons: boolean,
	-- Enables compact mode.
	enableCompact: boolean,
	-- List of user ids for the face pile.
	users: { [number]: string }?,
	-- Number of seconds to show this notification.
	totalElapsedTime: number?,
}

local defaultProps = {
	negativeText = "CommonUI.Controls.Action.Decline",
	positiveText = "CommonUI.Controls.Action.Accept",
	showButtons = true,
}

local BUTTON_STACK_HEIGHT = 28
local DESCRIPTION_TOP_PADDING = 4
local IMAGE_SIZE = 48
local IMAGE_SIZE_COMPACT = 32
local SUBTEXT_MAX_WIDTH = 120
local TOAST_BETWEEN_PADDING = 8
local TOAST_PADDING = 12
local TOAST_PADDING_COMPACT = 8

local NotifcationToast = function(passedProps: Props)
	local props: Props = Dash.join(defaultProps, passedProps)
	local localized = useLocalization({
		negativeText = props.negativeText,
		positiveText = props.positiveText,
	})
	local style = useStyle()

	local textFont = style.Font.CaptionHeader.Font
	local textFontSize = style.Font.BaseSize :: number * style.Font.CaptionHeader.RelativeSize :: number
	local subtextTextSize = if props.subtext and #props.subtext > 0
		then TextService:GetTextSize(props.subtext, textFontSize, textFont, Vector2.new(SUBTEXT_MAX_WIDTH, math.huge))
		else Vector2.new(0, 0)

	local imageSize = if props.enableCompact then IMAGE_SIZE_COMPACT else IMAGE_SIZE
	local toastPadding = if props.enableCompact then TOAST_PADDING_COMPACT else TOAST_PADDING

	return React.createElement("Frame", {
		AutomaticSize = Enum.AutomaticSize.Y,
		BackgroundColor3 = UIBlox.App.Style.Colors.Flint,
		BorderSizePixel = 0,
		Size = UDim2.fromScale(1, 0),
	}, {
		Corner = Roact.createElement("UICorner", {
			CornerRadius = UDim.new(0, 8),
		}),

		ListLayout = Roact.createElement("UIListLayout", {
			FillDirection = Enum.FillDirection.Vertical,
			SortOrder = Enum.SortOrder.LayoutOrder,
		}),

		Padding = Roact.createElement("UIPadding", {
			PaddingLeft = UDim.new(0, toastPadding),
			PaddingTop = UDim.new(0, toastPadding),
			PaddingRight = UDim.new(0, toastPadding),
			PaddingBottom = UDim.new(0, toastPadding),
		}),

		Header = Roact.createElement("Frame", {
			AutomaticSize = Enum.AutomaticSize.Y,
			BackgroundTransparency = 1,
			BorderSizePixel = 0,
			LayoutOrder = 0,
			Size = UDim2.fromScale(1, 0),
		}, {
			ListLayout = Roact.createElement("UIListLayout", {
				FillDirection = Enum.FillDirection.Horizontal,
				SortOrder = Enum.SortOrder.LayoutOrder,
			}),

			-- TODO: Figure out what to do if the image fails to load
			HeaderImage = if props.thumbnail
				then React.createElement(LoadableImage, {
					BackgroundTransparency = 1,
					Image = props.thumbnail,
					LayoutOrder = 0,
					Size = UDim2.fromOffset(imageSize, imageSize),
					useShimmerAnimationWhileLoading = true,
				})
				else nil,

			HeaderText = Roact.createElement("Frame", {
				AutomaticSize = Enum.AutomaticSize.Y,
				BackgroundTransparency = 1,
				BorderSizePixel = 0,
				LayoutOrder = 1,
				Size = UDim2.new(1, if props.thumbnail then -imageSize else 0, 0, 0),
			}, {
				Padding = Roact.createElement("UIPadding", {
					PaddingLeft = UDim.new(0, if props.thumbnail then TOAST_BETWEEN_PADDING else 0),
				}),

				ListLayout = Roact.createElement("UIListLayout", {
					FillDirection = Enum.FillDirection.Vertical,
					HorizontalAlignment = Enum.HorizontalAlignment.Left,
					SortOrder = Enum.SortOrder.LayoutOrder,
					VerticalAlignment = Enum.VerticalAlignment.Center,
				}),

				HeaderTitle = Roact.createElement("Frame", {
					AutomaticSize = Enum.AutomaticSize.Y,
					BackgroundTransparency = 1,
					BorderSizePixel = 0,
					LayoutOrder = 0,
					Size = UDim2.fromScale(1, 0),
				}, {
					ListLayout = Roact.createElement("UIListLayout", {
						FillDirection = Enum.FillDirection.Horizontal,
						SortOrder = Enum.SortOrder.LayoutOrder,
					}),

					Title = Roact.createElement("TextLabel", {
						AutomaticSize = Enum.AutomaticSize.Y,
						BackgroundTransparency = 1,
						BorderSizePixel = 0,
						Font = textFont,
						LayoutOrder = 0,
						Size = UDim2.new(
							1,
							if props.subtext and #props.subtext > 0
								then -subtextTextSize.X - TOAST_BETWEEN_PADDING
								else 0,
							0,
							0
						),
						Text = props.title,
						TextColor3 = UIBlox.App.Style.Colors.White,
						TextSize = textFontSize,
						TextXAlignment = Enum.TextXAlignment.Left,
						TextTruncate = Enum.TextTruncate.AtEnd,
						TextWrapped = true,
					}, {
						SizeConstraint = Roact.createElement("UISizeConstraint", {
							-- Limit title to 2 lines. Based on the assumption
							-- that the text size is equal to the line height.
							MaxSize = Vector2.new(math.huge, textFontSize * 2),
						}),
					}),

					Subtext = if props.subtext and #props.subtext > 0
						then Roact.createElement("TextLabel", {
							AutomaticSize = Enum.AutomaticSize.Y,
							BackgroundTransparency = 1,
							BorderSizePixel = 0,
							Font = textFont,
							LayoutOrder = 1,
							Size = UDim2.new(0, subtextTextSize.X + TOAST_BETWEEN_PADDING, 0, 0),
							Text = props.subtext,
							TextColor3 = UIBlox.App.Style.Colors.Pumice,
							TextSize = textFontSize,
							TextTruncate = Enum.TextTruncate.AtEnd,
						}, {
							Padding = Roact.createElement("UIPadding", {
								PaddingLeft = UDim.new(0, TOAST_BETWEEN_PADDING),
							}),
						})
						else nil,
				}),

				Description = if props.description and #props.description > 0
					then Roact.createElement("TextLabel", {
						AutomaticSize = Enum.AutomaticSize.Y,
						BackgroundTransparency = 1,
						BorderSizePixel = 0,
						Font = textFont,
						LayoutOrder = 1,
						Size = UDim2.fromScale(1, 0),
						Text = props.description,
						TextColor3 = UIBlox.App.Style.Colors.Pumice,
						TextSize = textFontSize,
						TextWrapped = true,
						TextTruncate = Enum.TextTruncate.AtEnd,
						TextXAlignment = Enum.TextXAlignment.Left,
					}, {
						Padding = Roact.createElement("UIPadding", {
							PaddingTop = UDim.new(0, DESCRIPTION_TOP_PADDING),
						}),

						-- Limit title to 3 lines. Based on the assumption
						-- that the text size is equal to the line height.
						SizeConstraint = Roact.createElement("UISizeConstraint", {
							MaxSize = Vector2.new(math.huge, textFontSize * 3 + DESCRIPTION_TOP_PADDING),
						}),
					})
					else nil,
			}),
		}),

		Content = if (props.users and #props.users > 0) or (props.totalElapsedTime and props.totalElapsedTime > 0)
			then Roact.createElement(FitFrameVertical, {
				FillDirection = Enum.FillDirection.Vertical,
				LayoutOrder = 1,
				BackgroundTransparency = 1,
				BorderSizePixel = 0,
				contentPadding = UDim.new(0, TOAST_BETWEEN_PADDING),
				width = UDim.new(1, 0),
				margin = {
					top = TOAST_BETWEEN_PADDING,
					left = 0,
					bottom = 0,
					right = 0,
				},
			}, {
				FacePile = if props.users and #props.users > 0
					then Roact.createElement(FacePile, {
						users = props.users,
						avatarSize = 32,
						overlapOffset = 4,
						borderWidth = 2,
						borderColor = Color3.fromRGB(57, 59, 61),
					})
					else nil,
				ProgressBar = if props.totalElapsedTime and props.totalElapsedTime > 0
					then Roact.createElement(ProgressBar, {
						targetElapsedTime = props.totalElapsedTime,
					})
					else nil,
			})
			else nil,

		Buttons = if props.showButtons
			then Roact.createElement("Frame", {
				BackgroundTransparency = 1,
				BorderSizePixel = 0,
				LayoutOrder = 2,
				Size = UDim2.new(1, 0, 0, BUTTON_STACK_HEIGHT + TOAST_BETWEEN_PADDING),
			}, {
				Padding = Roact.createElement("UIPadding", {
					PaddingTop = UDim.new(0, TOAST_BETWEEN_PADDING),
				}),

				Roact.createElement(ButtonStack, {
					buttonHeight = BUTTON_STACK_HEIGHT,
					buttons = {
						{
							buttonType = ButtonType.Secondary,
							props = {
								onActivated = function() end,
								text = localized.negativeText,
							},
						},
						{
							buttonType = ButtonType.PrimarySystem,
							props = {
								onActivated = function() end,
								text = localized.positiveText,
							},
						},
					},
				}),
			})
			else nil,
	})
end

return NotifcationToast
