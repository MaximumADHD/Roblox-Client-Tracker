-- Generated with Unluau (https://github.com/valencefun/unluau)
local var0 = require(script.Parent.Parent.Parent.Src.Util.DebugFlags)
return function(arg1)
   local function fun0(arg1, arg2)
      local var0 = var0
      if var0.LogAnalytics() then
         var0 = `Terrain ReportCounter counterName=%* count=%*`
         print(var0)
      end
      arg1:ReportCounter(arg1, arg2)
   end
   
   local var0 = {}
   function var0.regionAction(arg1, arg2)
      local var0 = "TerrainToolsRegion" ... arg2
      local var1 = nil
      local var2 = var0
      if var2.LogAnalytics() then
         var2 = `Terrain ReportCounter counterName=%* count=%*`
         print(var2)
      end
      arg1:ReportCounter(var0, var1)
   end
   
   return var0
end
