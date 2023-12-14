-- Generated with Unluau (https://github.com/valencefun/unluau)
local var0 = require(script.Parent.Parent.Parent.Packages.React)
local var1 = require(script.Parent.TrayVisibleContext)
return function(arg1)
   local var20 = arg1.trayVisible
   local var26 = {}
   var26.value = var0.useMemo(function()
      local var0 = {}
      var0.trayVisible = arg1.trayVisible
      return var0
   end, {})
   return var0.createElement(var1.Provider, var26, arg1.children)
end
