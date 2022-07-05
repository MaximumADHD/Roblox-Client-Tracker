local Plugin = script.Parent.Parent.Parent.Parent.Parent
local _Types = require(Plugin.Src.Types)
local Roact = require(Plugin.Packages.Roact)
local RoactRodux = require(Plugin.Packages.RoactRodux)
local Framework = require(Plugin.Packages.Framework)

local ContextServices = Framework.ContextServices
local Localization = ContextServices.Localization
local withContext = ContextServices.withContext

local Stylizer = Framework.Style.Stylizer

local UI = Framework.UI
local Button = UI.Button
local Image = UI.Decoration.Image
local Pane = UI.Pane
local Slider = UI.Slider
local TextLabel = UI.Decoration.TextLabel

local getViewTypes = require(Plugin.Src.Resources.Constants.getViewTypes)
local MainReducer = require(Plugin.Src.Reducers.MainReducer)
local PluginController = require(Plugin.Src.Controllers.PluginController)
local SetMaterialTileSize = require(Plugin.Src.Actions.SetMaterialTileSize)
local ViewTypes = getViewTypes()

local ViewTypeButton = Roact.PureComponent:extend("ViewTypeButton")

export type Props = {
	LayoutOrder: number?,
	OnClick: () -> (),
	Text: string,
	ViewType: getViewTypes.ViewType,
}

type _Props = Props & {
	dispatchSetMaterialTileSize: (materialTileSize: number) -> (),
	Localization: any,
	MaterialTileSize: number,
	PluginController: any,
	Stylizer: any,
}

type _Style = {
	Grid: string,
	List: string,
	ViewTypeBackground: Color3,
	ViewTypeSize: UDim2,
}

function ViewTypeButton:init()
	self.selectMaterialTileSize = function(materialTileSize)
		local props: _Props = self.props

		props.dispatchSetMaterialTileSize(materialTileSize)
		props.PluginController:setMaterialTileSize(materialTileSize)
	end
end

function ViewTypeButton:render()
	local props: _Props = self.props
	local style: _Style = props.Stylizer.ViewTypeButton

	return Roact.createElement(Pane, {
		BackgroundColor = style.ViewTypeBackground,
		Layout = Enum.FillDirection.Vertical,
		LayoutOrder = props.LayoutOrder,
		Size = if props.ViewType == ViewTypes.Grid then UDim2.new(1, 0, 0, 60) else UDim2.new(1, 0, 0, 40),
	}, {
		Button = Roact.createElement(Button, {
			Size = UDim2.new(1, 0, 0, 40),
			LayoutOrder = props.LayoutOrder,
			OnClick = props.OnClick,
		}, {
			ImageContainer = Roact.createElement(Pane, {
				LayoutOrder = 1,
				Size = UDim2.fromOffset(40, 40)
			}, {
				Image = Roact.createElement(Image, {
					AnchorPoint = Vector2.new(0.5, 0.5),
					Position = UDim2.fromScale(0.5, 0.5),
					Size = UDim2.fromOffset(16, 16),
					Style = {
						Image = if props.ViewType == ViewTypes.Grid then style.Grid else style.List,
					}
				})
			}),
			Label = Roact.createElement(TextLabel, {
				LayoutOrder = 2,
				Size = UDim2.new(1, -40, 1, 0),
				Text = props.Localization:getText("ViewType", props.ViewType),
				TextXAlignment = Enum.TextXAlignment.Left
			}, {
				Padding = Roact.createElement("UIPadding", {
					PaddingLeft = UDim.new(0, 40),
				}),
			})
		}),
		Slider = if props.ViewType == ViewTypes.Grid then
			Roact.createElement(Slider, {
				AnchorPoint = Vector2.new(0.5, 0.5),
				Disabled = false,
				Value = self.props.MaterialTileSize,
				Min = 60,
				Max = 200,
				LayoutOrder = 2,
				OnValueChanged = self.selectMaterialTileSize,
				Position = UDim2.new(0.5, 0, 0.5, 0),
				Size = UDim2.new(1, 0, 0, 20),
				SnapIncrement = 10,
				VerticalDragTolerance = 300,
			})
			else nil
	})
end

ViewTypeButton = withContext({
	Localization = Localization,
	PluginController = PluginController,
	Stylizer = Stylizer,
})(ViewTypeButton)

return RoactRodux.connect(
	function(state: MainReducer.State)
		return {
			MaterialTileSize = state.MaterialBrowserReducer.MaterialTileSize,
		}
	end,
	function(dispatch)
		return {
			dispatchSetMaterialTileSize = function(size: number)
				dispatch(SetMaterialTileSize(size))
			end,
		}
	end
)(ViewTypeButton)
