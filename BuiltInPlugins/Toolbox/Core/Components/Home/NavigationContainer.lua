--!strict
local FFlagToolboxAssetCategorization = game:GetFastFlag("ToolboxAssetCategorization")
local Plugin = script:FindFirstAncestor("Toolbox")

local Packages = Plugin.Packages
local Framework = require(Packages.Framework)
local Roact = require(Packages.Roact)

local RoactNavigation = require(Plugin.Packages.RoactNavigation)
local Constants = require(Plugin.Core.Util.Constants)

local Dash = Framework.Dash

local HomeView = require(Plugin.Core.Components.Categorization.HomeView)
local ResultsView = require(Plugin.Core.Components.Categorization.ResultsView)
local SubcategoriesView = require(Plugin.Core.Components.Categorization.SubcategoriesView)
local SubcategoriesSwimlaneView = require(Plugin.Core.Components.Categorization.SubcategoriesSwimlaneView)

local function wrapViewForRoactNavigation(pageConstructor)
	return function(props)
		-- TODO : Decide whether to push navigation args into a DevFramework ContextItem
		return RoactNavigation.withNavigation(function(navigation, focused)
			local viewProps = Dash.join(
				{
					navigation = navigation,
					focused = focused,
				},
				props or {},

				-- pull out any initial props stored in state, provide them as props
				Dash.join(navigation.state, {
					key = Dash.None,
					routeName = Dash.None,
				})
			)
			return pageConstructor(viewProps)
		end)
	end
end

-- A list of views we can route to. Add any new navigatable pages here.
local navigationRoutes
if FFlagToolboxAssetCategorization then
	navigationRoutes = {
		[Constants.NAVIGATION.HOME] = wrapViewForRoactNavigation(function(viewProps)
			return Roact.createElement(HomeView, {
				AssetSections = viewProps.AssetSections,
				CategoryName = viewProps.CategoryName,
				OnClickSubcategory = function(subcategoryPath, subcategoryDict, categoryName, sortName)
					viewProps.navigation.push(
						Constants.NAVIGATION.SUBCATEGORY,
						Dash.join(viewProps, {
							CategoryName = categoryName,
							SortName = sortName,
							SubcategoryPath = subcategoryPath,
							SubcategoryDict = subcategoryDict,
							TryOpenAssetConfig = viewProps.TryOpenAssetConfig,
						})
					)
				end,
				OnClickSeeAllSubcategories = function(mySubcategoryDict, categoryName, sortName)
					viewProps.navigation.push(
						Constants.NAVIGATION.ALL_SUBCATEGORIES,
						Dash.join(viewProps, {
							CategoryName = categoryName,
							SortName = sortName,
							SubcategoryDict = mySubcategoryDict,
							TryOpenAssetConfig = viewProps.TryOpenAssetConfig,
						})
					)
				end,
				OnClickSeeAllAssets = function(sectionName, categoryName, sortName, searchTerm)
					viewProps.navigation.push(
						Constants.NAVIGATION.RESULTS,
						Dash.join(viewProps, {
							CategoryName = categoryName,
							SearchTerm = searchTerm,
							SectionName = sectionName,
							SortName = sortName,
							TryOpenAssetConfig = viewProps.TryOpenAssetConfig,
						})
					)
				end,
				SubcategoryDict = viewProps.SubcategoryDict,
				SortName = viewProps.SortName,
				Size = UDim2.new(1, 0, 1, 0),
				TryOpenAssetConfig = viewProps.TryOpenAssetConfig,
				MaxWidth = viewProps.MaxWidth,
			})
		end),
		[Constants.NAVIGATION.ALL_SUBCATEGORIES] = wrapViewForRoactNavigation(function(viewProps)
			local params = viewProps.params
			local categoryName = params and params.CategoryName
			local sortName = params and params.SortName
			local subcategoryDict = params and params.SubcategoryDict
			local tryOpenAssetConfig = params and params.TryOpenAssetConfig

			return Roact.createElement(SubcategoriesView, {
				CategoryName = categoryName,
				OnClickBack = function()
					viewProps.navigation.popToTop()
				end,
				OnClickSubcategory = function(subcategoryPath, mySubcategoryDict, myCategoryName, mySortName)
					viewProps.navigation.push(
						Constants.NAVIGATION.SUBCATEGORY,
						Dash.join(viewProps, {
							CategoryName = myCategoryName,
							SortName = mySortName,
							SubcategoryPath = subcategoryPath,
							SubcategoryDict = mySubcategoryDict,
							TryOpenAssetConfig = tryOpenAssetConfig,
						})
					)
				end,
				OnClickSeeAllAssets = function(sectionName, myCategoryName, mySortName, searchTerm)
					viewProps.navigation.push(
						Constants.NAVIGATION.RESULTS,
						Dash.join(viewProps, {
							CategoryName = myCategoryName,
							SearchTerm = searchTerm,
							SectionName = sectionName,
							SortName = mySortName,
							TryOpenAssetConfig = viewProps.TryOpenAssetConfig,
						})
					)
				end,
				SortName = sortName,
				Size = UDim2.new(1, 0, 1, 0),
				SubcategoryDict = subcategoryDict,
				TryOpenAssetConfig = tryOpenAssetConfig,
			})
		end),
		[Constants.NAVIGATION.SUBCATEGORY] = wrapViewForRoactNavigation(function(viewProps)
			local params = viewProps.params
			local categoryName = params and params.CategoryName
			local sortName = params and params.SortName
			local subcategoryDict = params and params.SubcategoryDict
			local subcategoryPath = params and params.SubcategoryPath
			local tryOpenAssetConfig = params and params.TryOpenAssetConfig

			return Roact.createElement(SubcategoriesSwimlaneView, {
				CategoryName = categoryName,
				MaxWidth = viewProps.MaxWidth,
				OnClickBack = function()
					viewProps.navigation.popToTop()
				end,
				OnClickSeeAllAssets = function(sectionName, myCategoryName, mySortName, searchTerm)
					viewProps.navigation.push(
						Constants.NAVIGATION.RESULTS,
						Dash.join(viewProps, {
							CategoryName = myCategoryName,
							SearchTerm = searchTerm,
							SectionName = sectionName,
							SortName = mySortName,
							TryOpenAssetConfig = tryOpenAssetConfig,
						})
					)
				end,
				Size = UDim2.new(1, 0, 1, 0),
				SortName = sortName,
				SubcategoryDict = subcategoryDict,
				SubcategoryPath = subcategoryPath,
				TryOpenAssetConfig = tryOpenAssetConfig,
			})
		end),
		[Constants.NAVIGATION.RESULTS] = wrapViewForRoactNavigation(function(viewProps)
			local params = viewProps.params
			local categoryName = params and params.CategoryName
			local sectionName = params and params.SectionName
			local searchTerm = params and params.SearchTerm
			local sortName = params and params.SortName
			local tryOpenAssetConfig = params and params.TryOpenAssetConfig

			return Roact.createElement(ResultsView, {
				CategoryName = categoryName,
				OnClickBack = function()
					viewProps.navigation.popToTop()
				end,
				SearchTerm = searchTerm,
				SectionName = sectionName,
				Size = UDim2.new(1, 0, 1, 0),
				SortName = sortName,
				TryOpenAssetConfig = tryOpenAssetConfig,
			})
		end),
	}

else
	navigationRoutes = {
		-- navigationRoutes cannot be empty, otherwise it will throw, so create a dummy route
		defaultRoute = wrapViewForRoactNavigation(function(viewProps)
			return Roact.createElement("Frame")
		end),
	}

end

local NavigationContainer = Roact.PureComponent:extend("NavigationContainer")

function NavigationContainer:render()
	local homeProps = self.props

	local rootNavigator = RoactNavigation.createStackNavigator({
		initialRouteName = Constants.NAVIGATION.HOME,
		initialRouteParams = homeProps,
		routes = navigationRoutes,
	})

	return Roact.createElement(RoactNavigation.createAppContainer(rootNavigator))
end

return NavigationContainer
