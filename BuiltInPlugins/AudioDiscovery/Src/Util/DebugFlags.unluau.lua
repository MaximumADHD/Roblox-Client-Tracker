-- Generated with Unluau (https://github.com/valencefun/unluau)
local var0 = game:GetService("Workspace")
local var1 = pcall(function()
   return game:GetService("StudioService"):HasInternalPermission()
end)
local function fun0(arg1, arg2)
   return function()
      return game:GetService("StudioService"):HasInternalPermission()
   end
end

local var2 = {}
local var21 = nil
local var22 = "RunningUnderCLI"
function var2.RunningUnderCLI(arg1, arg2)
   return function()
      return game:GetService("StudioService"):HasInternalPermission()
   end
end

local var31 = false
local var32 = "RunTests"
function var2.RunTests(arg1, arg2)
   return function()
      return game:GetService("StudioService"):HasInternalPermission()
   end
end

local var41 = nil
local var42 = "LogTestsQuiet"
function var2.LogTestsQuiet(arg1, arg2)
   return function()
      return game:GetService("StudioService"):HasInternalPermission()
   end
end

local var51 = nil
local var52 = "LogAnalytics"
function var2.LogAnalytics(arg1, arg2)
   return function()
      return game:GetService("StudioService"):HasInternalPermission()
   end
end

local var11 = nil
local var62 = "RunDeveloperFrameworkTests"
function var2.RunDeveloperFrameworkTests(arg1, arg2)
   return function()
      return game:GetService("StudioService"):HasInternalPermission()
   end
end

local var13 = "EnableRoactConfigs"
function var2.EnableRoactConfigs(arg1, arg2)
   return function()
      return game:GetService("StudioService"):HasInternalPermission()
   end
end

return var2
