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
local ImageSetButton = UIBlox.Core.ImageSet.Button
local UIBloxImages = UIBlox.App.ImageSet.Images
local useStyle = UIBlox.Core.Style.useStyle
local SecondaryButton = UIBlox.App.Button.SecondaryButton

local TnsModule = script.Parent.Parent.Parent
local Assets = require(TnsModule.Resources.Assets)
local Dependencies = require(TnsModule.Dependencies)
local RestartScreenshotDialog = require(TnsModule.Components.ReportAnything.RestartScreenshotDialog)
local ReportAnythingAnalytics = require(TnsModule.Utility.ReportAnythingAnalytics)

local Divider = require(Dependencies.Divider)

local TITLE_HEIGHT = 49
local HEADER_HEIGHT = 48
local FOOTER_HEIGHT = 60

export type Props = {
	screenshot: string,
	imageAspectRatio: number,
	viewportHeight: number,
	isSmallPortraitMode: boolean,
	onBack: () -> (),
	onRestart: () -> (),
	onSkip: () -> (),
	onNextPage: () -> (),
	reportAnythingAnalytics: typeof(ReportAnythingAnalytics)?,
}

local function ScreenshotReviewDialog(props: Props)
	React.useEffect(function()
		if props.reportAnythingAnalytics then
			props.reportAnythingAnalytics.incrementAnnotationOptionSeen()
		end
	end, {})

	local isShowRestartDialog, setShowRestartDialog = React.useState(false)
	local stylePalette = useStyle()
	local theme = stylePalette.Theme
	local font = stylePalette.Font

	local landscapeModeSize = if props.viewportHeight >= 800 then UDim2.new(0, 800, 0, 800) else UDim2.new(1, 0, 1, 0)
	return React.createElement("TextButton", {
		AutoButtonColor = false,
		BorderSizePixel = 0,
		BackgroundColor3 = theme.Overlay.Color,
		BackgroundTransparency = theme.Overlay.Transparency,
		Size = UDim2.fromScale(1, 1),
		ZIndex = 10,
		Text = "",
		[React.Event.Activated] = props.onBack,
	}, {
		Container = React.createElement("Frame", {
			Size = if props.isSmallPortraitMode then UDim2.new(1, 0, 1, 0) else landscapeModeSize,
			Position = UDim2.fromScale(0.5, 0.5),
			AnchorPoint = Vector2.new(0.5, 0.5),
			BorderSizePixel = 0,
			BackgroundColor3 = theme.Overlay.Color,
			BackgroundTransparency = 0,
			ZIndex = 10,
		}, {
			RestartDialog = isShowRestartDialog and React.createElement("Frame", {
				Size = UDim2.new(1, 0, 1, 0),
				BackgroundTransparency = 1,
			}, {
				DialogBody = React.createElement(RestartScreenshotDialog, {
					ZIndex = 3,
					isSmallPortraitMode = props.isSmallPortraitMode,
					onCancel = function()
						setShowRestartDialog(false)
					end,
					onRestart = props.onRestart,
				}),
			}),
			RestartDialogMask = isShowRestartDialog and React.createElement(ImageSetLabel, {
				Size = UDim2.fromScale(1, 1),
				BackgroundTransparency = 0.2,
				BackgroundColor3 = theme.BackgroundUIDefault.Color,
				Active = true,
				AutoButtonColor = false,
				AnchorPoint = Vector2.new(0.5, 0.5),
				Position = UDim2.fromScale(0.5, 0.5),
				Image = Assets.Images.RoundedRect.Image,
				ImageColor3 = theme.BackgroundUIDefault.Color,
				ImageTransparency = 1,
				ScaleType = Assets.Images.RoundedRect.ScaleType,
				SliceCenter = Assets.Images.RoundedRect.SliceCenter,
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
							margin = 12,
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
							renderRight = function()
								local retakeButtonWidth = if props.isSmallPortraitMode then 72 else 120 
								local retakeButtonHeight = if props.isSmallPortraitMode then 28 else 36
								return React.createElement(SecondaryButton, {
									size = UDim2.new(0, retakeButtonWidth, 0, retakeButtonHeight),
									text = "Retake",
									onActivated = function()
										setShowRestartDialog(true)
									end,
								})
							end,
							title = "Scene Captured",
							isSecondary = props.isSmallPortraitMode,
						}),
					}),
					Divider = React.createElement(Divider, {
						LayoutOrder = 2,
					}),
					ScreenshotBody = React.createElement("Frame", {
						BackgroundTransparency = 1,
						LayoutOrder = 3,
						Size = UDim2.new(1, 0, 1, -FOOTER_HEIGHT),
						ZIndex = 10,
					}, {
						Padding = React.createElement("UIPadding", {
							PaddingTop = UDim.new(0, 16),
						}),
						Layout = React.createElement("UIListLayout", {
							FillDirection = Enum.FillDirection.Vertical,
							HorizontalAlignment = Enum.HorizontalAlignment.Center,
							SortOrder = Enum.SortOrder.LayoutOrder,
						}),
						ScreenshotContainer = React.createElement("Frame", {
							Size = UDim2.new(1, 0, 1, -32),
							BackgroundTransparency = 1,
						}, {
							Padding = React.createElement("UIPadding", {
								PaddingTop = UDim.new(0, 12),
								PaddingBottom = UDim.new(0, 12),
								PaddingLeft = UDim.new(0, 16),
								PaddingRight = UDim.new(0, 16),
							}),
							Screenshot = React.createElement("Frame", {
								Size = UDim2.new(1, 0, 1, 0),
								Position = UDim2.fromScale(0.5, 0.5),
								AnchorPoint = Vector2.new(0.5, 0.5),
								BorderSizePixel = 2,
								BorderMode = Enum.BorderMode.Inset,
								BorderColor3 = Color3.fromRGB(255, 255, 255),
								LayoutOrder = 1,
							}, {
								UIAspectRatioConstraint = React.createElement("UIAspectRatioConstraint", {
									AspectRatio = props.imageAspectRatio,
								}),
								ScreenshotImage = React.createElement(ImageSetButton, {
									Active = true,
									Size = UDim2.fromScale(1, 1),
									Image = props.screenshot,
									ZIndex = 1,
									AnchorPoint = Vector2.new(0.5, 0.5),
									Position = UDim2.fromScale(0.5, 0.5),
									BackgroundTransparency = 1,
									ScaleType = Enum.ScaleType.Fit,
									SliceCenter = Assets.Images.RoundedRect.SliceCenter,
									[React.Event.Activated] = function()
										props.onNextPage()
									end,
								}),
							}),
						}),
						Description = React.createElement("TextLabel", {
							Text = "If the problem is not in this scene, you can “Retake”\nthe screenshot.",
							Font = font.Header1.Font,
							LayoutOrder = 2,
							TextColor3 = theme.TextEmphasis.Color,
							TextTransparency = theme.TextEmphasis.Transparency,
							TextSize = if props.isSmallPortraitMode then 12 else 20,
							TextXAlignment = Enum.TextXAlignment.Center,
							Size = UDim2.new(1, 0, 0, 20),
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
					Layout = React.createElement("UIListLayout", {
						FillDirection = Enum.FillDirection.Vertical,
						HorizontalAlignment = Enum.HorizontalAlignment.Center,
					}),
					Container = React.createElement("Frame", {
						Size = UDim2.new(0, if props.isSmallPortraitMode then 400 else 612, 1, 0),
						BackgroundTransparency = 1,
					}, {
						Padding = React.createElement("UIPadding", {
							PaddingTop = UDim.new(0, 12),
							PaddingBottom = UDim.new(0, 12),
							PaddingLeft = UDim.new(0, 16),
							PaddingRight = UDim.new(0, 16),
						}),
						ActionButtons = React.createElement(ButtonStack, {
							marginBetween = 8,
							buttons = {
								{
									buttonType = ButtonType.Secondary,
									props = {
										onActivated = props.onSkip,
										text = "Attach Screenshot",
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
			}),
		}),
	})
end

return ScreenshotReviewDialog
