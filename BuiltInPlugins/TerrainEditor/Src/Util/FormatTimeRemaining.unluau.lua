-- Generated with Unluau (https://github.com/valencefun/unluau)
return function(arg1, arg2)
   local var0 = math.floor(arg1 / 60)
   local var1 = math.floor(var0 / 60)
   if 0 < var1 then
      local var29 = {}
      var29.Hours = var1
      var29.Minutes = var0 % 60
      return arg2:getText("Time", "HoursAndMinutes", var29)
   end
   if 10 < var0 then
      local var36 = {}
      var36.Minutes = var0
      return arg2:getText("Time", "Minutes", var36)
   end
   if 1 <= var0 then
      local var42 = {}
      var42.Minutes = var0
      var42.Seconds = math.floor(arg1 / 10) * 10
      return arg2:getText("Time", "MinutesAndSeconds", var42)
   end
   local var51 = {}
   var51.Seconds = arg1
   return arg2:getText("Time", "Seconds", var51)
end
