--!nonstrict
local CorePackages = game:GetService("CorePackages")
local UIBlox = require(CorePackages.UIBlox)
local React = require(CorePackages.Packages.React)
local TnsModule = script.Parent.Parent.Parent
local GetFFlagReportAnythingLocalizationEnabled = require(TnsModule.Flags.GetFFlagReportAnythingLocalizationEnabled)

local HeaderBar = UIBlox.App.Bar.HeaderBar
local IconButton = UIBlox.App.Button.IconButton
local IconSize = UIBlox.App.ImageSet.Enum.IconSize
local UIBloxImages = UIBlox.App.ImageSet.Images
local withStyle = UIBlox.Style.withStyle

local HEADER_HEIGHT = 48

type Props = {
	titleText: string?,
	backAction: (() -> ())?,
	undoAnnotationPoints: (() -> {}),
	redoAnnotationPoints: (() -> {}),
	isRedoEnabled: boolean,
	isUndoEnabled: boolean,
	annotationPoints: { Vector2 },
}

local function renderHeaderBarLeft(backAction, isRedoEnabled, isUndoEnabled)
	return function()
		return React.createElement("Frame", {
			BackgroundTransparency = 1,
			Size = UDim2.new(0, 30, 1, 0),
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
		})
	end
end

local function renderCenter(title)
	return function()
		return withStyle(function(style)
			local camera = game.Workspace.CurrentCamera
			local textMaxWidth = 300
			if camera ~= nil then
				local viewportSize = camera.ViewportSize
				-- bit of a hack 
				textMaxWidth = viewportSize.X - 150
			end
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
				Size = UDim2.new(0, textMaxWidth, 1, 0),
				BackgroundTransparency = 1,
			})
		end)
	end
end

local function renderHeaderBarRight(annotationPoints, undoAnnotationPoints, redoAnnotationPoints, isUndoEnabled, isRedoEnabled)
	return function()
		return React.createElement("Frame", {
			BackgroundTransparency = 1,
			Size = UDim2.new(0, 60, 1, 0),
		}, {
			Layout = React.createElement("UIListLayout", {
				FillDirection = Enum.FillDirection.Horizontal,
				HorizontalAlignment = Enum.HorizontalAlignment.Center,
				VerticalAlignment = Enum.VerticalAlignment.Center,
				SortOrder = Enum.SortOrder.LayoutOrder,
			}),
			UndoButton = React.createElement(IconButton, {
				iconSize = IconSize.Medium,
				icon = UIBloxImages["icons/actions/edit/undo"],
				isDisabled = not isUndoEnabled,
				layoutOrder = 1,
				onActivated = undoAnnotationPoints,
			}),
			RedoButton = React.createElement(IconButton, {
				iconSize = IconSize.Medium,
				icon = UIBloxImages["icons/actions/edit/redo"],
				isDisabled = not isRedoEnabled,
				layoutOrder = 2,
				onActivated = redoAnnotationPoints,
			}),
		})
	end
end
local function ScreenshotDialogPortraitModeHeader(props: Props)
	local isUndoRedoShown = props.isRedoEnabled or props.isUndoEnabled

	return React.createElement("Frame", {
		BackgroundTransparency = 0,
		BackgroundColor3 = Color3.fromHex("#4F545F"),
		LayoutOrder = 1,
		Size = UDim2.new(1, 0, 0, HEADER_HEIGHT),
		ZIndex = 2,
	}, {
		Bar = React.createElement(HeaderBar, {
			backgroundTransparency = 1,
			barHeight = HEADER_HEIGHT,
			margin = 12,
			renderLeft = renderHeaderBarLeft(props.backAction, props.isRedoEnabled, props.isUndoEnabled),
			renderRight = if isUndoRedoShown
				then renderHeaderBarRight(
					props.annotationPoints,
					props.undoAnnotationPoints,
					props.redoAnnotationPoints,
					props.isUndoEnabled,
					props.isRedoEnabled
				)
				else function() end,
			title = if GetFFlagReportAnythingLocalizationEnabled() then nil else props.titleText,
			renderCenter = if GetFFlagReportAnythingLocalizationEnabled() then renderCenter(props.titleText) else nil,
			isSecondary = true,
		}),
	})
end
return ScreenshotDialogPortraitModeHeader
