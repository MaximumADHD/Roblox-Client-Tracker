-- Generated with Unluau (https://github.com/valencefun/unluau)
return function(arg1, arg2)
   local var0 = math.floor(arg1 / 60)
   local var1 = math.floor(var0 / 60)
   if 0 < var1 then
      local var11 = {}
      var11.Hours = var1
      var11.Minutes = var0 % 60
      return arg2:getText("Time", "HoursAndMinutes", var11)
   end
   if 10 < var0 then
      local var18 = {}
      var18.Minutes = var0
      return arg2:getText("Time", "Minutes", var18)
   end
   if 1 <= var0 then
      local var24 = {}
      var24.Minutes = var0
      var24.Seconds = math.floor(arg1 / 10) * 10 % 60
      return arg2:getText("Time", "MinutesAndSeconds", var24)
   end
   local var34 = {}
   var34.Seconds = arg1
   return arg2:getText("Time", "Seconds", var34)
end
