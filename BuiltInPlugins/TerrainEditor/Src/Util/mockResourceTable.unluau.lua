-- Generated with Unluau (https://github.com/valencefun/unluau)
local var0 = {}
function var0.GetTranslator()
   local var0 = {}
   function var0.FormatByKey(arg1, arg2, arg3)
      local var0 = ""
      if arg3 then
         if typeof(arg3) == "table" then
            local var0 = false
         end
         assert(true, "Args must be a table")
         local var13 = arg3
         local var14 = nil
         local var15 = nil
         var0 = `{var0}`
         var14 = var0
         var0 = string.sub(var14, 2)
      end
      return `{arg2}`
   end
   
   return var0
end

return var0
