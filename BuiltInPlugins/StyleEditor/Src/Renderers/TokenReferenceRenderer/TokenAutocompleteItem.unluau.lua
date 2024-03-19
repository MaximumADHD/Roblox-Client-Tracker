-- Generated with Unluau (https://github.com/valencefun/unluau)
local var0 = script.Parent.Parent.Parent.Parent
local var1 = require(var0.Packages.React)
local var2 = require(var0.Packages.Framework)
local var3 = var2.UI.Pane
local var4 = var2.UI.TextLabel
local var5 = require(var0.Src.Hooks.useFrameworkContext)
local var6 = require(script.Parent.TokenTooltip)
local var7 = require(script.Parent.TokenSourceLink)
local var8 = require(script.Parent.Types)
return function(arg1)
   local var44 = {}
   var44.LayoutOrder = arg1.LayoutOrder
   var44.OnPress = arg1.OnActivated
   var1.Tag = "X-Pad DropdownItem"
   local var50 = {}
   local var54 = {}
   var54.TokenInfo = arg1.TokenInfo
   var54.ErrorStyle = arg1.ErrorStyle
   var50.Tooltip = var1.createElement(var6, var54)
   var1.Tag = "X-Fill X-RowS X-Middle"
   local var65 = {}
   local var69 = {}
   var69.LayoutOrder = 1
   local var73 = {}
   var73.token = arg1.TokenInfo.Name
   var69.Text = var5().Localization:getText("Label", "TokenIn", var73)
   var1.Tag = "TextXAlignLeft X-FitX"
   var65.NameText = var1.createElement(var4, var69)
   local var0 = arg1.TokenInfo.Source
   if var0 then
      local var87 = {}
      var87.Source = arg1.TokenInfo.Source
      var87.LayoutOrder = 2
      local var0 = var1.createElement(var7, var87)
   end
   var65.SourceLink = var0
   var50.Content = var1.createElement(var3, {}, var65)
   return var1.createElement(var3, var44, var50)
end
