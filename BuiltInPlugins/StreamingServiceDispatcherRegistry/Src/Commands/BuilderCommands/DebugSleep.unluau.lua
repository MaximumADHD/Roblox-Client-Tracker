-- Generated with Unluau (https://github.com/valencefun/unluau)
local var0 = require(script:FindFirstAncestor("StreamingServiceDispatcherRegistry").Src.Types)
return function(arg1)
   if not arg1 then
      task.wait(1)
   end
   local var0 = arg1.arguments
   if arg1 then
      if var0 then
         if var0.time then
            task.wait(var0.time)
         end
      end
   end
   task.wait(1)
end
