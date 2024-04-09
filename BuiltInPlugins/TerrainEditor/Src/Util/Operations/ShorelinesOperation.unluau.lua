-- Generated with Unluau (https://github.com/valencefun/unluau)
local var0 = require(script:FindFirstAncestor("TerrainEditor").Src.Util.Operations.BaseOperation)
return function(arg1, arg2, arg3, arg4)
   local var1100 = {}
   var1100.AllowCancel = true
   var1100.Description = arg2
   var1100.Name = arg1
   function var1100.OnCancel(arg1, arg2)
      assert(arg1.State, "Tried to step without starting first.")
      local var0 = arg1.State
      arg3(arg4.Terrain and arg4.Terrain:CanShorelinesBeUpgraded())
      if 1 > var0.Percent then
         local var0 = false
      end
      return truevar0.Percent,
   end
   
   function var1100.OnFinish()
      arg3.ShorelineUpgraderService:Cancel()
      arg4(arg3.Terrain and arg3.Terrain:CanShorelinesBeUpgraded())
   end
   
   function var1100.OnStart(arg1)
      assert(arg3.State, "Tried to update the state without it existing.")
      arg3.State.Percent = arg1
   end
   
   function var1100.OnStep(arg1, arg2)
      arg4.ShorelineUpgraderService:Start()
      arg4.ShorelineUpgraderService.Status:Connect(function(arg1)
         assert(arg3.State, "Tried to update the state without it existing.")
         arg3.State.Percent = arg1
      end)
      local var0 = {}
      var0.Percent = 0
      arg1.State = var0
   end
   
   return var0.new(var1100)
end
