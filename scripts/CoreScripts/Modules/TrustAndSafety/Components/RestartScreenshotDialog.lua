--!nonstrict
local CorePackages = game:GetService("CorePackages")
local UIBlox = require(CorePackages.UIBlox)
local React = require(CorePackages.Packages.React)

local ButtonStack = UIBlox.App.Button.ButtonStack
local ButtonType = UIBlox.App.Button.Enum.ButtonType
local HeaderBar = UIBlox.App.Bar.HeaderBar

local useStyle = UIBlox.Core.Style.useStyle
local TnsModule = script.Parent.Parent
local Dependencies = require(TnsModule.Dependencies)

local Divider = require(Dependencies.Divider)

local HEADER_HEIGHT = 48
local FOOTER_HEIGHT = 48

export type Props = {
	onCancel: () -> (),
	onRestart: () -> (),
}

local function RestartScreenshotDialog(props: Props)
	local stylePalette = useStyle()
	local theme = stylePalette.Theme
	local font = stylePalette.Font
	return React.createElement("Frame", {
		Size = UDim2.new(0, 480, 0, 160),
		AnchorPoint = Vector2.new(0.5, 0.5),
		Position = UDim2.new(0.5, 0, 0.5, 0),
		BackgroundColor3 = Color3.fromHex("#4F545F"),
		ZIndex = 5,
	}, {
		Corner = React.createElement("UICorner", {
			CornerRadius = UDim.new(0, 8),
		}),
		HeaderAndContent = React.createElement("Frame", {
			Size = UDim2.new(1, 0, 1, 0),
			BackgroundTransparency = 1,
		}, {
			Layout = React.createElement("UIListLayout", {
				FillDirection = Enum.FillDirection.Vertical,
				HorizontalAlignment = Enum.HorizontalAlignment.Center,
				SortOrder = Enum.SortOrder.LayoutOrder,
			}),
			Header = React.createElement(HeaderBar, {
				backgroundTransparency = 1,
				barHeight = HEADER_HEIGHT,
				renderLeft = function() end,
				-- Need dummy on the right to take up space for balance
				renderRight = function() end,
				title = "Retake Scene",
				LayoutOrder = 1,
			}),
			Divider = React.createElement(Divider, {
				LayoutOrder = 2,
			}),
			Description = React.createElement("Frame", {
				Size = UDim2.new(1, 0, 1, -FOOTER_HEIGHT - 1),
				BackgroundTransparency = 1,
				LayoutOrder = 3,
			}, {
				Padding = React.createElement("UIPadding", {
					PaddingTop = UDim.new(0, 8),
					PaddingBottom = UDim.new(0, 8),
					PaddingLeft = UDim.new(0, 16),
					PaddingRight = UDim.new(0, 16),
				}),
				TextBody = React.createElement("TextLabel", {
					Text = "Help us understand what’s happening around you. We’ll capture the scene the moment you select “Report.”",
					Font = font.Body.Font,
					LayoutOrder = 3,
					TextColor3 = theme.TextEmphasis.Color,
					TextTransparency = theme.TextEmphasis.Transparency,
					TextSize = 14,
					TextWrapped = true,
					TextXAlignment = Enum.TextXAlignment.Left,
					Size = UDim2.new(1, 0, 0, 50),
					BackgroundTransparency = 1,
				}),
			}),
		}),
		Footer = React.createElement("Frame", {
			BackgroundTransparency = 1,
			Size = UDim2.new(1, 0, 0, FOOTER_HEIGHT),
			Position = UDim2.new(0, 0, 1, -FOOTER_HEIGHT),
			BorderSizePixel = 0,
			LayoutOrder = 4,
		}, {
			Padding = React.createElement("UIPadding", {
				PaddingTop = UDim.new(0, 6),
				PaddingBottom = UDim.new(0, 6),
				PaddingLeft = UDim.new(0, 16),
				PaddingRight = UDim.new(0, 16),
			}),
			ActionButtons = React.createElement(ButtonStack, {
				buttons = {
					{
						buttonType = ButtonType.Secondary,
						props = {
							onActivated = props.onCancel,
							text = "Cancel",
						},
					},
					{
						buttonType = ButtonType.PrimarySystem,
						props = {
							onActivated = props.onRestart,
							text = "Back To Experience",
						},
					},
				},
			}),
		}),
	})
end

return RestartScreenshotDialog
