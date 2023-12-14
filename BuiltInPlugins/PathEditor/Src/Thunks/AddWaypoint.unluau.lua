-- Generated with Unluau (https://github.com/valencefun/unluau)
local var0 = script.Parent.Parent.Parent
local var1 = game:GetService("ChangeHistoryService")
local var2 = require(var0.Packages.Dash)
local var3 = var0.Src.Actions
local var4 = require(var0.Src.Actions.SetFuture)
local var5 = require(var0.Src.Actions.SetPast)
local var6 = require(var0.Src.Util.CreateWaypointData)
local var7 = require(var0.Src.Resources.Constants)
return function()
   return function(arg1)
      local var0 = arg1:getState().PathReducer
      local var1 = var0.Past
      var1 = var2.append(var6(var0), var1)
      local var47 = var7
      var1:SetWaypoint(var47.ChangeHistoryServiceActionName)
      var47 = var1
      local var51 = var5(var47)
      arg1:dispatch()
      local var3 = var4({})
      arg1:dispatch()
   end
end
