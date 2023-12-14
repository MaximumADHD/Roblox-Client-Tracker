-- Generated with Unluau (https://github.com/valencefun/unluau)
local var0 = script.Parent.Parent.Parent
local var1 = require(var0.Packages.Roact)
local var2 = require(var0.Packages.Framework).UI.Pane
local var3 = require(script.Parent.TagSettingsListView)
local var4 = require(script.Parent.TagSettingsToggleButton)
local var5 = var1.PureComponent:extend("TagSettingsPane")
function var5.render(arg1)
   local var350 = {}
   var350.Layout = Enum.FillDirection.Vertical
   var350.VerticalAlignment = Enum.VerticalAlignment.Top
   local var353 = {}
   local var357 = {}
   var357.LayoutOrder = 1
   var353.TagSettingsToggleButton = var1.createElement(var4, var357)
   local var363 = {}
   var363.LayoutOrder = 2
   var353.TagSettingsList = var1.createElement(var3, var363)
   return var1.createElement(var2, var350, var353)
end

return var5
