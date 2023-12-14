-- Generated with Unluau (https://github.com/valencefun/unluau)
local var0 = script:FindFirstAncestor("CompositorDebugger")
local var1 = require(var0.Packages.TestLoader)
local var2 = require(var0.Src.Types)
return function(arg1)
   local var0 = arg1.name
   if not var0 then
      if arg1.linkData then
         if not arg1.linkData.key then
            if arg1.index then
               if not string.format("[%d]", arg1.index) then
                  if arg1.className then
                     local var0 = string.format("[%s]", arg1.className) or "?"
                  end
                  local var0 = "?"
               end
            end
            if arg1.className then
               local var0 = string.format("[%s]", arg1.className) or "?"
            end
            local var0 = "?"
         end
      end
      if arg1.index then
         if not string.format("[%d]", arg1.index) then
            if arg1.className then
               local var0 = string.format("[%s]", arg1.className) or "?"
            end
            local var0 = "?"
         end
      end
      if arg1.className then
         local var0 = string.format("[%s]", arg1.className) or "?"
      end
      local var0 = "?"
   end
   return var0
end
