-- Generated with Unluau (https://github.com/valencefun/unluau)
local var0 = script.Parent.Parent.Parent.Parent
local var1 = require(var0.Src.Actions.SessionStats.PluginFocusStart)
local var2 = require(var0.Src.Types)
local var3 = require(var0.Src.Reducers.RootReducer)
local var4 = require(var0.Src.Thunks.Types)
return function()
   return function(arg1, arg2)
      local var0 = var1(os.time())
      arg1:dispatch()
   end
end
