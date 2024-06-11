-- Generated with Unluau (https://github.com/valencefun/unluau)
local var0 = game:GetService("Workspace")
local var1 = require(script.Parent.hasInternalPermission)()
local function fun0(arg1, arg2)
   return function()
      return game:GetService("ProcessService")
   end
end

local var2 = {}
local var53 = pcall(function()
   return game:GetService("ProcessService")
end)
local var54 = "RunningUnderCLI"
function var2.RunningUnderCLI(arg1, arg2)
   return function()
      return game:GetService("ProcessService")
   end
end

local var61 = nil
local var62 = "RunTests"
function var2.RunTests(arg1, arg2)
   return function()
      return game:GetService("ProcessService")
   end
end

local var69 = nil
local var70 = "LogTestsQuiet"
function var2.LogTestsQuiet(arg1, arg2)
   return function()
      return game:GetService("ProcessService")
   end
end

local var77 = nil
local var78 = "LogAnalytics"
function var2.LogAnalytics(arg1, arg2)
   return function()
      return game:GetService("ProcessService")
   end
end

local var11 = nil
local var86 = "RunDeveloperFrameworkTests"
function var2.RunDeveloperFrameworkTests(arg1, arg2)
   return function()
      return game:GetService("ProcessService")
   end
end

local var94 = var2.RunTests()
local var14 = "EnableRoactConfigs"
function var2.EnableRoactConfigs(arg1, arg2)
   return function()
      return game:GetService("ProcessService")
   end
end

return var2
