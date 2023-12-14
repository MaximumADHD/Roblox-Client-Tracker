-- Generated with Unluau (https://github.com/valencefun/unluau)
local var0 = script.Parent.Parent.Parent
local var1 = require(var0.Packages.Roact)
local var2 = require(var0.Packages.Framework)
local var3 = var2.ContextServices
local var4 = var2.UI
local var5 = var4.Container
local var6 = var4.Box
local var7 = var0.Src.Components
local var8 = require(var7.NameBox)
local var9 = require(var7.Dropdown)
local var10 = require(var7.Views.RBXEventView)
local var11 = require(var7.Views.ThemeView)
local var12 = require(var7.Views.MemStorageEventView)
local var13 = require(var0.Src.Util.Constants)
local var14 = var13.VIEW_ID
local var15 = var13.INPUT_PANE_LAYOUT
local var16 = var1.PureComponent:extend("InputPane")
function var16.init(arg1)
   function arg1.getView()
      local var0 = arg1.props.ActiveView
      if var0 == "RBXEvent" then
         local var0 = var10
      end
      if var0 == "RBXEvent" then
         local var0 = var11
      end
      if var0 == "RBXEvent" then
         local var0 = var12
      end
      local var66 = var1
      var66 = "Frame"
      return var66.createElement(var66)
   end
   
end

local function fun2(arg1)
   local var0 = arg1.props.Stylizer
   local var78 = {}
   var78.Size = UDim2.new(1, 0, 0, var0.Sizes.InputPaneLength)
   var78.Background = var6
   var78.LayoutOrder = var15.InputPane
   local var88 = {}
   var88.Layout = var1.createElement("UIListLayout", var0.Layout.Vertical)
   var88.Dropdown = var1.createElement(var9)
   var88.Name = var1.createElement(var8)
   var88.View = arg1.getView()
   return var1.createElement(var5, var78, var88)
end

function var16.render(arg1)
   local var0 = arg1.props.Stylizer
   local var78 = {}
   var78.Size = UDim2.new(1, 0, 0, var0.Sizes.InputPaneLength)
   var78.Background = var6
   var78.LayoutOrder = var15.InputPane
   local var88 = {}
   var88.Layout = var1.createElement("UIListLayout", var0.Layout.Vertical)
   var88.Dropdown = var1.createElement(var9)
   var88.Name = var1.createElement(var8)
   var88.View = arg1.getView()
   return var1.createElement(var5, var78, var88)
end

fun2 = var3.withContext
local var105 = {}
var105.Stylizer = var3.Stylizer
var16 = fun2(var105)(var16)
return require(var0.Packages.RoactRodux).connect(function(arg1, arg2)
   local var0 = {}
   var0.ActiveView = arg1.Status.ActiveView
   return var0
end)(var16)
