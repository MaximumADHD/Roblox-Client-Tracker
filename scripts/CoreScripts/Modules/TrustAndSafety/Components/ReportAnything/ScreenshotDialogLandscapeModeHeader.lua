--!nonstrict
local CoreGui = game:GetService("CoreGui")
local RobloxGui = CoreGui:WaitForChild("RobloxGui")
local CorePackages = game:GetService("CorePackages")
local UIBlox = require(CorePackages.UIBlox)
local React = require(CorePackages.Packages.React)
local RobloxTranslator = require(RobloxGui.Modules.RobloxTranslator)

local TnsModule = script.Parent.Parent.Parent
local GetFFlagReportAnythingLocalizationEnabled = require(TnsModule.Flags.GetFFlagReportAnythingLocalizationEnabled)

local ButtonStack = UIBlox.App.Button.ButtonStack
local ButtonType = UIBlox.App.Button.Enum.ButtonType
local HeaderBar = UIBlox.App.Bar.HeaderBar
local IconButton = UIBlox.App.Button.IconButton
local IconSize = UIBlox.App.ImageSet.Enum.IconSize
local UIBloxImages = UIBlox.App.ImageSet.Images
local withStyle = UIBlox.Style.withStyle

local HEADER_HEIGHT = 48

type Props = {
	titleText: string?,
	reportAction: (({ Vector2 }) -> ()),
	backAction: (() -> ())?,
	undoAnnotationPoints: (() -> {}),
	redoAnnotationPoints: (() -> {}),
	isRedoEnabled: boolean,
	isUndoEnabled: boolean,
	annotationPoints: { Vector2 },
}

local function renderWrappingCenter(title)
	return function()
		return withStyle(function(style)
			local theme = style.Theme
			local font = style.Font

			return React.createElement("TextLabel", {
				Text = title,
				Font = font.Header2.Font,
				TextColor3 = theme.TextEmphasis.Color,
				TextTransparency = theme.TextEmphasis.Transparency,
				TextSize = 20,
				TextWrapped = true,
				TextXAlignment = Enum.TextXAlignment.Center,
				TextYAlignment = Enum.TextYAlignment.Center,
				Size = UDim2.new(1, 0, 1, 0),
				BackgroundTransparency = 1,
			})
		end)
	end
end


local function renderHeaderBarLeft(backAction, undoAnnotationPoints, redoAnnotationPoints, isRedoEnabled, isUndoEnabled)
	local isShowUndoRedoButtons = isRedoEnabled or isUndoEnabled
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
				onActivated = backAction,
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
end

local function renderHeaderBarRight(reportAction, annotationPoints)
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
								reportAction(annotationPoints)
							end,
							text = if GetFFlagReportAnythingLocalizationEnabled()
								then RobloxTranslator:FormatByKey("Feature.ReportAbuse.Action.Next")
								else "Next",
						},
					},
				},
			}),
		})
	end
end
local function LandscapeModeHeader(props: Props)
	return React.createElement("Frame", {
		BackgroundTransparency = 0,
		BackgroundColor3 = Color3.fromHex("#4F545F"),
		LayoutOrder = 1,
		Size = UDim2.new(1, 0, 0, HEADER_HEIGHT - 1),
		ZIndex = 2,
	}, {
		Bar = React.createElement(HeaderBar, {
			backgroundTransparency = 1,
			barHeight = HEADER_HEIGHT,
			renderLeft = renderHeaderBarLeft(
				props.backAction,
				props.undoAnnotationPoints,
				props.redoAnnotationPoints,
				props.isRedoEnabled,
				props.isUndoEnabled
			),
			renderRight = renderHeaderBarRight(props.reportAction, props.annotationPoints),
			title = if GetFFlagReportAnythingLocalizationEnabled() then nil else props.titleText,
			renderCenter = if GetFFlagReportAnythingLocalizationEnabled() then renderWrappingCenter(props.titleText) else nil,
		}),
	})
end

return LandscapeModeHeader
