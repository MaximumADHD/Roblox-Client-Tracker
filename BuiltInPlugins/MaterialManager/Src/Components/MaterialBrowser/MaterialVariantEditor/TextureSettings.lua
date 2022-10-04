local Plugin = script.Parent.Parent.Parent.Parent.Parent
local Roact = require(Plugin.Packages.Roact)
local RoactRodux = require(Plugin.Packages.RoactRodux)
local Framework = require(Plugin.Packages.Framework)

local LayoutOrderIterator = Framework.Util.LayoutOrderIterator
local Stylizer = Framework.Style.Stylizer

local ContextServices = Framework.ContextServices
local withContext = ContextServices.withContext
local Analytics = ContextServices.Analytics
local Localization = ContextServices.Localization

local UI = Framework.UI
local Pane = UI.Pane
local ExpandablePane = UI.ExpandablePane

local Actions = Plugin.Src.Actions
local SetExpandedPane = require(Actions.SetExpandedPane)
local MainReducer = require(Plugin.Src.Reducers.MainReducer)

local getFFlagMaterialManagerTextureMapOverhaul = require(
	Plugin.Src.Flags.getFFlagMaterialManagerTextureMapOverhaul
)

local TextureMapSelector = if getFFlagMaterialManagerTextureMapOverhaul()
	then 
		require(Plugin.Src.Components.MaterialBrowser.MaterialVariantEditor.TextureMapSelector)
	else 
		require(Plugin.Src.Components.MaterialBrowser.MaterialVariantEditor.deprecatedTextureMapSelector)

local Constants = Plugin.Src.Resources.Constants
local getSettingsNames = require(Constants.getSettingsNames)
local getTextureMapNames = require(Constants.getTextureMapNames)

local TextureMaps = getTextureMapNames()
local settingsNames = getSettingsNames()

export type Props = {
	LayoutOrder: number?,
	PBRMaterial: MaterialVariant | TerrainDetail,
	Expandable: boolean?,
}

type _Props = Props & {
	Analytics: any,
	dispatchSetExpandedPane: (paneName: string, expandedPaneState: boolean) -> (),
	ExpandedPane: boolean,
	Localization: any,
	Stylizer: any,
}

type _Style = {
	ColumnWidth: number,
	ContentPadding: number,
	CustomExpandablePane: any,
	ItemSpacing: number,
	LabelColumnWidth: UDim,
	LabelWidth: UDim,
}

local TextureSettings = Roact.PureComponent:extend("TextureSettings")

function TextureSettings:init()
	self.onExpandedChanged = function()
		local props: _Props = self.props

		local settingName = settingsNames.TextureSettings
		props.dispatchSetExpandedPane(settingName, not props.ExpandedPane)
	end
end

function TextureSettings:render()
	local props: _Props = self.props
	local style: _Style = props.Stylizer.MaterialDetails
	local localization = props.Localization

	if not props.PBRMaterial then
		return Roact.createElement(Pane)
	end

	local layoutOrderIterator = LayoutOrderIterator.new()

	local children = {
		ImportColorMap = Roact.createElement(TextureMapSelector, {
			LayoutOrder = layoutOrderIterator:getNextOrder(),
			LabelColumnWidth = style.LabelColumnWidth,
			LabelWidth = style.LabelWidth,
			MapType = TextureMaps.ColorMap,
			PreviewTitle = localization:getText("Import", "ColorMapPreview"),
			Text = localization:getText("CreateDialog", "ImportColorMap"),
			PBRMaterial = props.PBRMaterial,
			ColumnWidth = style.ColumnWidth,
		}),
		ImportMetalnessMap = Roact.createElement(TextureMapSelector, {
			LayoutOrder = layoutOrderIterator:getNextOrder(),
			LabelColumnWidth = style.LabelColumnWidth,
			LabelWidth = style.LabelWidth,
			MapType = TextureMaps.MetalnessMap,
			PreviewTitle = localization:getText("Import", "MetalnessMapPreview"),
			Text = localization:getText("CreateDialog", "ImportMetalnessMap"),
			PBRMaterial = props.PBRMaterial,
			ColumnWidth = style.ColumnWidth,
		}),
		ImportNormalMap = Roact.createElement(TextureMapSelector, {
			LayoutOrder = layoutOrderIterator:getNextOrder(),
			LabelColumnWidth = style.LabelColumnWidth,
			LabelWidth = style.LabelWidth,
			MapType = TextureMaps.NormalMap,
			PreviewTitle = localization:getText("Import", "NormalMapPreview"),
			Text = localization:getText("CreateDialog", "ImportNormalMap"),
			PBRMaterial = props.PBRMaterial,
			ColumnWidth = style.ColumnWidth,
		}),
		ImportRoughnessMap = Roact.createElement(TextureMapSelector, {
			LayoutOrder = layoutOrderIterator:getNextOrder(),
			LabelColumnWidth = style.LabelColumnWidth,
			LabelWidth = style.LabelWidth,
			MapType = TextureMaps.RoughnessMap,
			PreviewTitle = localization:getText("Import", "RoughnessMapPreview"),
			Text = localization:getText("CreateDialog", "ImportRoughnessMap"),
			PBRMaterial = props.PBRMaterial,
			ColumnWidth = style.ColumnWidth,
		})
	}

	if props.Expandable then
		return Roact.createElement(ExpandablePane, {
			LayoutOrder = props.LayoutOrder,
			ContentPadding = style.ContentPadding,
			ContentSpacing = style.ItemSpacing,
			Text = localization:getText("MaterialTextures", "TextureMaps"),
			Style = style.CustomExpandablePane,
			Expanded = props.ExpandedPane,
			OnExpandedChanged = self.onExpandedChanged,
		}, children)
	else
		return Roact.createElement(Pane, {
			AutomaticSize = Enum.AutomaticSize.Y,
			LayoutOrder = props.LayoutOrder,
			Layout = Enum.FillDirection.Vertical,
			Spacing = style.ItemSpacing,
			HorizontalAlignment = Enum.HorizontalAlignment.Left,
		}, children)
	end
end

TextureSettings = withContext({
	Analytics = Analytics,
	Localization = Localization,
	Stylizer = Stylizer,
})(TextureSettings)

return RoactRodux.connect(
	function(state: MainReducer.State)
		return {
			ExpandedPane = state.MaterialBrowserReducer.ExpandedPane[settingsNames.TextureSettings],
		}
	end,
	function(dispatch)
		return {
			dispatchSetExpandedPane = function(paneName: string, expandedPaneState: boolean)
				dispatch(SetExpandedPane(paneName, expandedPaneState))
			end,
		}
	end
)(TextureSettings)
