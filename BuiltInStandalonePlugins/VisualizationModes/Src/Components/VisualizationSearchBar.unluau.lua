-- Generated with Unluau (https://github.com/valencefun/unluau)
local var0 = script:FindFirstAncestor("VisualizationModes")
local var1 = require(var0.Packages.Framework)
local var2 = require(var0.Packages.React)
local var3 = require(var0.Src.Hooks.useFuzzySearch)
local var4 = var1.ContextServices
local var5 = var1.UI.SearchBar
return function(arg1)
   local var28 = {}
   var28.BackgroundTransparency = 1
   var28.LayoutOrder = arg1.LayoutOrder
   var28.Size = UDim2.new(1, 65531, 0, 32)
   local var37 = {}
   local var41 = {}
   var41.PlaceholderText = var4.Localization:use():getText("SearchBar", "Search")
   var41.ShowSearchIcon = true
   var41.ShowSearchButton = false
   var41.ShowFilterButton = false
   var41.IncrementalTextSearch = true
   var41.IncrementalTextSearchDelay = 5
   var41.SearchTerm = arg1.FuzzySearch.searchText
   var41.OnSearchRequested = arg1.FuzzySearch.setSearchText
   var37.SearchBar = var2.createElement(var5, var41)
   local var59 = {}
   var59.PaddingRight = UDim.new(0, 5)
   var37.UIPadding = var2.createElement("UIPadding", var59)
   return var2.createElement("Frame", var28, var37)
end
