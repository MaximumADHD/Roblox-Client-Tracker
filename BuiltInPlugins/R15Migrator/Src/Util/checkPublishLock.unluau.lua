-- Generated with Unluau (https://github.com/valencefun/unluau)
local var0 = script:FindFirstAncestor("R15Migrator")
local var1 = require(var0.Src.Util.DebugFlags)
local var2 = require(var0.Src.Resources.Constants).Tags
local var3 = game:GetService("CollectionService")
return function()
   if not var1.RunTests() then
      local var0 = game:GetService("StudioPublishService")
      var0.PublishLocked = false
      local var1 = var2
      local var2 = nil
      local var3 = nil
      if var3:GetTagged(var31) > 0 then
         local var0 = false
      end
      if true then
         var0.PublishLocked = true
      end
   end
end
