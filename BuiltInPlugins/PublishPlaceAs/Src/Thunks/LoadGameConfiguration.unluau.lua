-- Generated with Unluau (https://github.com/valencefun/unluau)
local var0 = script.Parent.Parent.Parent
local var1 = require(var0.Src.Actions.SetGameConfiguration)
local var2 = require(var0.Src.Actions.SetChooseGameQueryState)
local var3 = require(var0.Src.Resources.Constants)
return function(arg1, arg2)
   return function(arg1)
      local var0 = arg1(arg1.responseBody)
      arg2:dispatch()
   end
end
