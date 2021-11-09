
local Plugin = script.Parent.Parent.Parent

local Roact = require(Plugin.Packages.Roact)
local Framework = require(Plugin.Packages.Framework)

local ContextServices = Framework.ContextServices
local withContext = ContextServices.withContext
local Localization = ContextServices.Localization
local Stylizer = ContextServices.Stylizer

local UI = Framework.UI
local Image = UI.Decoration.Image
local Tooltip = UI.Tooltip

local StatusLevel = require(Plugin.Src.Utility.StatusLevel)

local PropertyStatus = Roact.PureComponent:extend("PropertyStatus")

function PropertyStatus:render()
	local props = self.props
	local localization = props.Localization
	local style = props.Stylizer

	local statusLevel = props.StatusLevel
	local statusMessage = props.StatusMessage
	local layoutOrder = props.LayoutOrder
	local iconSize = style.PropertyView.IconSize
	local iconStyle = statusLevel == StatusLevel.Error and style.ErrorIcon or style.WarningIcon

	return Roact.createElement(Image, {
		Size = UDim2.fromOffset(iconSize, iconSize),
		Style = iconStyle,
		LayoutOrder = layoutOrder,
	}, {
		Tooltip = Roact.createElement(Tooltip, {
			Text = localization:getText("Statuses", statusMessage),
		})
	})
end

PropertyStatus = withContext({
	Localization = Localization,
	Stylizer = Stylizer,
})(PropertyStatus)

return PropertyStatus
