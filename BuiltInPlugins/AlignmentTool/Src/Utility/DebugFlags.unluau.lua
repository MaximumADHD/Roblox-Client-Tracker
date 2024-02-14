-- Generated with Unluau (https://github.com/valencefun/unluau)
local var0 = game:GetService("Workspace")
local var1 = require(script.Parent.hasInternalPermission)()
local function fun0(arg1, arg2)
   return function()
      return game:GetService("ProcessService")
   end
end

local var2 = {}
local var70 = pcall(function()
   return game:GetService("ProcessService")
end)
local var71 = "RunningUnderCLI"
function var2.RunningUnderCLI(arg1, arg2)
   return function()
      return game:GetService("ProcessService")
   end
end

local var78 = false
local var79 = "RunTests"
function var2.RunTests(arg1, arg2)
   return function()
      return game:GetService("ProcessService")
   end
end

local var86 = nil
local var87 = "LogTestsQuiet"
function var2.LogTestsQuiet(arg1, arg2)
   return function()
      return game:GetService("ProcessService")
   end
end

local var94 = nil
local var95 = "LogAnalytics"
function var2.LogAnalytics(arg1, arg2)
   return function()
      return game:GetService("ProcessService")
   end
end

local var11 = nil
local var103 = "RunDeveloperFrameworkTests"
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
