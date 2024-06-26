-- Generated with Unluau (https://github.com/valencefun/unluau)
local var0 = game:GetService("Workspace")
local var1 = require(script.Parent.hasInternalPermission)()
local function fun0(arg1, arg2)
   return function()
      return game:GetService("ProcessService")
   end
end

local var2 = {}
local var69 = pcall(function()
   return game:GetService("ProcessService")
end)
local var70 = "RunningUnderCLI"
function var2.RunningUnderCLI(arg1, arg2)
   return function()
      return game:GetService("ProcessService")
   end
end

local var77 = false
local var78 = "RunTests"
function var2.RunTests(arg1, arg2)
   return function()
      return game:GetService("ProcessService")
   end
end

local var85 = nil
local var86 = "LogTestsQuiet"
function var2.LogTestsQuiet(arg1, arg2)
   return function()
      return game:GetService("ProcessService")
   end
end

local var93 = nil
local var94 = "LogAnalytics"
function var2.LogAnalytics(arg1, arg2)
   return function()
      return game:GetService("ProcessService")
   end
end

local var11 = nil
local var102 = "RunDeveloperFrameworkTests"
function var2.RunDeveloperFrameworkTests(arg1, arg2)
   return function()
      return game:GetService("ProcessService")
   end
end

local var13 = "EnableRoactConfigs"
function var2.EnableRoactConfigs(arg1, arg2)
   return function()
      return game:GetService("ProcessService")
   end
end

return var2
