local CorePackages = game:GetService("CorePackages")
local Roact = require(CorePackages.Roact)
local RoactRodux = require(CorePackages.RoactRodux)

local Components = script.Parent.Parent.Parent.Components
local ServerScripts = require(Components.Scripts.ServerScripts)
local UtilAndTab = require(Components.UtilAndTab)

local Actions = script.Parent.Parent.Parent.Actions
local ServerScriptsUpdateSearchFilter = require(Actions.ServerScriptsUpdateSearchFilter)

local Constants = require(script.Parent.Parent.Parent.Constants)
local PADDING = Constants.GeneralFormatting.MainRowPadding

local BOX_NAMES = {
	"Active",
	"Inactive"
}

local MainViewScripts = Roact.PureComponent:extend("MainViewScripts")

function MainViewScripts:init()
	self.onUtilTabHeightChanged = function(utilTabHeight)
		self:setState({
			utilTabHeight = utilTabHeight
		})
	end

	self.onCheckBoxChanged = function(field, newState)
		local update = {
			[field] = newState
		}
		self.props.dispatchServerScriptsUpdateSearchFilter(nil, update)
	end

	self.onSearchTermChanged = function(newSearchTerm)
		self.props.dispatchServerScriptsUpdateSearchFilter(newSearchTerm, {})
	end

	self.utilRef = Roact.createRef()

	self.state = {
		utilTabHeight = 0,
		isClientView = true,
	}
end

function MainViewScripts:didMount()
	local utilSize = self.utilRef.current.Size
	self:setState({
		utilTabHeight = utilSize.Y.Offset
	})
end

function MainViewScripts:didUpdate()
	local utilSize = self.utilRef.current.Size
	if utilSize.Y.Offset ~= self.state.utilTabHeight then
		self:setState({
			utilTabHeight = utilSize.Y.Offset
		})
	end
end

function MainViewScripts:render()
	local size = self.props.size
	local formFactor = self.props.formFactor
	local tabList = self.props.tabList
	local scriptFilters = self.props.serverTypeFilters

	local utilTabHeight = self.state.utilTabHeight

	local searchTerm =  self.props.serverSearchTerm

	local initBoxState = {}
	for i, name in ipairs(BOX_NAMES) do
		local boxState = scriptFilters[name]
		if boxState == nil then
			boxState = true
		end
		initBoxState[i] = {
			name = name,
			state =  boxState,
		}
	end

	return Roact.createElement("Frame", {
		Size = size,
		BackgroundColor3 = Constants.Color.BaseGray,
		BackgroundTransparency = 1,
		LayoutOrder = 3,
	}, {
		UIListLayout = Roact.createElement("UIListLayout", {
			Padding = UDim.new(0, PADDING),
			SortOrder = Enum.SortOrder.LayoutOrder,
		}),

		UtilAndTab = Roact.createElement(UtilAndTab, {
			windowWidth = size.X.Offset,
			formFactor = formFactor,
			tabList = tabList,
			orderedCheckBoxState = initBoxState,
			searchTerm = searchTerm,
			layoutOrder = 1,

			refForParent = self.utilRef,

			onHeightChanged = self.onUtilTabHeightChanged,
			onCheckBoxChanged = self.onCheckBoxChanged,
			onSearchTermChanged = self.onSearchTermChanged,
		}),

		ServerScripts = utilTabHeight > 0  and Roact.createElement(ServerScripts, {
			size = UDim2.new(1, 0, 1, -utilTabHeight),
			searchTerm = searchTerm,
			scriptFilters = scriptFilters,
			layoutOrder = 2,
		}),
	})
end

local function mapStateToProps(state, props)
	return {
		serverSearchTerm = state.ScriptsData.serverSearchTerm,
		serverTypeFilters = state.ScriptsData.serverTypeFilters,
	}
end

local function mapDispatchToProps(dispatch)
	return {
		dispatchServerScriptsUpdateSearchFilter = function(searchTerm, filters)
			dispatch(ServerScriptsUpdateSearchFilter(searchTerm, filters))
		end,
	}
end

return RoactRodux.UNSTABLE_connect2(mapStateToProps, mapDispatchToProps)(MainViewScripts)