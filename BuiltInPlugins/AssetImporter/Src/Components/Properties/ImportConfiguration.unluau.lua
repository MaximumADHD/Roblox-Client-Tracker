-- Generated with Unluau (https://github.com/valencefun/unluau)
local var0 = script.Parent.Parent.Parent.Parent
local var1 = require(var0.Packages.Roact)
local var2 = require(var0.Packages.Framework)
local var3 = var2.ContextServices
local var4 = var2.UI.TextLabel
local var5 = require(script.Parent.PropertyListView)
local var6 = var1.PureComponent:extend("ImportConfiguration")
local function var7(arg1)
   local var33 = {}
   local var37 = {}
   var37.BackgroundTransparency = 1
   var37.Image = "rbxasset://textures/GameSettings/ToolbarIcon.png"
   var37.LayoutOrder = 1
   var37.Size = UDim2.fromOffset(32, 32)
   var33.Image = var1.createElement("ImageLabel", var37)
   local var49 = {}
   var49.AutomaticSize = Enum.AutomaticSize.XY
   var49.LayoutOrder = 2
   var49.Text = arg1.Localization:getText("Plugin", "ImportConfiguration")
   var49.TextWrapped = true
   var33.Label = var1.createElement(var4, var49)
   return var1.createFragment(var33)
end

local function var8(arg1)
   local var63 = {}
   local var67 = {}
   var67.Instance = arg1.ImportItem
   var67.AssetImportSession = arg1.AssetImportSession
   var67.Localization = arg1.Localization
   var63.PropertyList = var1.createElement(var5, var67)
   return var1.createFragment(var63)
end

local function fun2(arg1)
   local var0 = arg1.props
   if var0.ImportItem then
      local var79 = {}
      var79.ImportItem = var0.ImportItem
      var79.AssetImportSession = var0.AssetImportSession
      return var1.createElement(var8, var79)
   end
   local var86 = {}
   var86.Localization = var0.Localization
   return var1.createElement(var7, var86)
end

function var6.render(arg1)
   local var0 = arg1.props
   if var0.ImportItem then
      local var79 = {}
      var79.ImportItem = var0.ImportItem
      var79.AssetImportSession = var0.AssetImportSession
      return var1.createElement(var8, var79)
   end
   local var86 = {}
   var86.Localization = var0.Localization
   return var1.createElement(var7, var86)
end

fun2 = var3.withContext
local var88 = {}
var88.Localization = var3.Localization
var88.Stylizer = var2.Style.Stylizer
var6 = fun2(var88)(var6)
return var6
