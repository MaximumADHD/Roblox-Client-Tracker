-- Generated with Unluau (https://github.com/valencefun/unluau)
local var0 = script.Parent.Parent
local var1 = require(var0.Packages.Roact)
local var2 = require(var0.Packages.Framework)
local var3 = require(var0.Src.Resources.MakeTheme)
local var4 = require(var0.Src.Resources.Constants)
local var5 = var2.Util.CrossPluginCommunication
local var6 = require(var0.Src.Components.PublishBlocked.PublishBlockedDialog)
local var7 = var1.PureComponent:extend("PublishBlockedPlugin")
local var8 = var2.ContextServices
local var9 = var8.Plugin
function var7.init(arg1)
   arg1.connection = var5.new(var4.CrossPluginCommunicationName)
end

function var7.render(arg1)
   local var0 = arg1.props
   local var298 = var9.new(plugin)
   local var300 = var3()
   local var301 = var0.Localization
   local var306 = {}
   var306.OnClose = var0.OnClose
   function var306.OnOpen(arg1)
      arg1.connection = var5.new(var4.CrossPluginCommunicationName)
   end
   
   local var2 = var1.createElement(var6, var306)
   return var8.provide({}, {})
end

return var7
