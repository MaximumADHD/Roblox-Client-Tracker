-- Generated with Unluau (https://github.com/valencefun/unluau)
local var0 = script.Parent.Parent
local var1 = require(var0.Packages.Roact)
local var2 = require(var0.Packages.Framework)
local var3 = require(var0.Src.Resources.MakeTheme)
local var4 = var2.UI
local var5 = var4.Pane
local var6 = var4.Image
local var7 = var4.TextLabel
local var8 = var2.Util.LayoutOrderIterator
local var9 = var2.Util.CrossPluginCommunication
local var10 = require(var0.Src.Components.PublishBlocked.PublishBlockedDialog)
local var11 = var1.PureComponent:extend("PublishBlockedPlugin")
local var12 = var2.ContextServices
local var13 = var12.Plugin
function var11.init(arg1)
   arg1.connection = var9.new("R15Migrator")
end

function var11.render(arg1)
   local var0 = arg1.props
   local var1 = var8.new()
   local var166 = var13.new(plugin)
   local var168 = var3()
   local var169 = var0.Localization
   local var174 = {}
   var174.OnClose = var0.OnClose
   function var174.OnOpen(arg1)
      arg1.connection = var9.new("R15Migrator")
   end
   
   local var3 = var1.createElement(var10, var174)
   return var12.provide({}, {})
end

return var11
