-- Generated with Unluau (https://github.com/valencefun/unluau)
local var0 = script.Parent.Parent
local var1 = require(var0.Packages.Roact)
local var2 = require(var0.Packages.Framework)
local var3 = require(var0.Src.Resources.MakeTheme)
local var4 = var2.Util.CrossPluginCommunication
local var5 = require(var0.Src.Components.PublishBlocked.PublishBlockedDialog)
local var6 = var1.PureComponent:extend("PublishBlockedPlugin")
local var7 = var2.ContextServices
local var8 = var7.Plugin
function var6.init(arg1)
   arg1.connection = var4.new("R15Migrator")
end

function var6.render(arg1)
   local var0 = arg1.props
   local var168 = var8.new(plugin)
   local var170 = var3()
   local var171 = var0.Localization
   local var176 = {}
   var176.OnClose = var0.OnClose
   function var176.OnOpen(arg1)
      arg1.connection = var4.new("R15Migrator")
   end
   
   local var2 = var1.createElement(var5, var176)
   return var7.provide({}, {})
end

return var6
