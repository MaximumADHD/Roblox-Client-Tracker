--!nonstrict
local CorePackages = game:GetService("CorePackages")

local UIBlox = require(CorePackages.Packages.UIBlox)
local Foundation = require(CorePackages.Packages.Foundation)
local normalizeFontFace = Foundation.Utility.normalizeFontFace
local FFlagFoundationFontFaceMigration = Foundation.Utility.Flags.FoundationFontFaceMigration
local React = require(CorePackages.Packages.React)

local ButtonStack = UIBlox.App.Button.ButtonStack
local ButtonType = UIBlox.App.Button.Enum.ButtonType
local HeaderBar = UIBlox.App.Bar.HeaderBar

local useStyle = UIBlox.Core.Style.useStyle
local RAFolder = script.Parent.Parent
local RobloxTranslator = require(CorePackages.Workspace.Packages.RobloxTranslator)

local Divider = require(RAFolder.Components.Divider)

local HEADER_HEIGHT = 48
local FOOTER_HEIGHT = 48

export type Props = {
	isSmallPortraitMode: boolean,
	onCancel: () -> (),
	onRestart: () -> (),
}

local function RestartScreenshotDialog(props: Props)
	local stylePalette = useStyle()
	local theme = stylePalette.Theme
	local font = stylePalette.Font
	local footerHeight = FOOTER_HEIGHT
	local dialogHeight = 180
	local textBodyHeight = 50

	if props.isSmallPortraitMode then
		footerHeight = FOOTER_HEIGHT * 2 - 12
		dialogHeight = 260
		textBodyHeight = 100
	end

	local dialogWidth = if props.isSmallPortraitMode then 343 else 480
	return React.createElement("Frame", {
		Size = UDim2.new(0, dialogWidth, 0, dialogHeight),
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
				title = RobloxTranslator:FormatByKey("Feature.ReportAbuse.Action.RetakeScene"),
				LayoutOrder = 1,
			}),
			Divider = React.createElement(Divider, {
				LayoutOrder = 2,
			}),
			Description = React.createElement("Frame", {
				Size = UDim2.new(1, 0, 1, -footerHeight - 1),
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
					Text = RobloxTranslator:FormatByKey("Feature.ReportAbuse.Message.RetakeScene"),
					Font = if FFlagFoundationFontFaceMigration then nil else font.Body.Font,
					FontFace = if FFlagFoundationFontFaceMigration
						then normalizeFontFace(stylePalette.Tokens.Typography.BodyLarge.Font)
						else nil,
					LayoutOrder = 3,
					TextColor3 = theme.TextEmphasis.Color,
					TextTransparency = theme.TextEmphasis.Transparency,
					TextSize = 16,
					TextWrapped = true,
					TextXAlignment = Enum.TextXAlignment.Left,
					TextYAlignment = Enum.TextYAlignment.Top,
					Size = UDim2.new(1, 0, 0, textBodyHeight),
					BackgroundTransparency = 1,
				}),
			}),
		}),
		Footer = React.createElement("Frame", {
			BackgroundTransparency = 1,
			Size = UDim2.new(1, 0, 0, footerHeight),
			Position = UDim2.new(0, 0, 1, -footerHeight),
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
				forcedFillDirection = if props.isSmallPortraitMode
					then Enum.FillDirection.Vertical
					else Enum.FillDirection.Horizontal,
				buttons = {
					{
						buttonType = ButtonType.Secondary,
						props = if props.isSmallPortraitMode
							then {
								onActivated = props.onCancel,
								text = RobloxTranslator:FormatByKey("InGame.InspectMenu.Action.Cancel"),
								size = UDim2.new(1, 0, 0, 28),
								fontStyle = font.Body2,
							}
							else {
								onActivated = props.onCancel,
								text = RobloxTranslator:FormatByKey("InGame.InspectMenu.Action.Cancel"),
							},
					},
					{
						buttonType = ButtonType.PrimarySystem,
						props = if props.isSmallPortraitMode
							then {
								onActivated = props.onRestart,
								text = RobloxTranslator:FormatByKey("Feature.ReportAbuse.Action.BackToExperience"),
								size = UDim2.new(1, 0, 0, 28),
								fontStyle = font.Body2,
							}
							else {
								onActivated = props.onRestart,
								text = RobloxTranslator:FormatByKey("Feature.ReportAbuse.Action.BackToExperience"),
							},
					},
				},
			}),
		}),
	})
end

return RestartScreenshotDialog
