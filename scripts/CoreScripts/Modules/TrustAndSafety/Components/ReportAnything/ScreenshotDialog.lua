--!nonstrict
local CoreGui = game:GetService("CoreGui")
local RobloxGui = CoreGui:WaitForChild("RobloxGui")
local CorePackages = game:GetService("CorePackages")
local UIBlox = require(CorePackages.UIBlox)
local React = require(CorePackages.Packages.React)
local Cryo = require(CorePackages.Cryo)

local ImageSetLabel = UIBlox.Core.ImageSet.ImageSetButton
local useStyle = UIBlox.Core.Style.useStyle

local ButtonStack = UIBlox.App.Button.ButtonStack
local ButtonType = UIBlox.App.Button.Enum.ButtonType
local TnsModule = script.Parent.Parent.Parent
local Assets = require(TnsModule.Resources.Assets)
local Dependencies = require(TnsModule.Dependencies)
local DebugCanvas = require(TnsModule.Components.DebugCanvas)
local ScreenshotHighlighter = require(TnsModule.Components.ReportAnything.ScreenshotHighlighter)
local VirtualKeyboardMonitor = require(TnsModule.Components.VirtualKeyboardMonitor)
local ScreenshotDialogPortraitModeHeader =
	require(TnsModule.Components.ReportAnything.ScreenshotDialogPortraitModeHeader)
local ScreenshotDialogLandscapeModeHeader =
	require(TnsModule.Components.ReportAnything.ScreenshotDialogLandscapeModeHeader)
local AbuseReportBuilder = require(TnsModule.Utility.AbuseReportBuilder)
local ReportAnythingAnalytics = require(TnsModule.Utility.ReportAnythingAnalytics)
local RobloxTranslator = require(RobloxGui.Modules.RobloxTranslator)

local GetFFlagReportAnythingLocalizationEnabled = require(TnsModule.Flags.GetFFlagReportAnythingLocalizationEnabled)

local Divider = require(Dependencies.Divider)

local HEADER_HEIGHT = 48
local FOOTER_HEIGHT = 60

export type Props = {
	titleText: string?,
	screenshot: string,
	initialAnnotationPoints: { Vector2 }?,
	imageAspectRatio: number?,
	isSmallPortraitMode: boolean?,

	reportAction: (({ Vector2 }) -> ()),
	dismissAction: (() -> ()),

	backAction: (() -> ())?,
	reportAnythingAnalytics: typeof(ReportAnythingAnalytics)?,
}

local function PortraitModeFooter(props: { reportAction: (({ Vector2 }) -> ()), annotationPoints: { Vector2 } })
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
								props.reportAction(props.annotationPoints)
							end,
							text = if GetFFlagReportAnythingLocalizationEnabled()
								then RobloxTranslator:FormatByKey("Feature.ReportAbuse.Action.Next")
								else "Next",
						},
					},
				},
			}),
		}),
	})
end

local function ScreenshotDialog(props: Props)
	-- TODO(bcwong): Handle size change?
	React.useEffect(function()
		if props.reportAnythingAnalytics then
			props.reportAnythingAnalytics.incrementAnnotationPageSeen()
		end
	end, {})

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

	local function updatePointsAndRerender()
		local copy = {}
		for k, v in pairs(annotationPoints) do
			copy[k] = v
		end
		setAnnotationPoints(copy)
	end

	local handleAnnotationPoints = function(points: { Vector2 })
		if props.reportAnythingAnalytics then
			props.reportAnythingAnalytics.incrementAnnotationPlace()
		end
		-- TODO(bcwong): Update the selectedAvatars here
		updatePointsAndRerender()
		-- when new points are added, clear the redoStack to form a new branch
		setRedoStack({})
	end

	local undoAnnotationPoints = function()
		if #annotationPoints > 0 then
			if props.reportAnythingAnalytics then
				props.reportAnythingAnalytics.incrementAnnotationUndo()
			end
			-- only perform undo when annotationPoints is non-empty
			table.insert(annotationRedoStack, 1, annotationPoints[#annotationPoints])
			table.remove(annotationPoints, #annotationPoints)
			updatePointsAndRerender()
		end
	end

	local redoAnnotationPoints = function()
		if #annotationRedoStack > 0 then
			if props.reportAnythingAnalytics then
				props.reportAnythingAnalytics.incrementAnnotationRedo()
			end
			-- only perform redo when redoStack is non-epty
			table.insert(annotationPoints, annotationRedoStack[1])
			table.remove(annotationRedoStack, 1)
			updatePointsAndRerender()
		end
	end

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
						backAction = props.backAction,
						undoAnnotationPoints = undoAnnotationPoints,
						redoAnnotationPoints = redoAnnotationPoints,
						isRedoEnabled = isRedoEnabled,
						isUndoEnabled = isUndoEnabled,
						annotationPoints = annotationPoints,
					})
					else React.createElement(ScreenshotDialogLandscapeModeHeader, {
						titleText = props.titleText,
						backAction = props.backAction,
						reportAction = props.reportAction,
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
						UIAspectRatioConstraint = React.createElement("UIAspectRatioConstraint", {
							AspectRatio = props.imageAspectRatio,
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
							BorderMode = Enum.BorderMode.Inset,
							BorderColor3 = Color3.fromRGB(255, 255, 255),
						}, {
							ScreenshotImage = React.createElement("ImageLabel", {
								Size = UDim2.fromScale(1, 1),
								Image = props.screenshot,
								ZIndex = 1,
							}, {}),
							DebugCanvas = React.createElement(DebugCanvas, {
								identifiedAvatars = AbuseReportBuilder.getIdentifiedAvatars(),
								identifiedAds = AbuseReportBuilder.getIdentifiedAds(),
								ZIndex = 2,
							}),
							Highlighter = React.createElement(ScreenshotHighlighter, {
								annotationPoints = annotationPoints,
								handleAnnotationPoints = handleAnnotationPoints,
								setAnnotationCircleRadius = AbuseReportBuilder.setAnnotationCircleRadius,
								setAspectRatioDimensions = AbuseReportBuilder.setAspectRatioDimensions,
								ZIndex = 3,
							}, {}),
						}),
					}),
				}),
			}),
			Footer = if props.isSmallPortraitMode
				then React.createElement(PortraitModeFooter, {
					reportAction = props.reportAction,
					annotationPoints = annotationPoints,
				})
				else nil,
		}),
	})
end

return ScreenshotDialog
