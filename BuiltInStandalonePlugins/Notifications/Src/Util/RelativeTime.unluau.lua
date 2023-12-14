-- Generated with Unluau (https://github.com/valencefun/unluau)
local var0 = require(script.Parent.TimeConstants)
local var1 = var0.ELAPSED_TIME_TRANSLATION_SCOPE
local var2 = var0.MINUTE_IN_SECONDS * var0.SECONDS_IN_MS
local var3 = var0.HOUR_IN_SECONDS * var0.SECONDS_IN_MS
local var4 = {}
function var4.calculateRelativeTime(arg1)
   if not arg1 then
      local var0 = {}
      var0.scope = ""
      var0.key = ""
      return var0
   end
   local var0 = DateTime.now().UnixTimestamp - arg1
   if var0 < var0.MINUTE_IN_SECONDS then
      local var0 = {}
      var0.scope = var1
      var0.key = "Now"
      return var0
   end
   if var0 < var0.HOUR_IN_SECONDS then
      local var0 = {}
      var0.scope = var1
      var0.key = "Minutes"
      var0.paramName = "minutes"
      var0.paramValue = tostring(math.floor((var0) / var0.MINUTE_IN_SECONDS))
      return var0
   end
   if var0 < var0.DAY_IN_SECONDS then
      local var0 = {}
      var0.scope = var1
      var0.key = "Hours"
      var0.paramName = "hours"
      var0.paramValue = tostring(math.floor((var0) / var0.HOUR_IN_SECONDS))
      return var0
   end
   if var0 < var0.WEEK_IN_SECONDS then
      local var0 = {}
      var0.scope = var1
      var0.key = "Days"
      var0.paramName = "days"
      var0.paramValue = tostring(math.floor((var0) / var0.DAY_IN_SECONDS))
      return var0
   end
   if var0 < var0.MONTH_IN_SECONDS then
      local var0 = {}
      var0.scope = var1
      var0.key = "Weeks"
      var0.paramName = "weeks"
      var0.paramValue = tostring(math.floor((var0) / var0.WEEK_IN_SECONDS))
      return var0
   end
   if var0 < var0.YEAR_IN_SECONDS then
      local var0 = {}
      var0.scope = var1
      var0.key = "Months"
      var0.paramName = "months"
      var0.paramValue = tostring(math.floor((var0) / var0.MONTH_IN_SECONDS))
      return var0
   end
   local var1 = {}
   var1.scope = var1
   var1.key = "Years"
   var1.paramName = "years"
   var1.paramValue = tostring(math.floor((var0) / var0.YEAR_IN_SECONDS))
   return var1
end

function var4.getRefreshIntervalInMS(arg1)
   if not arg1 then
      return nil
   end
   local var0 = DateTime.now().UnixTimestamp - arg1
   if var0 < var0.HOUR_IN_SECONDS then
      return var2
   end
   if var0 < var0.DAY_IN_SECONDS then
      return var3
   end
   return nil
end

return var4
