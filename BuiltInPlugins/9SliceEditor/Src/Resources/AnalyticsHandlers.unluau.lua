-- Generated with Unluau (https://github.com/valencefun/unluau)
local var0 = game:GetFastInt("9SliceEditorAnalyticsReportingHundrethsPercent")
return function(arg1)
   local var0 = Random.new()
   local function fun0()
      if var0 / 10000 > var0:NextNumber() then
         local var0 = false
      end
      return true
   end
   
   local function fun1(arg1)
      local var0 = var0 / 10000
      if var0 > var0:NextNumber() then
         local var0 = false
      end
      if true then
         var0 = arg1
         arg1:ReportCounter(var0, 1)
      end
   end
   
   local function fun2(arg1, arg2)
      local var0 = var0
      local var1 = var0 / 10000
      if var1 > var0:NextNumber() then
         local var0 = false
      end
      if true then
         var1 = arg1
         var0 = arg2
         arg1:ReportStats(var1, var0)
      end
   end
   
   local var1 = {}
   function var1.sliceEditorOpened()
      if var0 / 10000 > var0:NextNumber() then
         local var0 = false
      end
      if true then
         arg1:ReportCounter("Studio9SliceEditorOpened", 1)
      end
   end
   
   function var1.sliceEditorImageLoadedIntoEditor()
      if var0 / 10000 > var0:NextNumber() then
         local var0 = false
      end
      if true then
         arg1:ReportCounter("Studio9SliceEditorImageLoadedIntoEditor", 1)
      end
   end
   
   function var1.sliceEditorOpenTime(arg1, arg2)
      local var0 = var0
      if var0 / 10000 > var0:NextNumber() then
         local var0 = false
      end
      if true then
         var0 = arg2
         arg1:ReportStats("Studio9SliceEditorOpenTime", var0)
      end
   end
   
   return var1
end
