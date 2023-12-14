-- Generated with Unluau (https://github.com/valencefun/unluau)
local var0 = require(script.Parent.Parent.Parent.Src.Actions.SetPreviewInstance)
return function(arg1)
   return function(arg1)
      if arg1 then
         local var0 = arg1:Clone()
         if var0:IsA("KeyframeSequence") then
            local var0 = arg1:getState().assetImportSession
            local var1 = var0:GetInstance(var0:GetImportTree().Id):Clone()
            local var2 = Instance.new("WorldModel")
            var0.Parent = var1
            var1.Parent = var2
            var0 = var2
         end
         local var1 = var0(var0)
         arg1:dispatch()
      end
      local var0 = var0(nil)
      arg1:dispatch()
   end
end
