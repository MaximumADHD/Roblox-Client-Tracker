local Plugin = script.Parent.Parent.Parent
local _Types = require(Plugin.Src.Types)
local Roact = require(Plugin.Packages.Roact)
local RoactRodux = require(Plugin.Packages.RoactRodux)
local Framework = require(Plugin.Packages.Framework)

local join = Framework.Dash.join

local ContextServices = Framework.ContextServices
local withContext = ContextServices.withContext
local Analytics = ContextServices.Analytics
local Localization = ContextServices.Localization

local Stylizer = Framework.Style.Stylizer

local UI = Framework.UI
local TreeView = UI.TreeView

local Actions = Plugin.Src.Actions
local SetPath = require(Actions.SetPath)

local Util = Plugin.Src.Util
local getCategories = require(Util.getCategories)
local MaterialController = require(Util.MaterialController)

local SideBar = Roact.PureComponent:extend("SideBar")

export type Props = {
	LayoutOrder : number?,
	Size : UDim2?,
}

type _Props = Props & {
	Analytics : any,
	dispatchSetPath : (path : _Types.Path) -> (),
	Localization : any,
	MaterialController : any,
	Stylizer : any,
}

type _Style = {
	AllIconImage : string,
	IconColor : Color3,
	IconSize : UDim2,
}

type _state = {
	Expansion : _Types.Map<any, boolean>,
	Selection : _Types.Map<any, boolean>,
}

function SideBar:init()
	self.onExpansionChange = function(newExpansion)
		self:setState(function(state)
			return {
				Expansion = join(state.Expansion, newExpansion)
			}
		end)
	end

	self.onSelectionChange = function(newSelection)
		local props : _Props = self.props

		for key, value in pairs(newSelection) do
			props.dispatchSetPath(key.path)
		end

		self:setState({
			Selection = newSelection
		})
	end

	self.state = {
		Expansion = {},
		Selection = {},
	}
end

function SideBar:didMount()
	local props : _Props = self.props
	local style : _Style = props.Stylizer.SideBar
	local localization = props.Localization
	local rootCategory = props.MaterialController:getRootCategory()

	if not self.categories then
		self.categories = getCategories(rootCategory, localization)
		local allCategory = {
			icon = {
				ImageColor3 = style.IconColor,
				Image = style.AllIconImage,
				Size = style.IconSize,
			},
			path = {},
			text = localization:getText("Categories", "All"),
		}
		table.insert(self.categories, 1, allCategory)
		self:setState({
			Selection = {
				[allCategory] = true,
			}
		})
	end
end

function SideBar:render()
	local props : _Props = self.props
	local state : _state = self.state

	local size = props.Size
	local layoutOrder = props.LayoutOrder

	return Roact.createElement(TreeView, {
		Size = size,
		LayoutOrder = layoutOrder,
		Expansion = state.Expansion,
		Selection = state.Selection,
		RootItems = self.categories or {},
		OnExpansionChange = self.onExpansionChange,
		OnSelectionChange = self.onSelectionChange,
	})
end

SideBar = withContext({
	Analytics = Analytics,
	Localization = Localization,
	MaterialController = MaterialController,
	Stylizer = Stylizer,
})(SideBar)

return RoactRodux.connect(
	nil,
	function(dispatch)
		return {
			dispatchSetPath = function(path)
				dispatch(SetPath(path))
			end,
		}
	end
)(SideBar)
