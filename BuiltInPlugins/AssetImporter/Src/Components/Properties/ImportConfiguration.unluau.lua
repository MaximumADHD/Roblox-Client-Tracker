-- Generated with Unluau (https://github.com/valencefun/unluau)
local var0 = script:FindFirstAncestor("AssetImporter")
local var1 = require(var0.Packages.Roact)
local var2 = require(var0.Packages.Framework)
local var3 = var2.ContextServices
local var4 = var2.UI.TextLabel
local var5 = require(script.Parent.PropertyListView)
local var6 = var1.PureComponent:extend("ImportConfiguration")
local function var7(arg1)
   local var32 = {}
   local var36 = {}
   var36.BackgroundTransparency = 1
   var36.Image = "rbxasset://textures/GameSettings/ToolbarIcon.png"
   var36.LayoutOrder = 1
   var36.Size = UDim2.fromOffset(32, 32)
   var32.Image = var1.createElement("ImageLabel", var36)
   local var48 = {}
   var48.AutomaticSize = Enum.AutomaticSize.XY
   var48.LayoutOrder = 2
   var48.Text = arg1.Localization:getText("Plugin", "ImportConfiguration")
   var48.TextWrapped = true
   var32.Label = var1.createElement(var4, var48)
   return var1.createFragment(var32)
end

local function var8(arg1)
   local var62 = {}
   local var66 = {}
   var66.Instance = arg1.ImportItem
   var66.AssetImportSession = arg1.AssetImportSession
   var66.Localization = arg1.Localization
   var62.PropertyList = var1.createElement(var5, var66)
   return var1.createFragment(var62)
end

local function fun2(arg1)
   local var0 = arg1.props
   if var0.ImportItem then
      local var78 = {}
      var78.ImportItem = var0.ImportItem
      var78.AssetImportSession = var0.AssetImportSession
      return var1.createElement(var8, var78)
   end
   local var85 = {}
   var85.Localization = var0.Localization
   return var1.createElement(var7, var85)
end

function var6.render(arg1)
   local var0 = arg1.props
   if var0.ImportItem then
      local var78 = {}
      var78.ImportItem = var0.ImportItem
      var78.AssetImportSession = var0.AssetImportSession
      return var1.createElement(var8, var78)
   end
   local var85 = {}
   var85.Localization = var0.Localization
   return var1.createElement(var7, var85)
end

fun2 = var3.withContext
local var87 = {}
var87.Localization = var3.Localization
var87.Stylizer = var2.Style.Stylizer
var6 = fun2(var87)(var6)
return var6
