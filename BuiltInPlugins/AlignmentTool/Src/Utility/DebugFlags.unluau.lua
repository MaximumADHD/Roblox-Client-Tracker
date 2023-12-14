-- Generated with Unluau (https://github.com/valencefun/unluau)
local var0 = game:GetService("Workspace")
local var1 = require(script.Parent.hasInternalPermission)()
local function fun0(arg1, arg2)
   return function()
      return game:GetService("ProcessService")
   end
end

local var2 = {}
local var23 = pcall(function()
   return game:GetService("ProcessService")
end)
local var24 = "RunningUnderCLI"
function var2.RunningUnderCLI(arg1, arg2)
   return function()
      return game:GetService("ProcessService")
   end
end

local var31 = false
local var32 = "RunTests"
function var2.RunTests(arg1, arg2)
   return function()
      return game:GetService("ProcessService")
   end
end

local var39 = nil
local var40 = "LogTestsQuiet"
function var2.LogTestsQuiet(arg1, arg2)
   return function()
      return game:GetService("ProcessService")
   end
end

local var47 = nil
local var48 = "LogAnalytics"
function var2.LogAnalytics(arg1, arg2)
   return function()
      return game:GetService("ProcessService")
   end
end

local var11 = nil
local var56 = "RunDeveloperFrameworkTests"
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
