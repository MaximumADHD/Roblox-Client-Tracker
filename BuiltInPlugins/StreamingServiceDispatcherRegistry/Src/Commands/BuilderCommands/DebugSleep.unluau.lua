-- Generated with Unluau (https://github.com/valencefun/unluau)
local var0 = game:GetFastFlag("ConvAIAddDraftModeForSceneCreate2")
return function(arg1)
   assert(var0, "debugSleep: FFlagConvAIAddDraftModeForSceneCreate is not enabled!")
   if arg1 then
      if arg1.arguments then
         if arg1.arguments.time then
            task.wait(arg1.arguments.time)
         end
      end
   end
   task.wait(1)
end
