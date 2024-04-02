-- Generated with Unluau (https://github.com/valencefun/unluau)
return function(arg1, arg2)
   local var0 = math.floor(arg1 / 60)
   local var1 = math.floor(var0 / 60)
   if 0 < var1 then
      local var33 = {}
      var33.Hours = var1
      var33.Minutes = var0 % 60
      return arg2:getText("Time", "HoursAndMinutes", var33)
   end
   if 10 < var0 then
      local var40 = {}
      var40.Minutes = var0
      return arg2:getText("Time", "Minutes", var40)
   end
   if 1 <= var0 then
      local var46 = {}
      var46.Minutes = var0
      var46.Seconds = math.floor(arg1 / 10) * 10 % 60
      return arg2:getText("Time", "MinutesAndSeconds", var46)
   end
   local var56 = {}
   var56.Seconds = arg1
   return arg2:getText("Time", "Seconds", var56)
end
