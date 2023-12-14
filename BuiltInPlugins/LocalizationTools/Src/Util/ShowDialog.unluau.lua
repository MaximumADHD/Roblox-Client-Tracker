-- Generated with Unluau (https://github.com/valencefun/unluau)
local var0 = script.Parent.Parent.Parent
local var1 = require(var0.Packages.Roact)
local var2 = require(var0.Packages.Framework)
local var3 = var2.ContextServices
local var4 = var2.Util.Promise
local var5 = require(var0.Src.Resources.PluginTheme)
local var6 = Vector2.new(300, 370)
return function(arg1, arg2, arg3, arg4)
   return function()
      var4.unmount(arg1)
      var1:Destroy()
      var5(true)
   end
end
