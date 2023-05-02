--!nonstrict
local CorePackages = game:GetService("CorePackages")
local UIBlox = require(CorePackages.UIBlox)
local React = require(CorePackages.Packages.React)
local Cryo = require(CorePackages.Cryo)

local ButtonStack = UIBlox.App.Button.ButtonStack
local ButtonType = UIBlox.App.Button.Enum.ButtonType
local HeaderBar = UIBlox.App.Bar.HeaderBar
local IconButton = UIBlox.App.Button.IconButton
local IconSize = UIBlox.App.ImageSet.Enum.IconSize
local ImageSetLabel = UIBlox.Core.ImageSet.Button
local UIBloxImages = UIBlox.App.ImageSet.Images
local useStyle = UIBlox.Core.Style.useStyle

local TnsModule = script.Parent.Parent
local Assets = require(TnsModule.Resources.Assets)
local Dependencies = require(TnsModule.Dependencies)
local DebugCanvas = require(TnsModule.Components.DebugCanvas)
local ScreenshotHighlighter = require(TnsModule.Components.ScreenshotHighlighter)
local VirtualKeyboardMonitor = require(TnsModule.Components.VirtualKeyboardMonitor)
local AbuseReportBuilder = require(TnsModule.Utility.AbuseReportBuilder)
local ReportAnythingAnalytics = require(TnsModule.Utility.ReportAnythingAnalytics)
local GetFFlagEnableReportAnythingAnalytics = require(TnsModule.Flags.GetFFlagEnableReportAnythingAnalytics)

local Divider = require(Dependencies.Divider)

local TITLE_HEIGHT = 49
local HEADER_HEIGHT = 48

export type Props = {
	titleText: string?,
	screenshot: string,
	initialAnnotationPoints: { Vector2 }?,
	imageAspectRatio: number?,

	reportAction: (({ Vector2 }) -> ()),
	dismissAction: (() -> ()),

	backAction: (() -> ())?,
	reportAnythingAnalytics: typeof(ReportAnythingAnalytics)?,
}

local function renderHeaderBarLeft(
	props: Props,
	undoAnnotationPoints,
	redoAnnotationPoints,
	isRedoEnabled,
	isUndoEnabled
)
	local isShowUndoRedoButtons = isRedoEnabled or isUndoEnabled
	if props.backAction then
		return function()
			return React.createElement("Frame", {
				BackgroundTransparency = 1,
				Size = UDim2.new(0, 120, 1, 0),
			}, {
				Layout = React.createElement("UIListLayout", {
					FillDirection = Enum.FillDirection.Horizontal,
					HorizontalAlignment = Enum.HorizontalAlignment.Left,
					VerticalAlignment = Enum.VerticalAlignment.Center,
					SortOrder = Enum.SortOrder.LayoutOrder,
				}),
				BackButton = React.createElement(IconButton, {
					iconSize = IconSize.Medium,
					icon = UIBloxImages["icons/navigation/pushBack"],
					layoutOrder = 1,
					onActivated = props.backAction,
				}),
				UndoButton = isShowUndoRedoButtons and React.createElement(IconButton, {
					iconSize = IconSize.Medium,
					icon = UIBloxImages["icons/actions/edit/undo"],
					isDisabled = not isUndoEnabled,
					layoutOrder = 2,
					onActivated = undoAnnotationPoints,
				}),
				RedoButton = isShowUndoRedoButtons and React.createElement(IconButton, {
					iconSize = IconSize.Medium,
					icon = UIBloxImages["icons/actions/edit/redo"],
					isDisabled = not isRedoEnabled,
					layoutOrder = 3,
					onActivated = redoAnnotationPoints,
				}),
			})
		end
	else
		print("headerBar to render dismiss action")
		return function()
			React.createElement(IconButton, {
				iconSize = IconSize.Medium,
				icon = UIBloxImages["icons/navigation/close"],
				onActivated = props.dismissAction,
			})
		end
	end
end

local function renderHeaderBarRight(props: Props, annotationPoints)
	return function()
		return React.createElement("Frame", {
			BackgroundTransparency = 1,
			Size = UDim2.new(0, 144, 1, 0),
		}, {
			Layout = React.createElement("UIListLayout", {
				FillDirection = Enum.FillDirection.Horizontal,
				HorizontalAlignment = Enum.HorizontalAlignment.Center,
				VerticalAlignment = Enum.VerticalAlignment.Center,
			}),
			Buttons = React.createElement(ButtonStack, {
				buttons = {
					{
						buttonType = ButtonType.PrimarySystem,
						props = {
							onActivated = function()
								props.reportAction(annotationPoints)
							end,
							text = "Next",
						},
					},
				},
			}),
		})
	end
end

local function ScreenshotDialog(props: Props)
	-- TODO(bcwong): Handle size change?
	if GetFFlagEnableReportAnythingAnalytics() then
		React.useEffect(function()
			if props.reportAnythingAnalytics then
				props.reportAnythingAnalytics.incrementAnnotationPageSeen()
			end
		end, {})
	end

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
		if GetFFlagEnableReportAnythingAnalytics() and props.reportAnythingAnalytics then
			props.reportAnythingAnalytics.incrementAnnotationPlace()
		end
		-- TODO(bcwong): Update the selectedAvatars here
		updatePointsAndRerender()
		-- when new points are added, clear the redoStack to form a new branch
		setRedoStack({})
	end

	local undoAnnotationPoints = function()
		if #annotationPoints > 0 then
			if GetFFlagEnableReportAnythingAnalytics() and props.reportAnythingAnalytics then
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
			if GetFFlagEnableReportAnythingAnalytics() and props.reportAnythingAnalytics then
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
		Size = UDim2.fromScale(1, 1),
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
				Size = UDim2.new(1, 0, 1, 0),
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
					ZIndex = 2,
				}, {
					-- Bar can be hidden. Still keep the space for HeaderBar
					Bar = React.createElement(HeaderBar, {
						backgroundTransparency = 1,
						barHeight = HEADER_HEIGHT,
						renderLeft = renderHeaderBarLeft(
							props,
							undoAnnotationPoints,
							redoAnnotationPoints,
							isRedoEnabled,
							isUndoEnabled
						),
						-- Need dummy on the right to take up space for balance
						renderRight = renderHeaderBarRight(props, annotationPoints),
						title = props.titleText,
					}),
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
								ZIndex = 2,
							}),
							Highlighter = React.createElement(ScreenshotHighlighter, {
								annotationPoints = annotationPoints,
								handleAnnotationPoints = handleAnnotationPoints,
								ZIndex = 3,
							}, {}),
						}),
					}),
				}),
			}),
		}),
	})
end

return ScreenshotDialog
