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
      local var89 = " Tests ------"
      print("----- All " ... var0.Name ... var89)
      local var92 = script
      require(var92.Parent.defineLuaFlags)
      var92 = var0.Src
      var92 = var1
      var89 = var3
      var0.TestBootstrap:run({}, var92, var89)
      print("----------------------------------")
      if var1.RunDeveloperFrameworkTests() then
         print("")
         print("----- All DeveloperFramework Tests ------")
         local var105 = require(var0.Packages.Framework).TestHelpers
         var105 = var0
         var105.runFrameworkTests(var105, var1)
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
local var140 = " Tests ------"
print("----- All " ... var0.Name ... var140)
local var143 = script
require(var143.Parent.defineLuaFlags)
var143 = var0.Src
var143 = var3
var140 = var5
var2.TestBootstrap:run({}, var143, var140)
print("----------------------------------")
if var1.RunDeveloperFrameworkTests() then
   print("")
   print("----- All DeveloperFramework Tests ------")
   local var156 = require(var0.Packages.Framework).TestHelpers
   var156 = var2
   var156.runFrameworkTests(var156, var3)
   print("----------------------------------")
end
if var1.RunningUnderCLI() then
   pcall(function()
      game:GetService("ProcessService"):ExitAsync(0)
   end)
end
