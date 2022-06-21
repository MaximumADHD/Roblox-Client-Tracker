local Plugin = script.Parent.Parent.Parent
local _Types = require(Plugin.Src.Types)
local Roact = require(Plugin.Packages.Roact)
local Framework = require(Plugin.Packages.Framework)

local ContextServices = Framework.ContextServices
local withContext = ContextServices.withContext
local Analytics = ContextServices.Analytics
local Localization = ContextServices.Localization

local Stylizer = Framework.Style.Stylizer

local UI = Framework.UI
local Container = UI.Container
local Image = UI.Decoration.Image
local Pane = UI.Pane
local Tooltip = UI.Tooltip

export type Props = {
	LayoutOrder: number?,
	Position: UDim2?,
	Size: UDim2?,
	Status: Enum.PropertyStatus,
	ZIndex: number?,
}

type _Props = Props & {
	Analytics: any,
	Localization: any,
	MaterialController: any,
	Stylizer: any,
}

type _Style = {
	Error: _Types.Image,
	IconSize: UDim2,
	Warning: _Types.Image,
}

local StatusIcon = Roact.PureComponent:extend("StatusIcon")

function StatusIcon:render()
	local props: _Props = self.props
	local style: _Style = props.Stylizer.StatusIcon
	local localization = props.Localization
	local status = props.Status

	local statusImage
	local statusText = ""
	if status == Enum.PropertyStatus.Error then
		statusImage = style.Error
		statusText = localization:getText("MaterialStatus", "MissingMaterial")
	elseif status == Enum.PropertyStatus.Warning then
		statusImage = style.Warning
		statusText = localization:getText("MaterialStatus", "DuplicateMaterial")
	elseif status == Enum.PropertyStatus.Ok then
		return Roact.createElement(Pane, {
			LayoutOrder = props.LayoutOrder,
			Size = UDim2.fromOffset(0, 0),
		})
	end

	return Roact.createElement(Container, {
		LayoutOrder = props.LayoutOrder,
		Position = props.Position,
		Size = props.Size,
		ZIndex = props.ZIndex,
	}, {
		Image = Roact.createElement(Image, {
			Style = statusImage,
		}),
		Tooltip = Roact.createElement(Tooltip, {
			Text = statusText,
		})
	})
end

StatusIcon = withContext({
	Analytics = Analytics,
	Localization = Localization,
	Stylizer = Stylizer,
})(StatusIcon)

return StatusIcon