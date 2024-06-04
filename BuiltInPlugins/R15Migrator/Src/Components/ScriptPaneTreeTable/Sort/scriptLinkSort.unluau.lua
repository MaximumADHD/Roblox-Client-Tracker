-- Generated with Unluau (https://github.com/valencefun/unluau)
local var0 = require(script:FindFirstAncestor("R15Migrator").Src.Util.ScriptAnalysis.Constants)
return function(arg1, arg2, arg3)
   if arg1.Range then
      local var0 = arg1.Range[var0.StartKey] or nil
   end
   local var0 = nil
   if arg2.Range then
      local var0 = arg2.Range[var0.StartKey] or nil
   end
   local var1 = nil
   if arg3 == Enum.SortDirection.Descending then
      if var0 then
         if var1 then
            if var0.line ~= var1.line then
               if var1.line > var0.line then
                  local var0 = false
               end
               return true
            end
            if var1.character > var0.character then
               local var0 = false
            end
            return true
         end
      end
      if arg2.Script:GetFullName() > arg1.Script:GetFullName() then
         local var0 = false
      end
      return true
   end
   if var0 then
      if var1 then
         if var0.line ~= var1.line then
            if var0.line > var1.line then
               local var0 = false
            end
            return true
         end
         if var0.character > var1.character then
            local var0 = false
         end
         return true
      end
   end
   if arg1.Script:GetFullName() > arg2.Script:GetFullName() then
      local var0 = false
   end
   return true
end
