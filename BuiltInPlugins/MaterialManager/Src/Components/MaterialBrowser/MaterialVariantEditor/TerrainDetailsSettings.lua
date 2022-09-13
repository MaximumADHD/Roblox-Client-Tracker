local Plugin = script.Parent.Parent.Parent.Parent.Parent
local _Types = require(Plugin.Src.Types)
local Roact = require(Plugin.Packages.Roact)
local Framework = require(Plugin.Packages.Framework)
local RoactRodux = require(Plugin.Packages.RoactRodux)

local LayoutOrderIterator = Framework.Util.LayoutOrderIterator
local Stylizer = Framework.Style.Stylizer

local ContextServices = Framework.ContextServices
local withContext = ContextServices.withContext
local Analytics = ContextServices.Analytics
local Localization = ContextServices.Localization

local UI = Framework.UI
local ExpandablePane = UI.ExpandablePane
local Button = UI.Button

local Actions = Plugin.Src.Actions
local SetExpandedPane = require(Actions.SetExpandedPane)
local MainReducer = require(Plugin.Src.Reducers.MainReducer)

local Controllers = Plugin.Src.Controllers
local GeneralServiceController = require(Controllers.GeneralServiceController)
local MaterialServiceController = require(Controllers.MaterialServiceController)

local MaterialVariantEditorComponent = Plugin.Src.Components.MaterialBrowser.MaterialVariantEditor
local LabeledElement = require(MaterialVariantEditorComponent.LabeledElement)
local TerrainDetailsEditor = require(MaterialVariantEditorComponent.TerrainDetailsEditor)

local Constants = Plugin.Src.Resources.Constants
local getTerrainFaceName = require(Constants.getTerrainFaceName)
local getTerrainFaces = require(Constants.getTerrainFaces)
local getSettingsNames = require(Constants.getSettingsNames)

local settingsNames = getSettingsNames()
local TerrainFaces = getTerrainFaces()

export type Props = {
	LayoutOrder: number?,
	MaterialVariant: MaterialVariant,
	MockMaterial: _Types.Material?,
}

type _Props = Props & { 
	Analytics: any,
	dispatchSetExpandedPane: (paneName: string, expandedPaneState: boolean) -> (),
	ExpandedPane: boolean,
	GeneralServiceController: any,
	Localization: any,
	Material: _Types.Material,
	Stylizer: any,
}

type _Style = {
	ButtonColor: Color3,
	ContentPadding: number,
	CustomExpandablePane: any,
	CustomSelectInput: any,
	DialogColumnSize: UDim2,
	ItemSpacing: number,
	LabelColumnWidth: UDim,
}

local TerrainDetailsSettings = Roact.PureComponent:extend("TerrainDetailsSettings")

function TerrainDetailsSettings:init()
	self.onClick = function(face: string)
		self.props.MaterialServiceController:createTerrainDetail(self.props.MaterialVariant, face)
	end

	self.onDelete = function(face: string)
		local props: _Props = self.props

		local terrainDetail = props.Material["TerrainDetail" .. face]
		if terrainDetail then
			props.GeneralServiceController:destroyWithUndo(terrainDetail)
		end
	end

	self.onExpandedChanged = function()
		local props: _Props = self.props
		
		props.dispatchSetExpandedPane(settingsNames.TerrainDetailsSettings, not props.ExpandedPane)
	end
end

function TerrainDetailsSettings:render()
	local props: _Props = self.props
	local style: _Style = props.Stylizer.MaterialDetails
	local localization = props.Localization
	local layoutOrderIterator = LayoutOrderIterator.new()

	local children = {}
	for _, terrainFace in ipairs(TerrainFaces) do
		local face = getTerrainFaceName(terrainFace)
		local terrainDetail = props.Material["TerrainDetail" .. face]
		if terrainDetail then
			children[face] = Roact.createElement(TerrainDetailsEditor, {
				LabelColumnWidth = style.LabelColumnWidth,
				LayoutOrder = layoutOrderIterator:getNextOrder(),
				TerrainDetail = terrainDetail,
				TerrainFace = face,
				OnDelete = function()
					self.onDelete(face)
				end
			})
		else
			children[face] = Roact.createElement(LabeledElement, {
				LabelColumnWidth = style.LabelColumnWidth,
				LayoutOrder = layoutOrderIterator:getNextOrder(),
				Text = localization:getText("TerrainDetails", face),
			}, {
				Roact.createElement(Button, {
					Size = style.DialogColumnSize,
					Text = localization:getText("TerrainDetails", "ButtonCreate"),
					TextXAlignment = Enum.TextXAlignment.Center,
					BackgroundColor = style.ButtonColor,
					OnClick = function()
						self.onClick(face)
					end,
				})
			})
		end
	end

	return Roact.createElement(ExpandablePane, {
		LayoutOrder = props.LayoutOrder,
		HorizontalAlignment = Enum.HorizontalAlignment.Left,
		ContentPadding = style.ContentPadding,
		ContentSpacing = style.ItemSpacing,
		Text = localization:getText("TerrainDetails", "TerrainDetails"),
		Style = style.CustomExpandablePane,
		Expanded = props.ExpandedPane,
		OnExpandedChanged = self.onExpandedChanged,
	}, children)
end

TerrainDetailsSettings = withContext({
	Analytics = Analytics,
	GeneralServiceController = GeneralServiceController,
	MaterialServiceController = MaterialServiceController,
	Localization = Localization,
	Stylizer = Stylizer,
})(TerrainDetailsSettings)

return RoactRodux.connect(
	function(state: MainReducer.State, props: Props)
		return {
			Material = props.MockMaterial or state.MaterialBrowserReducer.Material,
			ExpandedPane = state.MaterialBrowserReducer.ExpandedPane[settingsNames.TerrainDetailsSettings],
		}
	end,
	function(dispatch)
		return {
			dispatchSetExpandedPane = function(paneName: string, expandedPaneState: boolean)
				dispatch(SetExpandedPane(paneName, expandedPaneState))
			end,
		}
	end
)(TerrainDetailsSettings)
