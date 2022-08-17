--!strict
local FFlagToolboxUseQueryForCategories2 = game:GetFastFlag("ToolboxUseQueryForCategories2")
local FFlagToolboxIncludeSearchSource = game:GetFastFlag("ToolboxIncludeSearchSource")

local Plugin = script:FindFirstAncestor("Toolbox")

local Packages = Plugin.Packages
local Framework = require(Packages.Framework)
local Roact = require(Packages.Roact)
local RoactRodux = require(Packages.RoactRodux)

local RoactNavigation = require(Plugin.Packages.RoactNavigation)
local Constants = require(Plugin.Core.Util.Constants)
local ContextServices = Framework.ContextServices
local Category = require(Plugin.Core.Types.Category)

local Dash = Framework.Dash

local AssetLogicWrapper = require(Plugin.Core.Components.AssetLogicWrapper)
local HomeView = require(Plugin.Core.Components.Categorization.HomeView)
local AudioHomeView = require(Plugin.Core.Components.AudioHomeView.AudioWrapper)
local ResultsView = require(Plugin.Core.Components.Categorization.ResultsView)
local SubcategoriesView = require(Plugin.Core.Components.Categorization.SubcategoriesView)
local SubcategoriesSwimlaneView = require(Plugin.Core.Components.Categorization.SubcategoriesSwimlaneView)
local NavigationContext = require(Plugin.Core.ContextServices.NavigationContext)
local AssetAnalyticsContextItem = require(Plugin.Core.Util.Analytics.AssetAnalyticsContextItem)
local GetPageInfoAnalyticsContextInfo = require(Plugin.Core.Thunks.GetPageInfoAnalyticsContextInfo)

local function wrapViewForRoactNavigation(pageConstructor)
	return function(props)
		local NavWrapper = Roact.PureComponent:extend("NavWrapper")
		function NavWrapper:init(navProps)
			self.logPageView = function(searchCategory: string, pathName: string?)
				local navContext = navProps.NavigationContext
				local analytics = navProps.AssetAnalytics:get()
				local getPageInfoAnalyticsContextInfo = navProps.getPageInfoAnalyticsContextInfo

				if getPageInfoAnalyticsContextInfo then
					local analyticsContext = getPageInfoAnalyticsContextInfo()
					local searchID = analyticsContext.searchId
					local navBreadcrumbs = navContext:getBreadcrumbRoute()
					local toolboxTab = analyticsContext.toolboxTab
					local assetType = analyticsContext.currentCategory
					analytics:logPageView(searchID, searchCategory, pathName, navBreadcrumbs, toolboxTab, assetType)
				end
			end

			self.navigateTo = function(routeName: string, searchCategory: string, pathName: string?, props: any)
				local navContext = navProps.NavigationContext
				self.logPageView(searchCategory, pathName)
				navContext:push(routeName, pathName, props)
			end

			self.navigateGoBack = function()
				local navContext = navProps.NavigationContext
				local analytics = navProps.AssetAnalytics:get()
				local getPageInfoAnalyticsContextInfo = navProps.getPageInfoAnalyticsContextInfo

				if getPageInfoAnalyticsContextInfo then
					local analyticsContext = getPageInfoAnalyticsContextInfo()
					local searchID = analyticsContext.searchId
					local navBreadcrumbs = navContext:getBreadcrumbRoute()
					local searchCategory = navBreadcrumbs[2]
					local pathName = navContext:getCurrentPath()
					local toolboxTab = analyticsContext.toolboxTab
					local assetType = analyticsContext.currentCategory
					analytics:logGoBack(searchID, searchCategory, pathName, navBreadcrumbs, toolboxTab, assetType)
				end

				navContext:popToTop()
			end
		end

		function NavWrapper:render()
			return RoactNavigation.withNavigation(function(navigation, focused)
				-- update the unified navigation
				local navContext = self.props.NavigationContext
				navContext:updateNavigation(navigation)

				local viewProps = Dash.join(
					{
						focused = focused,
						navigateTo = self.navigateTo,
						navigateGoBack = self.navigateGoBack,
						logPageView = self.logPageView,
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

		local function mapDispatchToProps(dispatch)
			return {
				getPageInfoAnalyticsContextInfo = function()
					return dispatch(GetPageInfoAnalyticsContextInfo())
				end,
			}
		end

		NavWrapper = ContextServices.withContext({
			AssetAnalytics = AssetAnalyticsContextItem,
			NavigationContext = NavigationContext,
		})(NavWrapper)

		NavWrapper = RoactRodux.connect(nil, mapDispatchToProps)(NavWrapper)
		return Roact.createElement(NavWrapper, props)
	end
end

local function getAssetLogicWrapperProps(viewProps)
	local props = viewProps.params or viewProps
	return {
		CanInsertAsset = props.CanInsertAsset,
		OnAssetPreviewButtonClicked = props.OnAssetPreviewButtonClicked,
		TryInsert = props.TryInsert,
		TryOpenAssetConfig = props.TryOpenAssetConfig,
	}
end

-- A list of views we can route to. Add any new navigatable pages here.
local navigationRoutes = {
	[Constants.NAVIGATION.HOME] = wrapViewForRoactNavigation(function(viewProps)
		local component = if viewProps.AssetType == Enum.AssetType.Audio then AudioHomeView else HomeView

		return Roact.createElement(
			component,
			Dash.join(getAssetLogicWrapperProps(viewProps), {
				AssetSections = viewProps.AssetSections,
				CategoryName = viewProps.CategoryName,
				OnClickSubcategory = function(
					subcategoryName,
					subcategoryDict,
					searchTerm,
					categoryName,
					sortName,
					queryParams
				)
					if subcategoryDict.childCount == 0 then
						viewProps.navigateTo(
							Constants.NAVIGATION.RESULTS,
							Constants.HOMEVIEW_SEARCH_CATEGORY,
							subcategoryName,
							Dash.join(viewProps, getAssetLogicWrapperProps(viewProps), {
								CategoryName = categoryName,
								SearchTerm = if FFlagToolboxUseQueryForCategories2 then nil else searchTerm,
								SortName = sortName,
								QueryParams = if FFlagToolboxUseQueryForCategories2 then queryParams else nil,
							})
						)
					else
						viewProps.navigateTo(
							Constants.NAVIGATION.SUBCATEGORY,
							Constants.HOMEVIEW_SEARCH_CATEGORY,
							subcategoryName,
							Dash.join(viewProps, getAssetLogicWrapperProps(viewProps), {
								CategoryName = categoryName,
								SortName = sortName,
								SubcategoryPath = { subcategoryName },
								SubcategoryDict = subcategoryDict.children,
								TopKeywords = viewProps.TopKeywords,
							})
						)
					end
				end,
				OnClickSeeAllSubcategories = function(mySubcategoryDict, categoryName, sortName)
					viewProps.navigateTo(
						Constants.NAVIGATION.ALL_SUBCATEGORIES,
						Constants.HOMEVIEW_SEARCH_CATEGORY,
						Constants.NAVIGATION.ALL_SUBCATEGORIES,
						Dash.join(viewProps, getAssetLogicWrapperProps(viewProps), {
							CategoryName = categoryName,
							SortName = sortName,
							SubcategoryDict = mySubcategoryDict,
						})
					)
				end,
				OnClickSeeAllAssets = function(sectionName, categoryName, sortName, searchTerm, navigation, queryParams)
					viewProps.navigateTo(
						Constants.NAVIGATION.RESULTS,
						sectionName,
						sectionName,
						Dash.join(viewProps, getAssetLogicWrapperProps(viewProps), {
							CategoryName = categoryName,
							SearchTerm = searchTerm,
							SectionName = sectionName,
							SortName = sortName,
							QueryParams = if FFlagToolboxUseQueryForCategories2 then queryParams else nil,
						})
					)
				end,
				SubcategoryDict = viewProps.SubcategoryDict,
				SortName = viewProps.SortName,
				Size = UDim2.new(1, 0, 1, 0),
				TopKeywords = viewProps.TopKeywords,
				MaxWidth = viewProps.MaxWidth,
				LogPageView = viewProps.logPageView,
			})
		)
	end),
	[Constants.NAVIGATION.ALL_SUBCATEGORIES] = wrapViewForRoactNavigation(function(viewProps)
		local params = viewProps.params
		local categoryName = params and params.CategoryName
		local sortName = params and params.SortName
		local subcategoryDict = params and params.SubcategoryDict

		return Roact.createElement(
			SubcategoriesView,
			Dash.join(getAssetLogicWrapperProps(viewProps), {
				CategoryName = categoryName,
				OnClickBack = function()
					viewProps:navigateGoBack()
				end,
				OnClickSubcategory = function(subcategoryPath, mySubcategoryDict, myCategoryName, mySortName)
					viewProps.navigateTo(
						Constants.NAVIGATION.SUBCATEGORY,
						Constants.HOMEVIEW_SEARCH_CATEGORY,
						subcategoryPath[#subcategoryPath],
						Dash.join(viewProps, getAssetLogicWrapperProps(viewProps), {
							CategoryName = myCategoryName,
							SortName = mySortName,
							SubcategoryPath = subcategoryPath,
							SubcategoryDict = mySubcategoryDict,
						})
					)
				end,
				OnClickSeeAllAssets = function(sectionName, myCategoryName, mySortName, searchTerm, queryParams)
					viewProps.navigateTo(
						Constants.NAVIGATION.RESULTS,
						Constants.HOMEVIEW_SEARCH_CATEGORY,
						sectionName,
						Dash.join(viewProps, getAssetLogicWrapperProps(viewProps), {
							CategoryName = myCategoryName,
							SearchTerm = if FFlagToolboxUseQueryForCategories2 then nil else searchTerm,
							SectionName = sectionName,
							SortName = mySortName,
							SearchSource = if FFlagToolboxIncludeSearchSource
								then Constants.SEARCH_SOURCE.CATEGORY
								else nil,
							QueryParams = if FFlagToolboxUseQueryForCategories2 then queryParams else nil,
						})
					)
				end,
				SortName = sortName,
				Size = UDim2.new(1, 0, 1, 0),
				SubcategoryDict = subcategoryDict,
			})
		)
	end),
	[Constants.NAVIGATION.SUBCATEGORY] = wrapViewForRoactNavigation(function(viewProps)
		local params = viewProps.params
		local categoryName = params and params.CategoryName
		local sortName = params and params.SortName
		local subcategoryDict = params and params.SubcategoryDict
		local subcategoryPath = params and params.SubcategoryPath

		return Roact.createElement(
			SubcategoriesSwimlaneView,
			Dash.join(getAssetLogicWrapperProps(viewProps), {
				CategoryName = categoryName,
				MaxWidth = viewProps.MaxWidth,
				OnClickBack = function()
					viewProps:navigateGoBack()
				end,
				OnClickSeeAllAssets = function(sectionName, myCategoryName, mySortName, searchTerm, queryParams)
					viewProps.navigateTo(
						Constants.NAVIGATION.RESULTS,
						Constants.HOMEVIEW_SEARCH_CATEGORY,
						sectionName,
						Dash.join(viewProps, getAssetLogicWrapperProps(viewProps), {
							CategoryName = myCategoryName,
							SearchTerm = searchTerm,
							SortName = mySortName,
							SearchSource = if FFlagToolboxIncludeSearchSource
								then Constants.SEARCH_SOURCE.CATEGORY
								else nil,
							QueryParams = if FFlagToolboxUseQueryForCategories2 then queryParams else nil,
						})
					)
				end,
				Size = UDim2.new(1, 0, 1, 0),
				SortName = sortName,
				SubcategoryDict = subcategoryDict,
				SubcategoryPath = subcategoryPath,
			})
		)
	end),
	[Constants.NAVIGATION.RESULTS] = wrapViewForRoactNavigation(function(viewProps)
		local params = viewProps.params
		local categoryName = params and params.CategoryName
		local sectionName = params and params.SectionName
		local searchTerm = params and params.SearchTerm
		local sortName = params and params.SortName
		local searchSource = FFlagToolboxIncludeSearchSource and params and params.SearchSource
		local queryParams = if FFlagToolboxUseQueryForCategories2 and params then params.QueryParams else nil

		return Roact.createElement(
			ResultsView,
			Dash.join(getAssetLogicWrapperProps(viewProps), {
				CategoryName = categoryName,
				OnClickBack = function()
					viewProps:navigateGoBack()
				end,
				SearchTerm = searchTerm,
				SectionName = sectionName,
				Size = UDim2.new(1, 0, 1, 0),
				SortName = sortName,
				SearchSource = searchSource,
				QueryParams = if FFlagToolboxUseQueryForCategories2 then queryParams else nil,
			})
		)
	end),
}

local NavigationContainer = Roact.PureComponent:extend("NavigationContainer")

function NavigationContainer:render()
	local homeProps = self.props
	local initialRoute = Constants.NAVIGATION.HOME

	local rootNavigator = RoactNavigation.createStackNavigator({
		initialRouteName = initialRoute,
		initialRouteParams = homeProps,
		routes = navigationRoutes,
	})

	return ContextServices.provide({
		NavigationContext.new(initialRoute),
	}, Roact.createElement(RoactNavigation.createAppContainer(rootNavigator)))
end

return AssetLogicWrapper(NavigationContainer)
