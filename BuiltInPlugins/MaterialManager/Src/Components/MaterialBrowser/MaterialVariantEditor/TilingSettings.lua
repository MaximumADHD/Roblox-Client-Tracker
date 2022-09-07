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
local TextInput = UI.TextInput
local SelectInput = UI.SelectInput

local Actions = Plugin.Src.Actions
local SetExpandedPane = require(Actions.SetExpandedPane)
local MainReducer = require(Plugin.Src.Reducers.MainReducer)

local Controllers = Plugin.Src.Controllers
local GeneralServiceController = require(Controllers.GeneralServiceController)

local LabeledElement = require(Plugin.Src.Components.MaterialBrowser.MaterialVariantEditor.LabeledElement)

local Constants = Plugin.Src.Resources.Constants
local getMaterialPatterns = require(Constants.getMaterialPatterns)
local getMaterialPatternName = require(Constants.getMaterialPatternName)
local getSettingsNames = require(Constants.getSettingsNames)

local getNumberFromText = require(Plugin.Src.Util.getNumberFromText)

local materialPatterns = getMaterialPatterns()
local settingsNames = getSettingsNames()

export type Props = {
	LayoutOrder: number?,
	MaterialVariant: MaterialVariant,
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
	ContentPadding: number,
	CustomExpandablePane: any,
	CustomSelectInput: any,
	DialogColumnSize: UDim2,
	ItemSpacing: number,
	LabelColumnWidth: UDim,
}

local TilingSettings = Roact.PureComponent:extend("TilingSettings")

function TilingSettings:init()
	self.state = {
		studsPerTile = tostring(self.props.MaterialVariant.StudsPerTile),
	}
	self.materialPatterns = {}

	self.setStudsPerTileStatus = function(message)
		self:setState({
			studsPerTileMessage = message or Roact.None,
			status = if message then Enum.PropertyStatus.Warning else Enum.PropertyStatus.Ok,
		})
	end

	self.onStudsPerTileChanged = function(text)
		self:setState({
			studsPerTile = text,
		})
	end

	self.onFocusLost = function()
		local props: _Props = self.props
		local localization = props.Localization

		local numberFromText = getNumberFromText(self.state.studsPerTile)
		if numberFromText then
			props.GeneralServiceController:setStudsPerTile(props.MaterialVariant, numberFromText)
			self.setStudsPerTileStatus(nil)
		else
			self.setStudsPerTileStatus(localization:getText("CreateDialog", "ErrorStudsPerTile"))
			self:setState({
				studsPerTile = tostring(props.MaterialVariant.StudsPerTile),
			})
		end
	end

	self.onMaterialPatternSelected = function(materialPattern, index)
		local props: _Props = self.props

		if materialPattern then
			props.GeneralServiceController:setMaterialPattern(props.MaterialVariant, materialPatterns[index])
		end
	end

	self.onExpandedChanged = function()
		local props: _Props = self.props

		props.dispatchSetExpandedPane(settingsNames.TilingSettings, not props.ExpandedPane)
	end
end

function TilingSettings:didMount()
	local props: _Props = self.props
	local localization = props.Localization

	for index, materialPattern in ipairs(materialPatterns) do
		table.insert(
			self.materialPatterns,
			localization:getText("MaterialPatterns", getMaterialPatternName(materialPattern))
		)
	end
	self:setState({}) -- Force a rerender of the patterns list
end

function TilingSettings:didUpdate(prevProps)
	if prevProps.MaterialVariant.StudsPerTile ~= self.props.MaterialVariant.StudsPerTile then
		self:setState({
			status = Enum.PropertyStatus.Ok,
			studsPerTile = self.props.MaterialVariant.StudsPerTile,
			studsPerTileMessage = Roact.None,
		})
	end
end

function TilingSettings:render()
	local props: _Props = self.props
	local style: _Style = props.Stylizer.MaterialDetails
	local localization = props.Localization
	local layoutOrderIterator = LayoutOrderIterator.new()

	local currentIndex = 1
	for index, materialPattern in ipairs(materialPatterns) do
		if materialPattern == props.MaterialVariant.MaterialPattern then
			currentIndex = index
		end
	end

	return Roact.createElement(ExpandablePane, {
		LayoutOrder = props.LayoutOrder,
		HorizontalAlignment = Enum.HorizontalAlignment.Left,
		ContentPadding = style.ContentPadding,
		ContentSpacing = style.ItemSpacing,
		Text = localization:getText("MaterialTiling", "Tiling"),
		Style = style.CustomExpandablePane,
		Expanded = props.ExpandedPane,
		OnExpandedChanged = self.onExpandedChanged,
	}, {
		StudsPerTile = Roact.createElement(LabeledElement, {
			LabelColumnWidth = style.LabelColumnWidth,
			LayoutOrder = layoutOrderIterator:getNextOrder(),
			Text = localization:getText("MaterialTiling", "StudsPerTile"),
			StatusText = self.state.studsPerTileMessage,
			Status = self.state.status,
		}, {
			Roact.createElement(TextInput, {
				Style = "FilledRoundedBorder",
				Size = style.DialogColumnSize,
				Text = self.state.studsPerTile,
				OnTextChanged = self.onStudsPerTileChanged,
				OnFocusLost = self.onFocusLost,
			}),
		}),
		MaterialPattern = Roact.createElement(LabeledElement, {
			LabelColumnWidth = style.LabelColumnWidth,
			LayoutOrder = layoutOrderIterator:getNextOrder(),
			Text = localization:getText("MaterialTiling", "Pattern"),
		}, {
			Roact.createElement(SelectInput, {
				Style = style.CustomSelectInput,
				Items = self.materialPatterns,
				Size = style.DialogColumnSize,
				OnItemActivated = self.onMaterialPatternSelected,
				SelectedIndex = currentIndex,
			}),
		}),
	})
end

TilingSettings = withContext({
	Analytics = Analytics,
	GeneralServiceController = GeneralServiceController,
	Localization = Localization,
	Stylizer = Stylizer,
})(TilingSettings)

return RoactRodux.connect(
	function(state: MainReducer.State)
		return {
			ExpandedPane = state.MaterialBrowserReducer.ExpandedPane[settingsNames.TilingSettings],
			Material = state.MaterialBrowserReducer.Material, -- Needed for refresh purposes
		}
	end,
	function(dispatch)
		return {
			dispatchSetExpandedPane = function(paneName: string, expandedPaneState: boolean)
				dispatch(SetExpandedPane(paneName, expandedPaneState))
			end,
		}
	end
)(TilingSettings)
