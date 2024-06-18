-- Generated with Unluau (https://github.com/valencefun/unluau)
local var0 = script:FindFirstAncestor("R15Migrator")
local var1 = require(var0.Packages.React)
local var2 = require(var0.Packages.RoactRodux)
local var3 = require(var0.Packages.Framework)
local var4 = var3.ContextServices
local var5 = var3.Dash
local var6 = var5.append
local var7 = var5.join
local var8 = var5.keys
local var9 = var5.map
local var10 = var3.UI.Pane
local var11 = var0.Src.Actions
local var12 = require(script.TagComponent)
local var13 = require(var0.Src.Types)
local var14 = var0.Src.Util
local var15 = var1.PureComponent:extend("TagsBar")
function var15.init(arg1)
   local var0 = {}
   var0.tags = {}
   local var1 = {}
   var1.Filters = nil
   var0._Ref = var1
   arg1.state = var0
end

local function var16(arg1, arg2, arg3, arg4)
   local var0 = var8(arg2[arg3])
   table.sort(var0)
   var6(arg1, var9(var0, function(arg1)
      local var0 = {}
      var0.tags = {}
      local var1 = {}
      var1.Filters = nil
      var0._Ref = var1
      arg1.state = var0
   end))
end

local function fun0(arg1, arg2)
   local var0 = {}
   var16(var0, arg1.rigFilters, "R6", arg2)
   var16(var0, arg1.rigFilters, "R15", arg2)
   return var0
end

function var15.getDerivedStateFromProps(arg1, arg2)
   local var0 = arg1.Filters
   if var0 ~= arg2._Ref.Filters then
      local var84 = arg1.Filters
      local var85 = arg1.Localization
      local var86 = {}
      var16(var86, var84.rigFilters, "R6", var85)
      var16(var86, var84.rigFilters, "R15", var85)
      var0 = var86
      local var2 = {}
      var2.tags = var0
      local var100 = {}
      var100.Filters = arg1.Filters
      var2._Ref = var7(arg2._Ref, var100)
      return var2
   end
end

local function fun6(arg1)
   local var0 = arg1.props
   local var117 = {}
   var117.LayoutOrder = var0.LayoutOrder
   var117.Size = var0.Size
   var117.Layout = Enum.FillDirection.Horizontal
   var117.HorizontalAlignment = Enum.HorizontalAlignment.Left
   var117.VerticalAlignment = Enum.VerticalAlignment.Center
   var117.Spacing = 4
   local var124 = true
   var117.ClipsDescendants = var124
   var124 = var9(arg1.state.tags, function(arg1)
      local var0 = {}
      var0.tags = {}
      local var1 = {}
      var1.Filters = nil
      var0._Ref = var1
      arg1.state = var0
   end)
   return var1.createElement(var10, var117, var124)
end

function var15.render(arg1)
   local var0 = arg1.props
   local var117 = {}
   var117.LayoutOrder = var0.LayoutOrder
   var117.Size = var0.Size
   var117.Layout = Enum.FillDirection.Horizontal
   var117.HorizontalAlignment = Enum.HorizontalAlignment.Left
   var117.VerticalAlignment = Enum.VerticalAlignment.Center
   var117.Spacing = 4
   local var124 = true
   var117.ClipsDescendants = var124
   var124 = var9(arg1.state.tags, function(arg1)
      local var0 = {}
      var0.tags = {}
      local var1 = {}
      var1.Filters = nil
      var0._Ref = var1
      arg1.state = var0
   end)
   return var1.createElement(var10, var117, var124)
end

fun6 = var4.withContext
local var126 = {}
var126.Analytics = var4.Analytics
var126.Localization = var4.Localization
var126.Stylizer = var3.Style.Stylizer
var15 = fun6(var126)(var15)
return var15
