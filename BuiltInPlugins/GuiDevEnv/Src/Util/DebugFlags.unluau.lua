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
local var68 = nil
local var69 = "RunningUnderCLI"
function var2.RunningUnderCLI(arg1, arg2)
   return function()
      return game:GetService("StudioService"):HasInternalPermission()
   end
end

local var78 = false
local var79 = "RunTests"
function var2.RunTests(arg1, arg2)
   return function()
      return game:GetService("StudioService"):HasInternalPermission()
   end
end

local var88 = nil
local var89 = "LogTestsQuiet"
function var2.LogTestsQuiet(arg1, arg2)
   return function()
      return game:GetService("StudioService"):HasInternalPermission()
   end
end

local var98 = nil
local var99 = "LogAnalytics"
function var2.LogAnalytics(arg1, arg2)
   return function()
      return game:GetService("StudioService"):HasInternalPermission()
   end
end

local var11 = nil
local var109 = "RunDeveloperFrameworkTests"
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
