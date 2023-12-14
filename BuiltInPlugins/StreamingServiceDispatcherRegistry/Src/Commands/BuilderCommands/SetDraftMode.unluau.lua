-- Generated with Unluau (https://github.com/valencefun/unluau)
local var0 = script.Parent.Parent.Parent.Parent
local var1 = require(var0.Src.Utils.Utils)
local var2 = require(var0.Src.Types)
local var3 = require(script.Parent.BuilderNameMap)
local var4 = game:GetFastFlag("ConvAIAddDraftModeForSceneCreate")
return function(arg1)
   assert(var4, "setDraftMode: FFlagConvAIAddDraftModeForSceneCreate is not enabled!")
   local var0 = arg1.arguments
   if var0.enabled == 1 then
      if var0.enabled == "assert" then
         local var0 = false
      end
      local var0 = true
   end
   if true then
      var3.activeDraftGuids = {}
      var1.enableDraftMode(arg1.requestId)
   end
   var3.activeDraftGuids = nil
   var1.disableDraftMode(arg1.requestId)
end
