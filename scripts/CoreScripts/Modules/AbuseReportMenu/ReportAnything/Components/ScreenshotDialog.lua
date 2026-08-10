local CorePackages = game:GetService("CorePackages")

local UIBlox = require(CorePackages.Packages.UIBlox)
local React = require(CorePackages.Packages.React)
local Cryo = require(CorePackages.Packages.Cryo)

local ImageSetLabel = UIBlox.Core.ImageSet.ImageSetButton
local useStyle = UIBlox.Core.Style.useStyle

local ButtonStack = UIBlox.App.Button.ButtonStack
local ButtonType = UIBlox.App.Button.Enum.ButtonType
local RAFolder = script.Parent.Parent
local Assets = require(RAFolder.Resources.Assets)
local Divider = require(RAFolder.Components.Divider)
local ScreenshotHighlighter = require(RAFolder.Components.ScreenshotHighlighter)
local VirtualKeyboardMonitor = require(RAFolder.Utility.VirtualKeyboardMonitor)
local ScreenshotDialogPortraitModeHeader = require(RAFolder.Components.ScreenshotDialogPortraitModeHeader)
local ScreenshotDialogLandscapeModeHeader = require(RAFolder.Components.ScreenshotDialogLandscapeModeHeader)
local ReportAnythingAnalytics = require(RAFolder.Utility.ReportAnythingAnalytics)

local RobloxTranslator = require(CorePackages.Workspace.Packages.RobloxTranslator)

local HEADER_HEIGHT = 48
local FOOTER_HEIGHT = 60

export type Props = {
	titleText: string?,
	screenshot: string,
	initialAnnotationPoints: { Vector2 }?,
	imageAspectRatio: number?,
	isSmallPortraitMode: boolean?,

	finishAnnotationAction: ({ Vector2 }) -> (),
	dismissAction: () -> (),
	backAction: () -> (),

	setAnnotationCircleRadius: (number) -> (),
	setAnnotationAreaDimensions: (number, number) -> (),

	reportAnythingAnalytics: typeof(ReportAnythingAnalytics),
}

local function PortraitModeFooter(
	props: { finishAnnotationAction: ({ Vector2 }) -> (), annotationPoints: { Vector2 } }
): React.ReactNode?
	return React.createElement("Frame", {
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
			Size = UDim2.new(0, 400, 1, 0),
			BackgroundTransparency = 1,
		}, {
			Padding = React.createElement("UIPadding", {
				PaddingTop = UDim.new(0, 12),
				PaddingBottom = UDim.new(0, 12),
				PaddingLeft = UDim.new(0, 32),
				PaddingRight = UDim.new(0, 32),
			}),
			ActionButtons = React.createElement(ButtonStack, {
				marginBetween = 8,
				buttons = {
					{
						buttonType = ButtonType.PrimarySystem,
						props = {
							onActivated = function()
								props.finishAnnotationAction(props.annotationPoints)
							end,
							text = RobloxTranslator:FormatByKey("Feature.ReportAbuse.Action.Next"),
						},
					},
				},
			}),
		}),
	})
end

local function ScreenshotDialog(props: Props): React.ReactNode?
	local stylePalette = useStyle()
	local theme = stylePalette.Theme

	-- Dismiss the whole thing when clicking on the overlay
	local virtualKeyboardMonitor = VirtualKeyboardMonitor.getInstance()
	local onOverlayActivated = function()
		warn("OverlayActivated")
		if virtualKeyboardMonitor:isKeyboardJustOff() then
			-- Ignore the first touch event after text box focus released to prevent misoperation.
			return
		end
		if props.dismissAction then
			warn("Menu dismissed")
			props.dismissAction()
		end
	end

	-- Store the annotation clicks
	local annotationPoints, setAnnotationPoints =
		React.useState(Cryo.Dictionary.join({}, props.initialAnnotationPoints or {}))
	local annotationRedoStack, setRedoStack = React.useState({})

	local updatePointsAndRerender = React.useCallback(function()
		setAnnotationPoints(table.clone(annotationPoints))
	end, { setAnnotationPoints, annotationPoints })

	local onBack = React.useCallback(function()
		props.reportAnythingAnalytics.incrementAnnotationBack()
		props.backAction()
	end, { props.backAction, props.reportAnythingAnalytics } :: { any })

	local handleAnnotationPoints = React.useCallback(function(points: { Vector2 })
		props.reportAnythingAnalytics.incrementAnnotationPlace()
		updatePointsAndRerender()
		-- when new points are added, clear the redoStack to form a new branch
		setRedoStack({})
	end, { setRedoStack, updatePointsAndRerender, props.reportAnythingAnalytics } :: { any })

	local undoAnnotationPoints = React.useCallback(function()
		if #annotationPoints > 0 then
			props.reportAnythingAnalytics.incrementAnnotationUndo()
			-- only perform undo when annotationPoints is non-empty
			table.insert(annotationRedoStack, 1, annotationPoints[#annotationPoints])
			table.remove(annotationPoints, #annotationPoints)
			updatePointsAndRerender()
		end
	end, { updatePointsAndRerender, annotationPoints, annotationRedoStack, props.reportAnythingAnalytics } :: { any })

	local redoAnnotationPoints = React.useCallback(function()
		if #annotationRedoStack > 0 then
			props.reportAnythingAnalytics.incrementAnnotationRedo()
			-- only perform redo when redoStack is non-epty
			table.insert(annotationPoints, annotationRedoStack[1])
			table.remove(annotationRedoStack, 1)
			updatePointsAndRerender()
		end
	end, { updatePointsAndRerender, annotationPoints, annotationRedoStack, props.reportAnythingAnalytics } :: { any })

	local onFinishAnnotation = React.useCallback(function(annotationPoints: { Vector2 })
		props.reportAnythingAnalytics.setAnnotationNext()
		props.finishAnnotationAction(annotationPoints)
	end, { props.finishAnnotationAction, props.reportAnythingAnalytics } :: { any })

	local isUndoEnabled = #annotationPoints > 0
	local isRedoEnabled = #annotationRedoStack > 0

	-- Outermost container is a TextButton to get click events on the overlay.
	-- This "button" fills the whole screen, so that when a click lands outside
	-- the dialog area, we can exit the menu.
	return React.createElement("TextButton", {
		AutoButtonColor = false,
		BorderSizePixel = 0,
		BackgroundColor3 = theme.Overlay.Color,
		BackgroundTransparency = theme.Overlay.Transparency,
		Size = UDim2.new(1, 0, 1, 0),
		Position = UDim2.fromScale(0.5, 0.5),
		AnchorPoint = Vector2.new(0.5, 0.5),
		ZIndex = 10,
		Text = "",
		[React.Event.Activated] = onOverlayActivated,
	}, {
		-- Use ImageSetLabel to block input to the parent
		ScreenshotDialog = React.createElement(ImageSetLabel, {
			Active = true, -- block input to the background overlay
			Size = UDim2.fromScale(1, 1),
			BackgroundTransparency = 1,
			Image = Assets.Images.RoundedRect.Image,
			ImageColor3 = theme.BackgroundUIDefault.Color,
			ImageTransparency = theme.BackgroundUIDefault.Transparency,
			ScaleType = Assets.Images.RoundedRect.ScaleType,
			SliceCenter = Assets.Images.RoundedRect.SliceCenter,
		}, {
			-- List layout for header and content
			HeaderAndContent = React.createElement("Frame", {
				Size = UDim2.new(1, 0, 1, if props.isSmallPortraitMode then -FOOTER_HEIGHT else 0),
				BackgroundTransparency = 1,
			}, {
				Layout = React.createElement("UIListLayout", {
					FillDirection = Enum.FillDirection.Vertical,
					HorizontalAlignment = Enum.HorizontalAlignment.Center,
					SortOrder = Enum.SortOrder.LayoutOrder,
				}),
				Header = if props.isSmallPortraitMode
					then React.createElement(ScreenshotDialogPortraitModeHeader, {
						titleText = props.titleText,
						backAction = onBack,
						undoAnnotationPoints = undoAnnotationPoints,
						redoAnnotationPoints = redoAnnotationPoints,
						isRedoEnabled = isRedoEnabled,
						isUndoEnabled = isUndoEnabled,
						annotationPoints = annotationPoints,
					})
					else React.createElement(ScreenshotDialogLandscapeModeHeader, {
						titleText = props.titleText,
						backAction = onBack,
						finishAnnotationAction = onFinishAnnotation,
						undoAnnotationPoints = undoAnnotationPoints,
						redoAnnotationPoints = redoAnnotationPoints,
						isRedoEnabled = isRedoEnabled,
						isUndoEnabled = isUndoEnabled,
						annotationPoints = annotationPoints,
					}),
				Divider = React.createElement(Divider, {
					LayoutOrder = 2,
				}),
				ScreenshotAnnotation = React.createElement("Frame", {
					BackgroundTransparency = 1,
					LayoutOrder = 3,
					Size = UDim2.new(1, 0, 1, -HEADER_HEIGHT - 1),
					ZIndex = 1,
				}, {
					Container = React.createElement("Frame", {
						Size = UDim2.fromScale(1, 1),
						AnchorPoint = Vector2.new(0.5, 0.5),
						Position = UDim2.fromScale(0.5, 0.5),
						BackgroundTransparency = 1,
					}, {
						Layout = React.createElement("UIListLayout", {
							HorizontalAlignment = Enum.HorizontalAlignment.Center,
							VerticalAlignment = Enum.VerticalAlignment.Center,
						}),
						Padding = React.createElement("UIPadding", {
							PaddingTop = UDim.new(0, 16),
							PaddingBottom = UDim.new(0, 16),
							PaddingLeft = UDim.new(0, 16),
							PaddingRight = UDim.new(0, 16),
						}),
						AnnotationLayer = React.createElement("Frame", {
							Size = UDim2.new(1, 0, 1, 0),
							BorderSizePixel = 2,
							BorderMode = Enum.BorderMode.Outline,
							BorderColor3 = Color3.fromRGB(255, 255, 255),
						}, {
							UIAspectRatioConstraint = React.createElement("UIAspectRatioConstraint", {
								AspectRatio = props.imageAspectRatio,
							}),
							ScreenshotImage = React.createElement("ImageLabel", {
								Size = UDim2.fromScale(1, 1),
								Image = props.screenshot,
								ScaleType = Enum.ScaleType.Fit,
								ZIndex = 1,
							}, {}),
							Highlighter = React.createElement(ScreenshotHighlighter, {
								annotationPoints = annotationPoints,
								handleAnnotationPoints = handleAnnotationPoints,
								setAnnotationCircleRadius = props.setAnnotationCircleRadius,
								setAnnotationAreaDimensions = props.setAnnotationAreaDimensions,
								ZIndex = 3,
							}, {}),
						}),
					}),
				}),
			}),
			Footer = if props.isSmallPortraitMode
				then React.createElement(PortraitModeFooter, {
					finishAnnotationAction = onFinishAnnotation,
					annotationPoints = annotationPoints,
				})
				else nil,
		}),
	})
end

return ScreenshotDialog
