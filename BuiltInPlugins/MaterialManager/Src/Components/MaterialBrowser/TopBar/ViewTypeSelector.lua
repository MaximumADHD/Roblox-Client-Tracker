local Plugin = script.Parent.Parent.Parent.Parent.Parent
local _Types = require(Plugin.Src.Types)
local Roact = require(Plugin.Packages.Roact)
local RoactRodux = require(Plugin.Packages.RoactRodux)
local Framework = require(Plugin.Packages.Framework)

local ContextServices = Framework.ContextServices
local withContext = ContextServices.withContext

local Stylizer = Framework.Style.Stylizer

local UI = Framework.UI
local Pane = UI.Pane
local SelectInput = UI.SelectInput

local getViewTypes = require(Plugin.Src.Resources.Constants.getViewTypes)
local MainReducer = require(Plugin.Src.Reducers.MainReducer)
local PluginController = require(Plugin.Src.Controllers.PluginController)
local ViewTypeButton = require(Plugin.Src.Components.MaterialBrowser.TopBar.ViewTypeButton)

local Actions = Plugin.Src.Actions
local SetMenuHover = require(Actions.SetMenuHover)
local SetViewType = require(Actions.SetViewType)
local ViewTypes = getViewTypes()

local ViewTypeSelector = Roact.PureComponent:extend("ViewTypeSelector")

export type Props = {
	LayoutOrder: number?,
}

type _Props = Props & {
	dispatchSetMenuHover: (menuHover: boolean) -> (),
	dispatchSetViewType: (viewType: string) -> (),
	Stylizer: any,
	ViewType: getViewTypes.ViewType,
}

type _Style = {
	Grid: string,
	List: string,
	ViewTypeBackground: Color3,
	ViewTypeSize: UDim2,
}

function ViewTypeSelector:init()
	self.selectViewType = function(item, index)
		self.props.dispatchSetViewType(item)
		self.props.dispatchSetMenuHover(false)

		self.props.PluginController:setViewType(item)
	end

	self.onRenderViewType = function(item, index, activated)
		return Roact.createElement(ViewTypeButton, {
			LayoutOrder = index,
			OnClick = activated,
			ViewType = item :: getViewTypes.ViewType,
		})
	end

	self.onMouseEnter = function()
		self.props.dispatchSetMenuHover(true)
	end

	self.onMouseLeave = function()
		self.props.dispatchSetMenuHover(false)
	end
end

function ViewTypeSelector:render()
	local props: _Props = self.props
	local style: _Style = props.Stylizer.ViewTypeButton

	return Roact.createElement(Pane, {
		LayoutOrder = props.LayoutOrder,
		Size = style.ViewTypeSize,
	}, {
		SelectInput = Roact.createElement(SelectInput, {
			Icons = {
				style.Grid,
				style.List,
			},
			Items = {
				ViewTypes.Grid,
				ViewTypes.List,
			},
			HideText = true,
			OnItemActivated = self.selectViewType,
			OnRenderItem = self.onRenderViewType,
			OnMouseEnter = self.onMouseEnter,
			OnMouseLeave = self.onMouseLeave,
			SelectedIndex = if props.ViewType == ViewTypes.Grid then 1 else 2,
			Size = style.ViewTypeSize,
		}),
	})
end

ViewTypeSelector = withContext({
	PluginController = PluginController,
	Stylizer = Stylizer,
})(ViewTypeSelector)

return RoactRodux.connect(
	function(state: MainReducer.State)
		return {
			ViewType = state.MaterialBrowserReducer.ViewType,
		}
	end,
	function(dispatch)
		return {
			dispatchSetViewType = function(viewType: string)
				dispatch(SetViewType(viewType))
			end,
			dispatchSetMenuHover = function(menuHover: boolean)
				dispatch(SetMenuHover(menuHover))
			end,
		}
	end
)(ViewTypeSelector)
