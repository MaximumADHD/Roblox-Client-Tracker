local Plugin = script.Parent.Parent.Parent.Parent

local Packages = Plugin.Packages
local Roact = require(Packages.Roact)
local RoactRodux = require(Packages.RoactRodux)
local Framework = require(Packages.Framework)

local Util = Plugin.Core.Util
local ContextGetter = require(Util.ContextGetter)
local Constants = require(Util.Constants)

local getNetwork = ContextGetter.getNetwork

local Requests = Plugin.Core.Networking.Requests
local GetHomeConfigurationRequest = require(Requests.GetHomeConfigurationRequest)

local ContextServices = Framework.ContextServices
local withContext = ContextServices.withContext

local Category = require(Plugin.Core.Types.Category)
local HomeTypes = require(Plugin.Core.Types.HomeTypes)
local Sort = require(Plugin.Core.Types.Sort)

local HomeView = require(Plugin.Core.Components.Categorization.HomeView)
local NavigationContainer = require(Plugin.Core.Components.Home.NavigationContainer)

local FrameworkUtil = require(Packages.Framework).Util
local deepEqual = FrameworkUtil.deepEqual

local HOME_CONFIG_CATEGORIES_SECTION_NAME = "categories"

local HomeWrapper = Roact.PureComponent:extend("HomeWrapper")

HomeWrapper.defaultProps = {
	CategoryName = Category.FREE_MODELS.name,
	SortName = Sort.getDefaultSortNameForCategory(Category.FREE_MODELS.name),
}

function HomeWrapper:init(props)
	for _, assetType in ipairs(HomeTypes.ENABLED_ASSET_TYPES) do
		if props.homeConfiguration[assetType.Name] == nil then
			props.getHomeConfigurationRequest(getNetwork(self), assetType, props.Locale)
		end
	end
end

function HomeWrapper:shouldUpdate(nextProps, nextState)
	local props = self.props
	local assetType = props.AssetType
	local homeConfiguration = props.homeConfiguration

	return assetType ~= nextProps.AssetType or not deepEqual(homeConfiguration, nextProps.homeConfiguration)
end

function HomeWrapper:render()
	local props = self.props

	local assetType = props.AssetType
	local categoryName = props.CategoryName
	local homeConfigurationForAssetType = props.homeConfiguration[assetType.Name]
	local sortName = props.SortName
	local theme = props.Stylizer
	local tryOpenAssetConfig = props.TryOpenAssetConfig

	if homeConfigurationForAssetType == nil then
		-- Waiting for home configuration to load
		return nil
	end

	local assetSections = {}
	local subcategoryDict = {}
	if homeConfigurationForAssetType then
		for i, section: HomeTypes.HomeConfigurationSection in pairs(homeConfigurationForAssetType.sections) do
			if section.name == HOME_CONFIG_CATEGORIES_SECTION_NAME and section.subcategory ~= nil then
				subcategoryDict = section.subcategory.children
			else
				table.insert(assetSections, section)
			end
		end
	end

	return Roact.createElement("Frame", {
		BackgroundColor3 = theme.backgroundColor,
		BorderSizePixel = 0,
		Position = props.Position,
		Size = props.Size,
	}, {
		Navigation = Roact.createElement(NavigationContainer, {
			AssetType = assetType,
			CategoryName = categoryName,
			Config = homeConfigurationForAssetType,
			MaxWidth = props.MaxWidth,
			SortName = sortName,
			-- HomeView props
			AssetSections = assetSections,
			SubcategoryDict = subcategoryDict,
			TryOpenAssetConfig = tryOpenAssetConfig,
		}),
	})
end

HomeWrapper = withContext({
	Stylizer = ContextServices.Stylizer,
})(HomeWrapper)

local function mapStateToProps(state, props)
	state = state or {}

	return {
		homeConfiguration = state.homeConfiguration or {},
	}
end

local function mapDispatchToProps(dispatch)
	return {
		getHomeConfigurationRequest = function(networkInterface, assetType: Enum.AssetType, locale: string?)
			dispatch(GetHomeConfigurationRequest(networkInterface, assetType, locale))
		end,
	}
end

return RoactRodux.connect(mapStateToProps, mapDispatchToProps)(HomeWrapper)
