local Plugin = script.Parent.Parent.Parent.Parent
local _Types = require(Plugin.Src.Types)
local Roact = require(Plugin.Packages.Roact)
local RoactRodux = require(Plugin.Packages.RoactRodux)
local Framework = require(Plugin.Packages.Framework)

local join = Framework.Dash.join
local deepEqual = Framework.Util.deepEqual

local ContextServices = Framework.ContextServices
local withContext = ContextServices.withContext
local Analytics = ContextServices.Analytics
local Localization = ContextServices.Localization

local UI = Framework.UI
local TreeView = UI.TreeView

local Actions = Plugin.Src.Actions
local SetPath = require(Actions.SetPath)

local Util = Plugin.Src.Util
local getCategories = require(Util.getCategories)

local Controllers = Plugin.Src.Controllers
local MaterialServiceController = require(Controllers.MaterialServiceController)

local getFFlagMaterialManagerSidebarExpansion = require(Plugin.Src.Flags.getFFlagMaterialManagerSidebarExpansion)
local getFFlagMaterialManagerAddAnalyticsCategories = require(Plugin.Src.Flags.getFFlagMaterialManagerAddAnalyticsCategories)

local SideBar = Roact.PureComponent:extend("SideBar")

export type Props = {
	ZIndex: number?,
	Size: UDim2?,
}

type _Props = Props & {
	Analytics: any,
	Path: _Types.Path,
	dispatchSetPath: (path: _Types.Path) -> (),
	Localization: any,
	MaterialServiceController: any,
	Stylizer: any,
}

type _state = {
	Expansion: _Types.Map<any, boolean>,
	Selection: _Types.Map<any, boolean>,
	lastPath: _Types.Path,
}

function SideBar:updateSelection()
	local props: _Props = self.props

	if #props.Path ~= 0 and self.state.lastPath ~= props.Path then
		local parentCategories = {}

		local function recurseCategoriesByChildren(category, parent, path)
			table.insert(parentCategories, parent)

			for key, value in pairs(category) do
				if value.path and deepEqual(value.path, path) then
					self.currentCategory = value
				elseif value.children and next(self.currentCategory) == nil then
					recurseCategoriesByChildren(value.children, value, path)
				end
			end

			if next(self.currentCategory) == nil then
				table.remove(parentCategories, #parentCategories)
			end
		end

		recurseCategoriesByChildren(self.categories, {}, props.Path)

		if
			next(parentCategories)
			and self.currentCategory.path
			and not deepEqual(self.categories, parentCategories)
		then
			local newSelection = {}
			local newExpansion = {}

			for _, subCategory in ipairs(parentCategories) do
				newExpansion[subCategory] = true
			end

			newSelection[self.currentCategory] = true

			-- Update only if new
			if not deepEqual(self.state.Selection, newSelection) then
				self:setState(function(state)
					return {
						Expansion = join(state.Expansion, newExpansion),
						Selection = newSelection,
					}
				end)
			end
		end

		self.currentCategory = {}
		self:setState({
			lastPath = props.Path,
		})
	end
end

function SideBar:init()
	self.currentCategory = {}

	self.onExpansionChange = function(newExpansion)
		self:setState(function(state)
			return {
				Expansion = join(state.Expansion, newExpansion),
			}
		end)
	end

	self.onSelectionChange = function(newSelection)
		local props: _Props = self.props

		for key, value in pairs(newSelection) do
			props.MaterialServiceController:setPath(key.path)
		end
		if getFFlagMaterialManagerAddAnalyticsCategories() then
			props.Analytics:report("clickOnCategoriesOpen")
		end
		self:setState({
			Selection = newSelection,
		})
	end

	self.state = {
		Expansion = {},
		Selection = {},
		lastPath = {},
	}
end

function SideBar:didMount()
	local props: _Props = self.props
	local localization = props.Localization

	local rootCategory = props.MaterialServiceController:getRootCategory()

	if not self.categories then
		self.categories = getCategories(rootCategory, localization)
		local allCategory = self.categories[1]
		self:setState({
			Expansion = if getFFlagMaterialManagerSidebarExpansion() then{
				[allCategory] = true,
			} else nil,
			Selection = {
				[allCategory] = true,
			},
		})
	end

	self:updateSelection()
end

function SideBar:didUpdate()
	self:updateSelection()
end

function SideBar:render()
	local props: _Props = self.props
	local state: _state = self.state

	local size = props.Size
	local zIndex = props.ZIndex

	return Roact.createElement(TreeView, {
		Size = size,
		ZIndex = zIndex,
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
	MaterialServiceController = MaterialServiceController,
})(SideBar)

return RoactRodux.connect(
	function(state, props)
		return {
			Path = state.MaterialBrowserReducer.Path,
		}
	end,
	function(dispatch)
		return {
			dispatchSetPath = function(path)
				dispatch(SetPath(path))
			end,
		}
	end
)(SideBar)
