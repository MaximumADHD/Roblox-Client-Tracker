-- Generated with Unluau (https://github.com/valencefun/unluau)
local var0 = {}
function var0.buildTestRig()
   local var0 = Instance.new("Model")
   local var1 = Instance.new("Part", var0)
   var1.Name = "HumanoidRootPart"
   local var2 = Instance.new("Part", var0)
   var2.Name = "UpperTorso"
   local var3 = Instance.new("Part", var0)
   var3.Name = "Head"
   local var4 = Instance.new("Motor6D", var2)
   var4.Part0 = var1
   var4.Part1 = var2
   local var5 = Instance.new("Motor6D", var3)
   var5.Part0 = var2
   var5.Part1 = var3
   Instance.new("Attachment", var1).Name = "RootAttachment"
   Instance.new("Attachment", var2).Name = "RootAttachment"
   local var6 = Instance.new("Attachment", var2)
   var6.Name = "NeckAttachment"
   local var7 = Instance.new("Attachment", var3)
   var7.Name = "NeckAttachment"
   local var8 = Instance.new("BallSocketConstraint", var0)
   var8.Enabled = false
   var8.Attachment0 = var6
   var8.Attachment1 = var7
   return var0
end

return var0
