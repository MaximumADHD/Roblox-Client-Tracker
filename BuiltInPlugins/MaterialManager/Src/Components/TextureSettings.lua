local Plugin = script.Parent.Parent.Parent

local Roact = require(Plugin.Packages.Roact)

local Framework = require(Plugin.Packages.Framework)

local ContextServices = Framework.ContextServices
local withContext = ContextServices.withContext
local Analytics = ContextServices.Analytics

local UI = Framework.UI
local Pane = UI.Pane

local LabeledElementList = require(Plugin.Src.Components.LabeledElementList)

export type Props = {
	LayoutOrder : number?,
}

type _Props = Props & {
	Analytics : any,
	Localization : any,
	Stylizer : any,
}

local TextureSettings = Roact.PureComponent:extend("TextureSettings")

function TextureSettings:render()
	local props : _Props = self.props
	local localization = props.Localization

	-- TODO: add texture map functionality
	local items = {
		{
			Key = "ImportColorMap",
			Text = localization:getText("CreateDialog", "ImportColorMap"),
			Content = Roact.createElement(Pane, {
				Style = "RoundBox",
				AutomaticSize = Enum.AutomaticSize.XY,
			}),
		},
		{
			Key = "ImportNormalMap",
			Text = localization:getText("CreateDialog", "ImportNormalMap"),
			Content = Roact.createElement(Pane, {
				Style = "RoundBox",
				AutomaticSize = Enum.AutomaticSize.XY,
			}),
		},
		{
			Key = "ImportMetalnessMap",
			Text = localization:getText("CreateDialog", "ImportMetalnessMap"),
			Content = Roact.createElement(Pane, {
				Style = "RoundBox",
				AutomaticSize = Enum.AutomaticSize.XY,
			}),
		},
		{
			Key = "ImportRoughnessMap",
			Text = localization:getText("CreateDialog", "ImportRoughnessMap"),
			Content = Roact.createElement(Pane, {
				Style = "RoundBox",
				AutomaticSize = Enum.AutomaticSize.XY,
			}),
		},
	}

	return Roact.createElement(LabeledElementList, {
		Items = items,
		LayoutOrder = props.LayoutOrder,
	})
end


TextureSettings = withContext({
	Analytics = Analytics,
	Localization = ContextServices.Localization,
	Stylizer = ContextServices.Stylizer,
})(TextureSettings)

return TextureSettings
