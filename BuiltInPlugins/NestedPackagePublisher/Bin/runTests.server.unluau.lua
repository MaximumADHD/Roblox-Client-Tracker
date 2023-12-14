-- Generated with Unluau (https://github.com/valencefun/unluau)
local var0 = script.Parent.Parent
local var1 = require(var0.Src.Util.DebugFlags)
if not var1.RunningUnderCLI() then
   if var1.RunTests() then
      require(script.Parent.commonInit)()
      local var0 = require(var0.Packages.Dev.TestEZ)
      local var1 = var0.Reporters
      local var2 = var1.TextReporter
      if _G.TEAMCITY then
         var1 = var0.Reporters.TeamCityReporter
         if not var1 then
            var1 = var2
         end
      end
      var1 = var2
      local var3 = {}
      var3.showTimingInfo = false
      var3.testNamePattern = nil
      var3.extraEnvironment = {}
      local var78 = " Tests ------"
      print("----- All " ... var0.Name ... var78)
      local var81 = script
      require(var81.Parent.defineLuaFlags)
      var81 = var0.Src
      var81 = var1
      var78 = var3
      var0.TestBootstrap:run({}, var81, var78)
      print("----------------------------------")
      if var1.RunDeveloperFrameworkTests() then
         print("")
         print("----- All DeveloperFramework Tests ------")
         local var94 = require(var0.Packages.Framework).TestHelpers
         var94 = var0
         var94.runFrameworkTests(var94, var1)
         print("----------------------------------")
      end
   end
end
require(script.Parent.commonInit)()
local var2 = require(var0.Packages.Dev.TestEZ)
local var3 = var2.Reporters
local var4 = var3.TextReporter
if _G.TEAMCITY then
   var3 = var2.Reporters.TeamCityReporter
   if not var3 then
      var3 = var4
   end
end
var3 = var4
local var5 = {}
var5.showTimingInfo = false
var5.testNamePattern = nil
var5.extraEnvironment = {}
local var129 = " Tests ------"
print("----- All " ... var0.Name ... var129)
local var132 = script
require(var132.Parent.defineLuaFlags)
var132 = var0.Src
var132 = var3
var129 = var5
var2.TestBootstrap:run({}, var132, var129)
print("----------------------------------")
if var1.RunDeveloperFrameworkTests() then
   print("")
   print("----- All DeveloperFramework Tests ------")
   local var145 = require(var0.Packages.Framework).TestHelpers
   var145 = var2
   var145.runFrameworkTests(var145, var3)
   print("----------------------------------")
end
if var1.RunningUnderCLI() then
   pcall(function()
      game:GetService("ProcessService"):ExitAsync(0)
   end)
end
