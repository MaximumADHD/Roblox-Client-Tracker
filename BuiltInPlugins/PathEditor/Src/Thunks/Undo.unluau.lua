-- Generated with Unluau (https://github.com/valencefun/unluau)
local var0 = script.Parent.Parent.Parent
local var1 = require(var0.Packages.Dash)
local var2 = require(var0.Src.Thunks.SetHistoryState)
local var3 = var0.Src.Actions
local var4 = require(var3.SetFuture)
local var5 = require(var3.SetPast)
local var6 = require(var0.Src.Util.CreateWaypointData)
return function()
   return function(arg1)
      local var0 = arg1:getState().PathReducer
      local var1 = var0.Past
      local var2 = var0.Future
      if 0 < var1 then
         var2 = var1.append(var6(var0), var2)
         local var43 = var2(var1[1])
         arg1:dispatch()
         local var47 = var4(var2)
         arg1:dispatch()
         local var50 = var1
         var50 = var1
         local var2 = var5(var50.slice(var50, 2, nil))
         arg1:dispatch()
      end
   end
end
