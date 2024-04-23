-- Generated with Unluau (https://github.com/valencefun/unluau)
return function(arg1, arg2)
   local var0 = math.floor(arg1 / 60)
   local var1 = math.floor(var0 / 60)
   if 0 < var1 then
      local var64 = {}
      var64.Hours = var1
      var64.Minutes = var0 % 60
      return arg2:getText("Time", "HoursAndMinutes", var64)
   end
   if 10 < var0 then
      local var71 = {}
      var71.Minutes = var0
      return arg2:getText("Time", "Minutes", var71)
   end
   if 1 <= var0 then
      local var77 = {}
      var77.Minutes = var0
      var77.Seconds = math.floor(arg1 / 10) * 10 % 60
      return arg2:getText("Time", "MinutesAndSeconds", var77)
   end
   local var87 = {}
   var87.Seconds = arg1
   return arg2:getText("Time", "Seconds", var87)
end
