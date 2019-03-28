--[[
	Header of the toolbox

	Props:
		Categories categories
		number categoryIndex
		string searchTerm
		Groups groups
		number groupIndex

		number maxWidth

		callback onCategorySelected(number index)
		callback onSearchRequested(string searchTerm)
		callback onGroupSelected()
]]

local Plugin = script.Parent.Parent.Parent

local Libs = Plugin.Libs
local Roact = require(Libs.Roact)
local RoactRodux = require(Libs.RoactRodux)

local Analytics = require(Plugin.Core.Util.Analytics.Analytics)
local Constants = require(Plugin.Core.Util.Constants)
local ContextGetter = require(Plugin.Core.Util.ContextGetter)
local ContextHelper = require(Plugin.Core.Util.ContextHelper)
local DebugFlags = require(Plugin.Core.Util.DebugFlags)
local PageInfoHelper = require(Plugin.Core.Util.PageInfoHelper)

local Category = require(Plugin.Core.Types.Category)

local getNetwork = ContextGetter.getNetwork
local getSettings = ContextGetter.getSettings
local withTheme = ContextHelper.withTheme
local withLocalization = ContextHelper.withLocalization

local DropdownMenu = require(Plugin.Core.Components.DropdownMenu)
local SearchBar = require(Plugin.Core.Components.SearchBar.SearchBar)

local RequestSearchRequest = require(Plugin.Core.Networking.Requests.RequestSearchRequest)
local SelectCategoryRequest = require(Plugin.Core.Networking.Requests.SelectCategoryRequest)
local SelectGroupRequest = require(Plugin.Core.Networking.Requests.SelectGroupRequest)

local Header = Roact.PureComponent:extend("Header")

function Header:init()
	local networkInterface = getNetwork(self)
	local settings = getSettings(self)

	self.onCategorySelected = function(index)
		if self.props.categoryIndex ~= index then
			Analytics.onCategorySelected(
				PageInfoHelper.getCategory(self.props.categories, self.props.categoryIndex),
				PageInfoHelper.getCategory(self.props.categories, index)
			)

			self.props.selectCategory(networkInterface, settings, index)
		end
	end

	self.onGroupSelected = function(index)
		if self.props.groupIndex ~= index then
			self.props.selectGroup(networkInterface, index)
		end
	end

	self.onSearchRequested = function(searchTerm)
		if type(searchTerm) ~= "string" and DebugFlags.shouldDebugWarnings() then
			warn(("Toolbox onSearchRequested searchTerm = %s is not a string"):format(tostring(searchTerm)))
		end

		Analytics.onTermSearched(PageInfoHelper.getCategory(self.props.categories, self.props.categoryIndex), searchTerm)

		self.props.requestSearch(networkInterface, settings, searchTerm)
	end
end

function Header:render()
	return withTheme(function(theme)
		return withLocalization(function(localization, localizedContent)
			local props = self.props

			local categories = localization:getLocalizedCategores(props.categories)
			local categoryIndex = props.categoryIndex or 0
			local onCategorySelected = self.onCategorySelected

			local searchTerm = props.searchTerm
			local onSearchRequested = self.onSearchRequested

			local groups = props.groups
			local groupIndex = props.groupIndex
			local onGroupSelected = self.onGroupSelected

			local maxWidth = props.maxWidth or 0
			local searchBarWidth = math.max(100, maxWidth
					- (2 * Constants.HEADER_OUTER_PADDING)
					- Constants.HEADER_CATEGORY_DROPDOWN_WIDTH
					- Constants.HEADER_INNER_PADDING)

			local isGroupCategory = Category.categoryIsGroupAsset(props.categoryIndex)

			local headerTheme = theme.header

			return Roact.createElement("ImageButton", {
				Position = UDim2.new(0, 0, 0, 0),
				Size = UDim2.new(1, 0, 0, Constants.HEADER_HEIGHT),
				BackgroundColor3 = headerTheme.backgroundColor,
				BorderColor3 = headerTheme.borderColor,
				ZIndex = 2,
				AutoButtonColor = false,
			},{
				UIPadding = Roact.createElement("UIPadding", {
					PaddingBottom = UDim.new(0, Constants.HEADER_OUTER_PADDING),
					PaddingLeft = UDim.new(0, Constants.HEADER_OUTER_PADDING),
					PaddingRight = UDim.new(0, Constants.HEADER_OUTER_PADDING),
					PaddingTop = UDim.new(0, Constants.HEADER_OUTER_PADDING),
				}),

				UIListLayout = Roact.createElement("UIListLayout", {
					FillDirection = Enum.FillDirection.Horizontal,
					SortOrder = Enum.SortOrder.LayoutOrder,
					Padding = UDim.new(0, Constants.HEADER_INNER_PADDING),
				}),

				CategoryMenu = Roact.createElement(DropdownMenu, {
					Position = UDim2.new(0, 0, 0, 0),
					Size = UDim2.new(0, Constants.HEADER_CATEGORY_DROPDOWN_WIDTH, 1, 0),
					LayoutOrder = 0,
					visibleDropDownCount = 8,
					selectedDropDownIndex = categoryIndex,

					items = categories,
					key = "category",
					onItemClicked = onCategorySelected,
				}),

				SearchBar = not isGroupCategory and Roact.createElement(SearchBar, {
					width = searchBarWidth,
					LayoutOrder = 1,

					searchTerm = searchTerm,
					onSearchRequested = onSearchRequested,
				}),

				GroupMenu = isGroupCategory and Roact.createElement(DropdownMenu, {
					Position = UDim2.new(0, 0, 0, 0),
					Size = UDim2.new(0, searchBarWidth, 1, 0),
					LayoutOrder = 1,
					visibleDropDownCount = 8,
					selectedDropDownIndex = groupIndex,

					items = groups,
					key = "id",
					onItemClicked = onGroupSelected,
				}),
			})
		end)
	end)
end

local function mapStateToProps(state, props)
	state = state or {}

	local pageInfo = state.pageInfo or {}

	return {
		categories = pageInfo.categories or {},
		categoryIndex = pageInfo.categoryIndex or 1,
		searchTerm = pageInfo.searchTerm or "",
		groups = pageInfo.groups or {},
		groupIndex = pageInfo.groupIndex or 0,
	}
end

local function mapDispatchToProps(dispatch)
	return {
		selectCategory = function(networkInterface, settings, categoryIndex)
			dispatch(SelectCategoryRequest(networkInterface, settings, categoryIndex))
		end,

		selectGroup = function(networkInterface, groupIndex)
			dispatch(SelectGroupRequest(networkInterface, groupIndex))
		end,

		requestSearch = function(networkInterface, settings, searchTerm)
			dispatch(RequestSearchRequest(networkInterface, settings, searchTerm))
		end,
	}
end

return RoactRodux.UNSTABLE_connect2(mapStateToProps, mapDispatchToProps)(Header)
