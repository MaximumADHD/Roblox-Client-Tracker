-- Generated with Unluau (https://github.com/valencefun/unluau)
local var0 = game:GetService("RunService")
local var1 = script:FindFirstAncestor("CompositorDebugger")
local var2 = var1.Src.Actions
local var3 = require(var2.SetDebugDataEvent)
local var4 = require(var2.SetActor)
local var5 = require(var2.SetLayerAdornmentEvent)
local var6 = require(var2.SetPropertyOverrideEvent)
local var7 = var1.Src.Thunks
local var8 = require(var7.DetachCompositor)
local var9 = require(var7.ParseDebugData)
local var10 = require(var1.Src.Util.Constants)
local var11 = require(var1.Src.Types)
local var12 = game:DefineFastFlag("CDAdornments", false)
local function fun0(arg1, arg2)
   local var0 = arg1:FindFirstChild(arg2)
   if var0 then
      if var0:IsA("Folder") then
         return var0
      end
   end
   local var1 = Instance.new("Folder")
   var1.Archivable = false
   var1.Name = arg2
   return var1
end

local function var13(arg1, arg2)
   local var0 = arg1:FindFirstChild(arg2)
   if var0 then
      if not var0:IsA("BindableEvent") then
         return nil
      end
   end
   if not var0 then
      local var0 = Instance.new("BindableEvent")
      var0.Archivable = false
      var0.Name = arg2
      var0.Parent = arg1
      var0 = var0
   end
   assert(var0 and var0:IsA("BindableEvent"))
   return var0
end

return function(arg1)
   return function(arg1, arg2)
      local var0 = arg1:FindFirstChild(arg2)
      if var0 then
         if var0:IsA("Folder") then
            return var0
         end
      end
      local var1 = Instance.new("Folder")
      var1.Archivable = false
      var1.Name = arg2
      return var1
   end
end
