local AlertRoot = script.Parent
local DialogRoot = AlertRoot.Parent
local AppRoot = DialogRoot.Parent
local UIBlox = AppRoot.Parent
local Packages = UIBlox.Parent

local Roact = require(Packages.Roact)
local t = require(Packages.t)

local Alert = require(AlertRoot.Alert)
local AlertType = require(AlertRoot.Enum.AlertType)

local MIN_WIDTH = 272
local MAX_WIDTH = 400
local MARGIN = 24
local PADDING_BETWEEN = 24
local TITLE_PADDING = 12
local TITLE_MARGIN_WITH_ICON = 24
local TITLE_ICON_SIZE = 48

local UIBloxConfig = require(UIBlox.UIBloxConfig)
local enableAlertTitleIconConfig = UIBloxConfig.enableAlertTitleIconConfig

local InformativeAlert = Roact.PureComponent:extend("InformativeAlert")

local validateProps = t.strictInterface({
	anchorPoint = t.optional(t.Vector2),
	bodyText = t.optional(t.string),
	onMounted = t.optional(t.callback),
	position = t.optional(t.UDim2),
	screenSize = t.Vector2,
	title = t.string,
	titleIcon = t.optional(t.union(t.table, t.string)),
})

function InformativeAlert:render()
	assert(validateProps(self.props))
	return Roact.createElement(Alert, {
		anchorPoint = self.props.anchorPoint,
		alertType = AlertType.Informative,
		bodyText = self.props.bodyText,
		margin = {
			top = 0,
			bottom = MARGIN,
			left = MARGIN,
			right = MARGIN,
		},
		maxWidth = MAX_WIDTH,
		minWidth = MIN_WIDTH,
		onMounted = self.props.onMounted,
		paddingBetween = PADDING_BETWEEN,
		position = self.props.position,
		screenSize = self.props.screenSize,
		title = self.props.title,
		titleIcon = enableAlertTitleIconConfig and self.props.titleIcon or nil,
		titleIconSize = enableAlertTitleIconConfig and TITLE_ICON_SIZE or nil,
		titlePadding = TITLE_PADDING,
		titlePaddingWithIcon = TITLE_MARGIN_WITH_ICON,
	})
end

return InformativeAlert