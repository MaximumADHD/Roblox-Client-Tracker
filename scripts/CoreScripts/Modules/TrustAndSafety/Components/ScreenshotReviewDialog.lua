--!nonstrict
local CorePackages = game:GetService("CorePackages")
local UIBlox = require(CorePackages.UIBlox)
local React = require(CorePackages.Packages.React)

local ButtonStack = UIBlox.App.Button.ButtonStack
local ButtonType = UIBlox.App.Button.Enum.ButtonType
local HeaderBar = UIBlox.App.Bar.HeaderBar
local IconButton = UIBlox.App.Button.IconButton
local IconSize = UIBlox.App.ImageSet.Enum.IconSize
local ImageSetLabel = UIBlox.Core.ImageSet.Button
local UIBloxImages = UIBlox.App.ImageSet.Images
local useStyle = UIBlox.Core.Style.useStyle
local PrimarySystemButton = UIBlox.App.Button.PrimarySystemButton

local TnsModule = script.Parent.Parent
local Assets = require(TnsModule.Resources.Assets)
local Dependencies = require(TnsModule.Dependencies)
local ScreenshotHelper = require(TnsModule.Utility.ScreenshotHelper)
local RestartScreenshotDialog = require(TnsModule.Components.RestartScreenshotDialog)

local Divider = require(Dependencies.Divider)

local TITLE_HEIGHT = 49
local HEADER_HEIGHT = 48
local FOOTER_HEIGHT = 48

export type Props = {
	onBack: () -> (),
	onNextPage: () -> (),
}
local function ScreenshotReviewDialog(props: Props)
	local isShowRestartDialog, setShowRestartDialog = React.useState(false)
	local stylePalette = useStyle()
	local theme = stylePalette.Theme
	local font = stylePalette.Font
	return React.createElement("Frame", {
		Size = UDim2.new(1, 0, 1, 0),
		BorderSizePixel = 0,
		BackgroundColor3 = theme.Overlay.Color,
		BackgroundTransparency = 0,
		ZIndex = -10,
	}, {
		RestartDialog = isShowRestartDialog and React.createElement("Frame", {
			Size = UDim2.new(1, 0, 1, 0),
			BackgroundTransparency = 1,
		}, {
			DialogBody = React.createElement(RestartScreenshotDialog, {
				ZIndex = 3,
				onCancel = function()
					setShowRestartDialog(false)
				end,
				onRestart = function() end,
			}),
		}),
		RestartDialogMask = isShowRestartDialog and React.createElement("Frame", {
			Size = UDim2.fromScale(1, 1),
			BackgroundTransparency = 0.2,
			BackgroundColor3 = theme.BackgroundUIDefault.Color,
		}, {}),
		ScreenshotDialog = React.createElement(ImageSetLabel, {
			Active = true, -- block input to the background overlay
			Size = UDim2.fromScale(1, 1),
			AnchorPoint = Vector2.new(0.5, 0.5),
			Position = UDim2.fromScale(0.5, 0.5),
			BackgroundTransparency = 1,
			Image = Assets.Images.RoundedRect.Image,
			ImageColor3 = theme.BackgroundUIDefault.Color,
			ImageTransparency = theme.BackgroundUIDefault.Transparency,
			ScaleType = Assets.Images.RoundedRect.ScaleType,
			SliceCenter = Assets.Images.RoundedRect.SliceCenter,
		}, {
			Layout = React.createElement("UIListLayout", {
				FillDirection = Enum.FillDirection.Vertical,
				HorizontalAlignment = Enum.HorizontalAlignment.Center,
				SortOrder = Enum.SortOrder.LayoutOrder,
			}),
			-- List layout for header and content
			HeaderAndContent = React.createElement("Frame", {
				Size = UDim2.new(1, 0, 1, -FOOTER_HEIGHT),
				BackgroundTransparency = 1,
			}, {
				Layout = React.createElement("UIListLayout", {
					FillDirection = Enum.FillDirection.Vertical,
					HorizontalAlignment = Enum.HorizontalAlignment.Center,
					SortOrder = Enum.SortOrder.LayoutOrder,
				}),
				Header = React.createElement("Frame", {
					BackgroundTransparency = 0,
					BackgroundColor3 = Color3.fromHex("#4F545F"),
					LayoutOrder = 1,
					Size = UDim2.new(1, 0, 0, TITLE_HEIGHT - 1),
				}, {
					-- Bar can be hidden. Still keep the space for HeaderBar
					Bar = React.createElement(HeaderBar, {
						backgroundTransparency = 1,
						barHeight = HEADER_HEIGHT,
						renderLeft = function()
							return React.createElement(IconButton, {
								iconSize = IconSize.Medium,
								icon = UIBloxImages["icons/navigation/pushBack"],
								onActivated = function()
									props.onBack()
								end,
							})
						end,
						-- Need dummy on the right to take up space for balance
						renderRight = function() end,
						title = "Highlight What's Wrong",
					}),
				}),
				Divider = React.createElement(Divider, {
					LayoutOrder = 2,
				}),
				ScreenshotBody = React.createElement("Frame", {
					BackgroundTransparency = 1,
					LayoutOrder = 3,
					Size = UDim2.new(1, 0, 1, FOOTER_HEIGHT),
					ZIndex = 10,
				}, {
					Layout = React.createElement("UIListLayout", {
						FillDirection = Enum.FillDirection.Vertical,
						HorizontalAlignment = Enum.HorizontalAlignment.Center,
						SortOrder = Enum.SortOrder.LayoutOrder,
					}),
					Screenshot = React.createElement("Frame", {
						Size = UDim2.new(0.8, 0, 0.8, 0),
						BorderSizePixel = 2,
						BorderMode = Enum.BorderMode.Inset,
						BorderColor3 = Color3.fromRGB(255, 255, 255),
						LayoutOrder = 1,
					}, {
						ScreenshotImage = React.createElement("ImageLabel", {
							Size = UDim2.fromScale(1, 1),
							Image = ScreenshotHelper:GetScreenshotContentId(),
							ZIndex = 1,
						}, {}),
						RestartButton = React.createElement(PrimarySystemButton, {
							position = UDim2.new(1, -200, 1, -54),
							size = UDim2.new(0, 160, 0, 48),
							icon = UIBloxImages["icons/menu/recover"],
							text = "Re-start",
							layoutOrder = 1,
							onActivated = function()
								setShowRestartDialog(true)
							end,
						}),
					}),
					Description = React.createElement("TextLabel", {
						Text = "Here's a screenshot we took when you hit Report",
						Font = font.Header1.Font,
						LayoutOrder = 2,
						TextColor3 = theme.TextEmphasis.Color,
						TextTransparency = theme.TextEmphasis.Transparency,
						TextSize = 14,
						TextXAlignment = Enum.TextXAlignment.Center,
						Size = UDim2.new(1, 0, 0, 24),
						BackgroundTransparency = 1,
					}),
				}),
			}),
			Footer = React.createElement("Frame", {
				BackgroundTransparency = 0,
				Size = UDim2.new(1, 0, 0, FOOTER_HEIGHT),
				BackgroundColor3 = Color3.fromHex("#4F545F"),
				AnchorPoint = Vector2.new(0, 1),
				Position = UDim2.fromScale(0, 1),
				LayoutOrder = 4,
			}, {
				Padding = React.createElement("UIPadding", {
					PaddingTop = UDim.new(0, 8),
					PaddingBottom = UDim.new(0, 8),
					PaddingLeft = UDim.new(0, 400),
					PaddingRight = UDim.new(0, 400),
				}),
				ActionButtons = React.createElement(ButtonStack, {
					buttons = {
						{
							buttonType = ButtonType.Secondary,
							props = {
								onActivated = function() end,
								text = "Describe Scene",
							},
						},
						{
							buttonType = ButtonType.PrimarySystem,
							props = {
								onActivated = function()
									props.onNextPage()
								end,
								text = "Highlight Scene",
							},
						},
					},
				}),
			}),
		}),
	})
end

return ScreenshotReviewDialog
