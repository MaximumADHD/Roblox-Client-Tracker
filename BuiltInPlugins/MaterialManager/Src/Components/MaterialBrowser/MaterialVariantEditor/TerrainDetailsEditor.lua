local Plugin = script.Parent.Parent.Parent.Parent.Parent
local _Types = require(Plugin.Src.Types)
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
local Button = UI.Button
local TextInput = UI.TextInput
local ExpandablePane = UI.ExpandablePane
local Pane = UI.Pane
local Image = UI.Decoration.Image
local Tooltip = UI.Tooltip

local Actions = Plugin.Src.Actions
local SetExpandedPane = require(Actions.SetExpandedPane)
local MainReducer = require(Plugin.Src.Reducers.MainReducer)

local Controllers = Plugin.Src.Controllers
local GeneralServiceController = require(Controllers.GeneralServiceController)

local MaterialVariantEditorComponent = Plugin.Src.Components.MaterialBrowser.MaterialVariantEditor
local LabeledElement = require(MaterialVariantEditorComponent.LabeledElement)
local TextureSettings = require(MaterialVariantEditorComponent.TextureSettings)
local TilingSettings = require(MaterialVariantEditorComponent.TilingSettings)

local Constants = Plugin.Src.Resources.Constants
local getSettingsNames = require(Constants.getSettingsNames)

local settingsNames = getSettingsNames()

export type Props = {
	LabelColumnWidth: UDim,
	LayoutOrder: number,
	TerrainDetail: TerrainDetail,
	TerrainFace: string,
	OnDelete: () -> (),
}

type _Props = Props & { 
	Analytics: any,
	dispatchSetExpandedPane: (paneName: string, expandedPaneState: boolean) -> (),
	ExpandedPane: boolean,
	GeneralServiceController: any,
	Localization: any,
	Stylizer: any,
}

type _Style = {
	ButtonSize: UDim2,
	ButtonStyle: string,
	CustomExpandablePane: any,
	Delete: _Types.Image,
	DialogColumnSize: UDim2,
	ImagePosition: UDim2,
	ImageSize: UDim2,
	LabelColumnWidth: UDim,
}

local TerrainDetailsEditor = Roact.PureComponent:extend("TerrainDetailsEditor")

function TerrainDetailsEditor:init()
	self.state = {
		name = self.props.TerrainDetail.Name,
	}

	self.setNameStatus = function(message, status)
		self:setState({
			nameMessage = message or Roact.None,
			status = if status then status else Enum.PropertyStatus.Ok,
		})
	end

	self.onFocusLost = function(_, rbx)
		local props: _Props = self.props
		local localization = props.Localization

		if rbx.Text and rbx.Text ~= "" then
			self:setState({
				name = rbx.Text,
			})
			props.GeneralServiceController:setTerrainDetailName(props.TerrainDetail, rbx.Text)
			self.setNameStatus(nil)
		else
			self.setNameStatus(localization:getText("CreateDialog", "ErrorNoName"), Enum.PropertyStatus.Warning)
			self:setState({
				name = props.TerrainDetail.Name,
			})
		end
	end

	self.onExpandedChanged = function()
		local props: _Props = self.props
		
		props.dispatchSetExpandedPane(settingsNames.TerrainDetailsEditor[props.TerrainFace], not props.ExpandedPane)
	end
end

function TerrainDetailsEditor:didUpdate(_, prevState)
	if self.state.name ~= self.props.TerrainDetail.Name
		and prevState.name == self.state.name then
		self:setState({
			name = self.props.TerrainDetail.Name,
		})
		self.setNameStatus(nil)
	end
end

function TerrainDetailsEditor:render()
	local props: _Props = self.props
	local style: _Style = props.Stylizer.MaterialDetails
	local localization = props.Localization
	local layoutOrderIterator = LayoutOrderIterator.new()

	local functionComponent = function()
		return Roact.createElement(LabeledElement, {
			LabelColumnWidth = UDim.new(0, 55),
			LayoutOrder = layoutOrderIterator:getNextOrder(),
			Text = localization:getText("TerrainDetails", props.TerrainFace),
			StatusText = self.state.nameMessage,
			Status = self.state.status,
		}, {
			Roact.createElement(Pane, {
				Size = style.DialogColumnSize,
				HorizontalAlignment = Enum.HorizontalAlignment.Left,
				Layout = Enum.FillDirection.Horizontal,
			}, {
				Name = Roact.createElement(TextInput, {
					Style = "FilledRoundedBorder",
					Size = UDim2.new(0, 135, 0, 25),
					Text = self.state.name,
					OnFocusLost = self.onFocusLost,
					LayoutOrder = 1,
				}),
				Delete = Roact.createElement(Button, {
					LayoutOrder = 2,
					OnClick = props.OnDelete,
					Size = style.ButtonSize,
					Style = style.ButtonStyle,
				}, {
					Image = Roact.createElement(Image, {
						Style = style.Delete,
						Size = style.ImageSize,
						Position = style.ImagePosition,
					}),
					Tooltip = Roact.createElement(Tooltip, {
						Text = localization:getText("TerrainDetails", "Delete")
					}),
				})
			})
		})
	end
	
	return Roact.createElement(ExpandablePane, {
		LayoutOrder = props.LayoutOrder,
		HeaderComponent = functionComponent,
		Style = style.CustomExpandablePane,
		Expanded = props.ExpandedPane,
		OnExpandedChanged = self.onExpandedChanged,
		Padding = {
			Left = 10,
		},
	}, {
		TextureSettings = Roact.createElement(TextureSettings, {
			LayoutOrder = layoutOrderIterator:getNextOrder(),
			PBRMaterial = props.TerrainDetail,
			Expandable = false,
		}),
		TilingSettings = Roact.createElement(TilingSettings, {
			LayoutOrder = layoutOrderIterator:getNextOrder(),
			PBRMaterial = props.TerrainDetail,
			Expandable = false,
		})
	})
end

TerrainDetailsEditor = withContext({
	Analytics = Analytics,
	GeneralServiceController = GeneralServiceController,
	Localization = Localization,
	Stylizer = Stylizer,
})(TerrainDetailsEditor)

return RoactRodux.connect(
	function(state: MainReducer.State, props: _Props)
		return {
			ExpandedPane = state.MaterialBrowserReducer.ExpandedPane[settingsNames.TerrainDetailsEditor[props.TerrainFace]],
		}
	end,
	function(dispatch)
		return {
			dispatchSetExpandedPane = function(paneName: string, expandedPaneState: boolean)
				dispatch(SetExpandedPane(paneName, expandedPaneState))
			end,
		}
	end
)(TerrainDetailsEditor)
