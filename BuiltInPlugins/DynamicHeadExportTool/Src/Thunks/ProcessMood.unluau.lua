-- Generated with Unluau (https://github.com/valencefun/unluau)
local var0 = game:GetService("Workspace")
local var1 = game:GetService("CollectionService")
local var2 = require(script:FindFirstAncestor("DynamicHeadExportTool").Src.Constants)
return function()
   return function(arg1)
      local var0 = Instance.new("Folder")
      var0.Name = "MoodAnimation"
      var1:AddTag(var0, var2.Tag)
      local var1 = Instance.new("Folder")
      var1.Name = "R15Anim"
      var1.Parent = var0
      local var2 = Instance.new("StringValue")
      var2.Name = "mood"
      var2.Parent = var1
      local var3 = Instance.new("Animation")
      var3.Name = "Animation1"
      var3.AnimationId = string.format("rbxassetid://%s", arg1:getState().PluginReducer.animationId)
      var3.Parent = var2
      var0.Parent = var0
   end
end
