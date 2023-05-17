--!nonstrict
local CorePackages = game:GetService("CorePackages")
local UIBlox = require(CorePackages.UIBlox)
local React = require(CorePackages.Packages.React)

local ButtonStack = UIBlox.App.Button.ButtonStack
local ButtonType = UIBlox.App.Button.Enum.ButtonType
local HeaderBar = UIBlox.App.Bar.HeaderBar
local IconButton = UIBlox.App.Button.IconButton
local IconSize = UIBlox.App.ImageSet.Enum.IconSize
local UIBloxImages = UIBlox.App.ImageSet.Images

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
							text = "Next",
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
			title = props.titleText,
		}),
	})
end

return LandscapeModeHeader
