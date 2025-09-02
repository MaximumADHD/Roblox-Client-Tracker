--!nonstrict
local CorePackages = game:GetService("CorePackages")

local UIBlox = require(CorePackages.Packages.UIBlox)
local React = require(CorePackages.Packages.React)

local ButtonStack = UIBlox.App.Button.ButtonStack
local ButtonType = UIBlox.App.Button.Enum.ButtonType
local HeaderBar = UIBlox.App.Bar.HeaderBar
local IconButton = UIBlox.App.Button.IconButton
local IconSize = UIBlox.App.ImageSet.Enum.IconSize
local ImageSetButton = UIBlox.Core.ImageSet.ImageSetButton
local UIBloxImages = UIBlox.App.ImageSet.Images
local useStyle = UIBlox.Core.Style.useStyle
local Button = UIBlox.App.Button.Button
local StandardButtonSize = UIBlox.App.Button.Enum.StandardButtonSize

local RAFolder = script.Parent.Parent
local Assets = require(RAFolder.Resources.Assets)
local Divider = require(RAFolder.Components.Divider)
local RestartScreenshotDialog = require(RAFolder.Components.RestartScreenshotDialog)
local ReportAnythingAnalytics = require(RAFolder.Utility.ReportAnythingAnalytics)

local Responsive = require(CorePackages.Workspace.Packages.Responsive)
local usePreferredInput = Responsive.usePreferredInput

local FocusNavigationUtils = require(CorePackages.Workspace.Packages.FocusNavigationUtils)
local FocusRoot = FocusNavigationUtils.FocusRoot
local FocusNavigableSurfaceIdentifierEnum = FocusNavigationUtils.FocusNavigableSurfaceIdentifierEnum

local RobloxTranslator = require(CorePackages.Workspace.Packages.RobloxTranslator)

local SharedFlags = require(CorePackages.Workspace.Packages.SharedFlags)
local GetFFlagAvatarIdentificationSafeAreaFix = SharedFlags.GetFFlagAvatarIdentificationSafeAreaFix

local TITLE_HEIGHT = 49
local HEADER_HEIGHT = 48
local FOOTER_HEIGHT = 60

export type Props = {
	screenshot: string,
	imageAspectRatio: number,
	viewportUISafeAreaHeight: number,
	viewportUISafeAreaWidth: number,
	isSmallPortraitMode: boolean,
	onBack: () -> (),
	onRestart: () -> (),
	onSkip: () -> (),
	onNextPage: () -> (),
	reportAnythingAnalytics: typeof(ReportAnythingAnalytics),
}

type SmallPortraitModeHeaderRightProps = {
	onActivated: () -> (),
	font: any,
	theme: any,
	viewportUISafeAreaWidth: number,
}

local function ScreenshotReviewDialogSmallPortraitModeHeaderRight(props)
	local retakeButtonWidth, setRetakeButtonWidth = React.useState(0)
	local retakeButtonWidthChangedCallback = React.useCallback(function(rbx)
		setRetakeButtonWidth(rbx.AbsoluteSize.X)
	end, { setRetakeButtonWidth })
	local onActivatedCallback = React.useCallback(function()
		props.setShowRestartDialog(true)
	end, { props.setShowRestartDialog })

	return React.createElement("Frame", {
		Size = UDim2.new(1, 0, 1, 0),
		BackgroundTransparency = 1,
	}, {
		Layout = React.createElement("UIListLayout", {
			FillDirection = Enum.FillDirection.Horizontal,
			VerticalAlignment = Enum.VerticalAlignment.Center,
			HorizontalAlignment = Enum.HorizontalAlignment.Right,
			SortOrder = Enum.SortOrder.LayoutOrder,
		}),
		Text = React.createElement("TextLabel", {
			LayoutOrder = -1,
			Text = RobloxTranslator:FormatByKey("Feature.SettingsHub.Label.SceneCaptured"),
			Font = props.font.Header2.Font,
			TextColor3 = props.theme.TextEmphasis.Color,
			TextTransparency = props.theme.TextEmphasis.Transparency,
			TextSize = 20,
			TextWrapped = true,
			TextXAlignment = Enum.TextXAlignment.Center,
			TextYAlignment = Enum.TextYAlignment.Center,
			-- Need to manually size this text since when used in the
			-- `renderRight` of the HeaderBar, the container Frame here does not
			-- expand on its own.
			Size = UDim2.new(0, props.viewportUISafeAreaWidth - retakeButtonWidth - 50, 1, 0),
			BackgroundTransparency = 1,
		}),
		RetakeButton = React.createElement(Button, {
			buttonType = ButtonType.Secondary,
			text = RobloxTranslator:FormatByKey("Feature.ReportAbuse.Action.Retake"),
			fitContent = true,
			standardSize = StandardButtonSize.XSmall,
			onActivated = onActivatedCallback,
			[React.Change.AbsoluteSize] = retakeButtonWidthChangedCallback,
		}),
	})
end

local function ScreenshotReviewDialog(props: Props)
	local isConsole = usePreferredInput() == Responsive.Input.Directional

	if not RobloxTranslator then
		return nil
	end

	local footerHeight = FOOTER_HEIGHT
	if props.isSmallPortraitMode then
		footerHeight = (FOOTER_HEIGHT - 12) * 2 + 8 -- buttons have 8px between them, not 12 (normal padding)
	end

	local onBack = React.useCallback(function()
		props.reportAnythingAnalytics.incrementPreviewBack()
		props.onBack()
	end, { props.onBack, props.reportAnythingAnalytics })

	local onSkip = React.useCallback(function()
		props.reportAnythingAnalytics.incrementPreviewAttach()
		props.onSkip()
	end, { props.onSkip, props.reportAnythingAnalytics })

	local isShowRestartDialog, setShowRestartDialog = React.useState(false)

	local onRetakeHeaderButtonActivated = React.useCallback(function()
		props.reportAnythingAnalytics.incrementRetake()
		setShowRestartDialog(true)
	end, { setShowRestartDialog, props.reportAnythingAnalytics })

	local onRetake = React.useCallback(function()
		props.reportAnythingAnalytics.setRetakeAbandon()
		props.onRestart()
	end, { props.onRestart, props.reportAnythingAnalytics })

	local onNext = React.useCallback(function()
		props.reportAnythingAnalytics.incrementHighlightScene()
		props.onNextPage()
	end, { props.onNextPage, props.reportAnythingAnalytics })

	local stylePalette = useStyle()
	local theme = stylePalette.Theme
	local font = stylePalette.Font

	local landscapeModeSize = if props.viewportUISafeAreaHeight >= 800
		then UDim2.new(0, 800, 0, 800)
		else UDim2.new(1, 0, 1, 0)
	return React.createElement("TextButton", {
		Selectable = false, -- To prevent gamepad focus from focusing on this component
		AutoButtonColor = false,
		BorderSizePixel = 0,
		BackgroundColor3 = theme.Overlay.Color,
		BackgroundTransparency = theme.Overlay.Transparency,
		Size = UDim2.fromScale(1, 1),
		ZIndex = 10,
		Text = "",
		[React.Event.Activated] = onBack,
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
				-- Add focus navigation wrapper so that the gamepad focus locks to the Restart Screenshot dialog
				FocusNavigationCoreScriptsWrapper = React.createElement(FocusRoot, {
					surfaceIdentifier = FocusNavigableSurfaceIdentifierEnum.CentralOverlay,
					isIsolated = true,
					isAutoFocusRoot = true,
				}, {
					DialogBody = React.createElement(RestartScreenshotDialog, {
						ZIndex = 3,
						isSmallPortraitMode = props.isSmallPortraitMode,
						onCancel = function()
							setShowRestartDialog(false)
						end,
						onRestart = onRetake,
					}),
				}),
			}),
			RestartDialogMask = isShowRestartDialog and React.createElement(ImageSetButton, {
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
			ScreenshotDialog = React.createElement(ImageSetButton, {
				Active = true, -- block input to the background overlay
				Selectable = false, -- prevent gamepad focus from focusing on this component
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
					Size = UDim2.new(1, 0, 1, -footerHeight),
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
									onActivated = onBack,
								})
							end,
							-- Need dummy on the right to take up space for balance
							renderRight = function()
								if props.isSmallPortraitMode then
									return React.createElement(ScreenshotReviewDialogSmallPortraitModeHeaderRight, {
										onActivated = onRetakeHeaderButtonActivated,
										font = font,
										theme = theme,
										viewportUISafeAreaWidth = props.viewportUISafeAreaWidth,
									})
								end
								return React.createElement(Button, {
									buttonType = ButtonType.Secondary,
									text = RobloxTranslator:FormatByKey("Feature.ReportAbuse.Action.Retake"),
									fitContent = true,
									standardSize = StandardButtonSize.XSmall,
									onActivated = onRetakeHeaderButtonActivated,
								})
							end,
							title = if props.isSmallPortraitMode
								then nil
								else RobloxTranslator:FormatByKey("Feature.SettingsHub.Label.SceneCaptured"),
							isSecondary = props.isSmallPortraitMode,
						}),
					}),
					Divider = React.createElement(Divider, {
						LayoutOrder = 2,
					}),
					ScreenshotBody = React.createElement("Frame", {
						BackgroundTransparency = 1,
						LayoutOrder = 3,
						Size = UDim2.new(1, 0, 1, -60),
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
							BackgroundTransparency = 2,
							LayoutOrder = 1,
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
								BorderMode = if GetFFlagAvatarIdentificationSafeAreaFix()
									then Enum.BorderMode.Outline
									else Enum.BorderMode.Inset,
								BorderColor3 = Color3.fromRGB(255, 255, 255),
								LayoutOrder = 1,
							}, {
								UIAspectRatioConstraint = React.createElement("UIAspectRatioConstraint", {
									AspectRatio = props.imageAspectRatio,
								}),
								ScreenshotImage = React.createElement(ImageSetButton, {
									Active = true,
									Selectable = if isConsole then false else true, -- disable ability for focus navigation to select screenshot on console
									Size = UDim2.fromScale(1, 1),
									Image = props.screenshot,
									ZIndex = 1,
									AnchorPoint = Vector2.new(0.5, 0.5),
									Position = UDim2.fromScale(0.5, 0.5),
									BackgroundTransparency = 1,
									ScaleType = Enum.ScaleType.Fit,
									SliceCenter = Assets.Images.RoundedRect.SliceCenter,
									[React.Event.Activated] = onNext,
								}),
							}),
						}),
						Description = React.createElement("TextLabel", {
							Text = RobloxTranslator:FormatByKey("Feature.ReportAbuse.Message.ProblemNotInScene"),
							Font = font.Header1.Font,
							LayoutOrder = 2,
							TextColor3 = theme.TextEmphasis.Color,
							TextTransparency = theme.TextEmphasis.Transparency,
							TextSize = if props.isSmallPortraitMode then 12 else 20,
							TextXAlignment = Enum.TextXAlignment.Center,
							TextWrapped = true,
							Size = UDim2.new(1, -24, 0, (if props.isSmallPortraitMode then 24 else 40)),
							BackgroundTransparency = 1,
						}),
					}),
				}),
				Footer = React.createElement("Frame", {
					BackgroundTransparency = 0,
					Size = UDim2.new(1, 0, 0, footerHeight),
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
						Size = if props.isSmallPortraitMode
							then UDim2.new(1, 0, 1, 0)
							else UDim2.new(0, if props.isSmallPortraitMode then 400 else 612, 1, 0),
						BackgroundTransparency = 1,
					}, {
						Padding = React.createElement("UIPadding", {
							PaddingTop = UDim.new(0, 12),
							PaddingBottom = UDim.new(0, 12),
							PaddingLeft = UDim.new(0, 16),
							PaddingRight = UDim.new(0, 16),
						}),
						ActionButtons = React.createElement(ButtonStack, {
							forcedFillDirection = if props.isSmallPortraitMode
								then Enum.FillDirection.Vertical
								else nil,
							marginBetween = 8,
							buttons = {
								{
									buttonType = ButtonType.Secondary,
									props = {
										onActivated = onSkip,
										text = RobloxTranslator:FormatByKey(
											"Feature.ReportAbuse.Action.AttachScreenshot"
										),
									},
								},
								if isConsole
									then nil
									else {
										buttonType = ButtonType.PrimarySystem,
										props = {
											onActivated = onNext,
											text = RobloxTranslator:FormatByKey(
												"Feature.ReportAbuse.Action.HighlightScene"
											),
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
