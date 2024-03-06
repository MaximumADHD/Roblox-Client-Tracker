-- Generated with Unluau (https://github.com/valencefun/unluau)
local var0 = script.Parent.Parent.Parent
local var1 = require(var0.Packages.Roact)
local var2 = require(var0.Packages.Framework).UI.Pane
local var3 = require(script.Parent.TagSettingsListView)
local var4 = require(script.Parent.TagSettingsToggleButton)
local var5 = var1.PureComponent:extend("TagSettingsPane")
function var5.render(arg1)
   local var341 = {}
   var341.Layout = Enum.FillDirection.Vertical
   var341.VerticalAlignment = Enum.VerticalAlignment.Top
   local var344 = {}
   local var348 = {}
   var348.LayoutOrder = 1
   var344.TagSettingsToggleButton = var1.createElement(var4, var348)
   local var354 = {}
   var354.LayoutOrder = 2
   var344.TagSettingsList = var1.createElement(var3, var354)
   return var1.createElement(var2, var341, var344)
end

return var5
