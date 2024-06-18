-- Generated with Unluau (https://github.com/valencefun/unluau)
local var0 = script.Parent.Parent.Parent.Parent
local var1 = require(var0.Packages.Roact)
local var2 = require(var0.Packages.Framework).UI.SearchBar
local var3 = require(var0.Src.Thunks.Watch.FilterWatchDataThunk)
local var4 = var1.PureComponent:extend("SearchBarField")
function var4.render(arg1)
   local var0 = arg1.props
   local var79 = {}
   var79.ShowSearchIcon = true
   var79.ShowSearchButton = false
   var79.OnTextChanged = var0.onFilterTextChanged
   var79.OnSearchRequested = var0.onSearchRequested
   var79.LayoutOrder = var0.LayoutOrder
   var79.Size = var0.Size
   var79.SearchTerm = var0.SearchTerm
   return var1.createElement(var2, var79)
end

var4 = require(var0.Packages.RoactRodux).connect(function(arg1, arg2)
   local var0 = {}
   var0.SearchTerm = arg1.Watch.filterText
   return var0
end, function(arg1)
   local var0 = {}
   function var0.onFilterTextChanged(arg1)
      local var0 = arg1.props
      local var101 = {}
      var101.ShowSearchIcon = true
      var101.ShowSearchButton = false
      var101.OnTextChanged = var0.onFilterTextChanged
      var101.OnSearchRequested = var0.onSearchRequested
      var101.LayoutOrder = var0.LayoutOrder
      var101.Size = var0.Size
      var101.SearchTerm = var0.SearchTerm
      return var1.createElement(var2, var101)
   end
   
   function var0.onSearchRequested(arg1, arg2)
      local var0 = {}
      var0.SearchTerm = arg1.Watch.filterText
      return var0
   end
   
   return var0
end)(var4)
return var4
