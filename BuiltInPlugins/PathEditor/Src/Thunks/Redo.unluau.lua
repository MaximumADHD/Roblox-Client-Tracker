-- Generated with Unluau (https://github.com/valencefun/unluau)
local var0 = script.Parent.Parent.Parent
local var1 = require(var0.Packages.Dash)
local var2 = var0.Src.Actions
local var3 = require(var0.Src.Actions.SetFuture)
local var4 = require(var0.Src.Actions.SetPast)
local var5 = require(var0.Src.Thunks.SetHistoryState)
local var6 = require(var0.Src.Util.CreateWaypointData)
return function()
   return function(arg1)
      local var0 = arg1:getState().PathReducer
      local var1 = var0.Past
      local var2 = var0.Future
      if 0 < var2 then
         var1 = var1.append(var6(var0), var1)
         local var47 = var5(var2[1])
         arg1:dispatch()
         local var50 = var1
         var50 = var2
         local var55 = var3(var50.slice(var50, 2, nil))
         arg1:dispatch()
         local var2 = var4(var1)
         arg1:dispatch()
      end
   end
end
