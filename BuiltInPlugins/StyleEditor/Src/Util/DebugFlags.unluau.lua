-- Generated with Unluau (https://github.com/valencefun/unluau)
local var0 = game:GetService("Workspace")
local var1 = game:GetService("StudioService")
local function fun0(arg1)
   local var11 = typeof(arg1.Name)
   if var11 == "string" then
      local var0 = false
   end
   assert(true, "DebugFlag name must be a string")
   if typeof(arg1.Default) == "boolean" then
      local var0 = false
   end
   assert(true, "DebugFlag default value must be a boolean")
   if arg1.DefaultForInternalUsers == "Name" then
      if typeof(arg1.DefaultForInternalUsers) == "boolean" then
         local var0 = false
      end
      local var0 = true
   end
   assert(true, "DebugFlag default value for internal users must be either a boolean or nil")
   return function()
      if var1:HasInternalPermission() then
         if arg1.DefaultForInternalUsers == "HasInternalPermission" then
            local var0 = arg1.DefaultForInternalUsers
         else
            local var0 = arg1.Default
         end
      else
         local var0 = arg1.Default
      end
      local var0 = var0:FindFirstChild("StyleEditor")
      if var0 then
         if not var0:IsA("Folder") then
            return 
         end
      end
      return 
      local var1 = var0:FindFirstChild(arg1.Name)
      if var1 then
         if not var1:IsA("BoolValue") then
            return 
         end
      end
      return 
      return var1.Value
   end
end

local var2 = {}
local var60 = {}
var60.Name = "LogNetworkErrors"
var60.Default = false
var60.DefaultForInternalUsers = true
local var64 = fun0(var60)
var2.LogNetworkErrors = var64
function var64(arg1)
   local var11 = typeof(arg1.Name)
   if var11 == "string" then
      local var0 = false
   end
   assert(true, "DebugFlag name must be a string")
   if typeof(arg1.Default) == "boolean" then
      local var0 = false
   end
   assert(true, "DebugFlag default value must be a boolean")
   if arg1.DefaultForInternalUsers == "Name" then
      if typeof(arg1.DefaultForInternalUsers) == "boolean" then
         local var0 = false
      end
      local var0 = true
   end
   assert(true, "DebugFlag default value for internal users must be either a boolean or nil")
   return function()
      if var1:HasInternalPermission() then
         if arg1.DefaultForInternalUsers == "HasInternalPermission" then
            local var0 = arg1.DefaultForInternalUsers
         else
            local var0 = arg1.Default
         end
      else
         local var0 = arg1.Default
      end
      local var0 = var0:FindFirstChild("StyleEditor")
      if var0 then
         if not var0:IsA("Folder") then
            return 
         end
      end
      return 
      local var1 = var0:FindFirstChild(arg1.Name)
      if var1 then
         if not var1:IsA("BoolValue") then
            return 
         end
      end
      return 
      return var1.Value
   end
end

local var65 = {}
var65.Name = "LogTelemetry"
var65.Default = false
var2.LogTelemetry = var64(var65)
return var2
