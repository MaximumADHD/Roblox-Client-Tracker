-- Generated with Unluau (https://github.com/valencefun/unluau)
local var0 = script.Parent.Parent
require(script.Parent.commonInit)()
local var1 = require(var0.Src.Util.DebugFlags)
local var2 = require(var0.Packages.Framework)
if not var1.RunningUnderCLI() then
   if var1.RunTests() then
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
      local var88 = " Tests ------"
      print("----- All " ... var0.Name ... var88)
      local var91 = script
      require(var91.Parent.defineLuaFlags)
      var91 = var0.Src
      var91 = var1
      var88 = var3
      var0.TestBootstrap:run({}, var91, var88)
      print("----------------------------------")
      if var1.RunDeveloperFrameworkTests() then
         print("")
         print("----- All DeveloperFramework Tests ------")
         local var104 = var2.TestHelpers
         var104 = var0
         var104.runFrameworkTests(var104, var1)
         print("----------------------------------")
      end
   end
end
local var113 = require(var0.Packages.Dev.TestEZ)
local var4 = var113.Reporters
local var5 = var4.TextReporter
if _G.TEAMCITY then
   var4 = var113.Reporters.TeamCityReporter
   if not var4 then
      var4 = var5
   end
end
var4 = var5
local var6 = {}
var6.showTimingInfo = false
var6.testNamePattern = nil
var6.extraEnvironment = {}
local var129 = " Tests ------"
print("----- All " ... var0.Name ... var129)
local var132 = script
require(var132.Parent.defineLuaFlags)
var132 = var0.Src
var132 = var4
var129 = var6
var113.TestBootstrap:run({}, var132, var129)
print("----------------------------------")
if var1.RunDeveloperFrameworkTests() then
   print("")
   print("----- All DeveloperFramework Tests ------")
   local var145 = var2.TestHelpers
   var145 = var113
   var145.runFrameworkTests(var145, var4)
   print("----------------------------------")
end
if var1.RunningUnderCLI() then
   pcall(function()
      game:GetService("ProcessService"):ExitAsync(0)
   end)
end
