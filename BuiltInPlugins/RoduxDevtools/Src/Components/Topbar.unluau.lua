-- Generated with Unluau (https://github.com/valencefun/unluau)
local var0 = script.Parent.Parent.Parent
local var1 = require(var0.Src.Types)
local var2 = require(var0.Packages.React)
local var3 = require(var0.Packages.Framework)
local var4 = var3.ContextServices
local var5 = var3.UI
local var6 = var5.Pane
local var7 = var5.IconButton
local var8 = var5.SearchBar
local var9 = var2.PureComponent:extend("Topbar")
local function fun1(arg1)
   local var0 = arg1.props
   local var39 = {}
   var39.Style = "None"
   var39.Size = UDim2.new(1, 0, 0, 32)
   var39.Layout = Enum.FillDirection.Horizontal
   var39.VerticalAlignment = Enum.VerticalAlignment.Center
   var39.HorizontalAlignment = Enum.HorizontalAlignment.Left
   var39.Spacing = 5
   local var51 = {}
   local var55 = {}
   var55.LayoutOrder = 1
   var55.Width = 300
   var55.IncrementalTextSearch = true
   var55.IncrementalTextSearchDelay = 150
   var55.ShowSearchButton = false
   var55.ShowSearchIcon = true
   var55.PlaceholderText = var0.Localization:getText("Topbar", "SearchbarPlaceholder")
   var55.OnSearchRequested = var0.OnSearch
   var51.SearchBar = var2.createElement(var8, var55)
   local var72 = {}
   var72.LayoutOrder = 2
   var72.Size = UDim2.fromScale(0, 1)
   var72.AutomaticSize = Enum.AutomaticSize.X
   var72.LeftIcon = "rbxasset://textures/RoduxDevtools/ClearList.png"
   var72.Text = var0.Localization:getText("Topbar", "ClearList.Text")
   var72.TooltipText = var0.Localization:getText("Topbar", "ClearList.Tooltip")
   if var0.EventCount == 0 then
      local var0 = false
   end
   var72.Disabled = true
   function var72.OnClick()
      if not var0.OnClearList then
      end
      var0.OnClearList()
   end
   
   var51.ClearList = var2.createElement(var7, var72)
   return var2.createElement(var6, var39, var51)
end

function var9.render(arg1)
   local var0 = arg1.props
   local var39 = {}
   var39.Style = "None"
   var39.Size = UDim2.new(1, 0, 0, 32)
   var39.Layout = Enum.FillDirection.Horizontal
   var39.VerticalAlignment = Enum.VerticalAlignment.Center
   var39.HorizontalAlignment = Enum.HorizontalAlignment.Left
   var39.Spacing = 5
   local var51 = {}
   local var55 = {}
   var55.LayoutOrder = 1
   var55.Width = 300
   var55.IncrementalTextSearch = true
   var55.IncrementalTextSearchDelay = 150
   var55.ShowSearchButton = false
   var55.ShowSearchIcon = true
   var55.PlaceholderText = var0.Localization:getText("Topbar", "SearchbarPlaceholder")
   var55.OnSearchRequested = var0.OnSearch
   var51.SearchBar = var2.createElement(var8, var55)
   local var72 = {}
   var72.LayoutOrder = 2
   var72.Size = UDim2.fromScale(0, 1)
   var72.AutomaticSize = Enum.AutomaticSize.X
   var72.LeftIcon = "rbxasset://textures/RoduxDevtools/ClearList.png"
   var72.Text = var0.Localization:getText("Topbar", "ClearList.Text")
   var72.TooltipText = var0.Localization:getText("Topbar", "ClearList.Tooltip")
   if var0.EventCount == 0 then
      local var0 = false
   end
   var72.Disabled = true
   function var72.OnClick()
      if not var0.OnClearList then
      end
      var0.OnClearList()
   end
   
   var51.ClearList = var2.createElement(var7, var72)
   return var2.createElement(var6, var39, var51)
end

fun1 = var4.withContext
local var99 = {}
var99.Analytics = var4.Analytics
var99.Localization = var4.Localization
var99.Stylizer = var3.Style.Stylizer
var9 = fun1(var99)(var9)
return require(var0.Packages.RoactRodux).connect(function(arg1, arg2)
   local var0 = {}
   var0.SearchTerm = arg1.searchTerm
   var0.EventCount = arg1.events
   return var0
end)(var9)
