-- Generated with Unluau (https://github.com/valencefun/unluau)
local var0 = script.Parent.Parent.Parent.Parent
local var1 = require(var0.Packages.Roact)
local var2 = require(var0.Packages.Framework).UI.SearchBar
local var3 = require(var0.Src.Thunks.Watch.FilterWatchDataThunk)
local var4 = var1.PureComponent:extend("SearchBarField")
function var4.render(arg1)
   local var0 = arg1.props
   local var34 = {}
   var34.ShowSearchIcon = true
   var34.ShowSearchButton = false
   var34.OnTextChanged = var0.onFilterTextChanged
   var34.OnSearchRequested = var0.onSearchRequested
   var34.LayoutOrder = var0.LayoutOrder
   var34.Size = var0.Size
   var34.SearchTerm = var0.SearchTerm
   return var1.createElement(var2, var34)
end

var4 = require(var0.Packages.RoactRodux).connect(function(arg1, arg2)
   local var0 = {}
   var0.SearchTerm = arg1.Watch.filterText
   return var0
end, function(arg1)
   local var0 = {}
   function var0.onFilterTextChanged(arg1)
      local var0 = arg1.props
      local var56 = {}
      var56.ShowSearchIcon = true
      var56.ShowSearchButton = false
      var56.OnTextChanged = var0.onFilterTextChanged
      var56.OnSearchRequested = var0.onSearchRequested
      var56.LayoutOrder = var0.LayoutOrder
      var56.Size = var0.Size
      var56.SearchTerm = var0.SearchTerm
      return var1.createElement(var2, var56)
   end
   
   function var0.onSearchRequested(arg1, arg2)
      local var0 = {}
      var0.SearchTerm = arg1.Watch.filterText
      return var0
   end
   
   return var0
end)(var4)
return var4
