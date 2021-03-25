local AlertRoot = script.Parent
local DialogRoot = AlertRoot.Parent
local AppRoot = DialogRoot.Parent
local UIBlox = AppRoot.Parent
local Packages = UIBlox.Parent

local Roact = require(Packages.Roact)
local t = require(Packages.t)

local Alert = require(AlertRoot.Alert)
local AlertType = require(AlertRoot.Enum.AlertType)

local FitFrame = require(Packages.FitFrame)
local FitFrameOnAxis = FitFrame.FitFrameOnAxis

local MIN_WIDTH = 272
local MAX_WIDTH = 400
local MARGIN = 24
local TITLE_ICON_SIZE = 48

local UIBloxConfig = require(UIBlox.UIBloxConfig)
local enableAlertTitleIconConfig = UIBloxConfig.enableAlertTitleIconConfig

local LoadingSpinner = require(UIBlox.App.Loading.LoadingSpinner)
local ImageSetComponent = require(UIBlox.Core.ImageSet.ImageSetComponent)
local withStyle = require(UIBlox.Core.Style.withStyle)

local LoadingAlert = Roact.PureComponent:extend("LoadingAlert")

local validateProps = t.strictInterface({
	anchorPoint = t.optional(t.Vector2),
	position = t.optional(t.UDim2),
	screenSize = t.Vector2,

	onMounted = t.optional(t.callback),

	titleIcon = enableAlertTitleIconConfig and t.optional(t.union(t.table, t.string)) or nil,
	title = t.string,
})

function LoadingAlert:init()
	self.renderMiddleContent = function()
		return Roact.createElement("Frame", {
			Size = UDim2.new(1, 0, 0, 48),
			BackgroundTransparency = 1,
		}, {
			Spinner = Roact.createElement(LoadingSpinner, {
				size = UDim2.fromOffset(48, 48),
				position = UDim2.fromScale(0.5, 0.5),
				anchorPoint = Vector2.new(0.5, 0.5),
			})
		})
	end
end

function LoadingAlert:render()
	assert(validateProps(self.props))
	return withStyle(function(stylePalette)
		local theme = stylePalette.Theme

		return Roact.createElement(Alert, {
			anchorPoint = self.props.anchorPoint,
			alertType = AlertType.Loading,
			margin = {
				top = 0,
				bottom = MARGIN,
				left = MARGIN,
				right = MARGIN,
			},
			maxWidth = MAX_WIDTH,
			minWidth = MIN_WIDTH,
			middleContent = self.renderMiddleContent,
			onMounted = self.props.onMounted,
			position = self.props.position,
			screenSize = self.props.screenSize,
			title = self.props.title,
			titleContent = self.props.titleIcon and function()
				return Roact.createElement(FitFrameOnAxis, {
					BackgroundTransparency = 1,
					contentPadding = UDim.new(0, 8),
					HorizontalAlignment = Enum.HorizontalAlignment.Center,
					margin = {
						top = 12, -- Title already has 12 padding on the top
						bottom = 0,
						left = 0,
						right = 0,
					},
					minimumSize = UDim2.new(1, 0, 0, 0),
				}, {
					Icon = Roact.createElement(ImageSetComponent.Label, {
						BackgroundTransparency = 1,
						Image = self.props.titleIcon,
						ImageColor3 = theme.IconEmphasis.Color,
						ImageTransparency = theme.IconEmphasis.Transparency,
						Size = UDim2.new(0, TITLE_ICON_SIZE, 0, TITLE_ICON_SIZE),
					})
				})
			end or nil,
		})
	end)
end

return LoadingAlert
