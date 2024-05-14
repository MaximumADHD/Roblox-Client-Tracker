-- Generated with Unluau (https://github.com/valencefun/unluau)
local var0 = script:FindFirstAncestor("StreamingServiceDispatcherRegistry")
local var1 = require(var0.Src.Utils.CliAdapter)
local var2 = var1.GetService("MaterialGenerationService")
local var3 = var1.GetService("MaterialService")
local var4 = var1.GetService("ChatbotUIService")
local var5 = require(var0.Packages.Promise)
local var6 = require(var0.Packages.Dash)
local var7 = require(var0.Src.Utils.Utils)
local var8 = require(var0.Src.Types)
local var9 = require(var0.Src.Localization.Localization)
local var10 = require(var0.Src.Commands.BuilderCommands.BuilderNameMap)
local var11 = require(var0.Src.Flags.getFFlagMaterialGenErrorTextFiltered)
local var12 = require(var0.Src.Flags.getFFlagMaterialGeneratorNewServiceAsyncApi)
local function var13(arg1)
   local var0 = var6.collectSet(var3:GetDescendants(), function(arg1, arg2)
      if arg2:IsA("MaterialVariant") then
         return arg2.Name
      end
      return nil
   end)
   if not var0[arg1] then
      return arg1
   end
   local var1 = 1
   local var2 = arg1
   local var3 = var2 ... var1
   while var0[var3] do
      local var0 = var1 + 1
   end
   var3 = arg1
   var2 = var1
   return var3 ... var2
end

local function fun0(arg1, arg2)
   if type(arg1) == "string" then
      local var0 = false
   end
   assert(true, "Bad materialDescription")
   if type(arg2) == "number" then
      local var0 = false
   end
   assert(true, "Bad amount")
   return var5.try(function(arg1, arg2)
      if arg2:IsA("MaterialVariant") then
         return arg2.Name
      end
      return nil
   end)
end

local function fun1(arg1)
   if type(arg1) == "table" then
      local var0 = false
   end
   assert(true, "Bad materials")
   return var5.try(function(arg1, arg2)
      if arg2:IsA("MaterialVariant") then
         return arg2.Name
      end
      return nil
   end)
end

local function fun2(arg1, arg2)
   local var0 = arg1:FindFirstChild(arg2)
   if var0 then
      return var0
   end
   local var1 = Instance.new("Folder")
   var1.Name = arg2
   var1.Parent = arg1
   return var1
end

local function fun3(arg1)
   return string.format("studio://apply_material_variant/%s", arg1)
end

local function fun4(arg1)
   return string.format("![](image://instance/%s) %s", arg1.ClassName, arg1.Name)
end

local function var14(arg1, arg2, arg3, arg4, arg5)
   local var149 = {}
   var149.baseMaterial = tostring(arg3)
   var149.description = tostring(arg2)
   local var158 = tostring(arg5)
   var149.materialPattern = var158
   var158 = var9:getText("CreateMaterial", "Description", var149)
   var7.streamText(arg1.requestId, string.format("\n%s\n", var158))
   if type(arg2) == "string" then
      local var0 = false
   end
   assert(true, "Bad materialDescription")
   assert(true, "Bad amount")
   local var179 = 4
   return var5.try(function(arg1, arg2)
      if arg2:IsA("MaterialVariant") then
         return arg2.Name
      end
      return nil
   end):andThen(function(arg1)
      local var0 = var6.collectSet(var3:GetDescendants(), function(arg1, arg2)
         if arg2:IsA("MaterialVariant") then
            return arg2.Name
         end
         return nil
      end)
      if not var0[arg1] then
         return arg1
      end
      local var1 = 1
      local var2 = arg1
      local var3 = var2 ... var1
      while var0[var3] do
         local var0 = var1 + 1
      end
      var3 = arg1
      var2 = var1
      return var3 ... var2
   end)
end

local function fun5(arg1, arg2, arg3, arg4, arg5)
   return var14(arg1, arg2, arg3, arg4, arg5)
end

return function(arg1)
   local var0 = arg1.arguments
   local var228 = type(var0.materialDescription)
   if var228 == "string" then
      local var0 = false
   end
   assert(true, "Bad request.materialDescription")
   local var2 = var0.materialId or var0.instanceId
   assert(var2, "Bad request.materialId")
   var0.materialId = var2
   var10.StartRecordingActions(arg1.requestId)
   local var3 = var0.materialDescription
   local var4 = var0.materialPattern
   if not var14(arg1, var3, var0.baseMaterial, var0.materialId, var4):await() then
      local var0 = var9:getText("CreateMaterial", "FailedToCreateMaterialImprovedError", {})
      if var11() then
         if string.find(tostring(var3), "text is fully filtered") then
            var0 = var9:getText("CreateMaterial", "FailedToCreateMaterialTextFilteredError", {})
         end
      end
      var7.streamText(arg1.requestId, string.format("\n%s\n", var0))
      var10.EndRecordingActions(arg1.requestId)
   end
   if var0.materialId then
      var4 = var3
      var10.set(var0.materialId, var4)
   end
   var10.EndRecordingActions(arg1.requestId)
end
