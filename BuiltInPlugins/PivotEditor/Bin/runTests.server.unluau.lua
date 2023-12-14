-- Generated with Unluau (https://github.com/valencefun/unluau)
local var0 = script.Parent.Parent
local var1 = require(var0.Src.Flags.getFFlagImprovePluginSpeedPivotEditor)
local var10 = var0.Src.Utility
local var3 = require(var10.DebugFlags)
local var4 = nil
var10 = var1
if not var10() then
   var4 = require(var0.Packages.Framework)
end
local var20 = var3.RunningUnderCLI()
if not var20 then
   local var0 = var3.RunTests()
   if var0 then
      var0 = var1
      if var0() then
         var4 = require(var0.Packages.Framework)
      end
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
      print("----- All " ... var0.Name ... " Tests ------")
      local var47 = script
      require(var47.Parent.defineLuaFlags)
      var47 = var0.Src
      var47 = var1
      var0.TestBootstrap:run({}, var47)
      print("----------------------------------")
      if var3.RunDeveloperFrameworkTests() then
         print("")
         print("----- All DeveloperFramework Tests ------")
         local var60 = var4.TestHelpers
         var60 = var0
         var60.runFrameworkTests(var60, var1)
         print("----------------------------------")
      end
   end
end
var20 = var1
if var20() then
   var4 = require(var0.Packages.Framework)
end
local var74 = require(var0.Packages.Dev.TestEZ)
local var7 = var74.Reporters
local var8 = var7.TextReporter
if _G.TEAMCITY then
   var7 = var74.Reporters.TeamCityReporter
   if not var7 then
      var7 = var8
   end
end
var7 = var8
print("----- All " ... var0.Name ... " Tests ------")
local var89 = script
require(var89.Parent.defineLuaFlags)
var89 = var0.Src
var89 = var7
var74.TestBootstrap:run({}, var89)
print("----------------------------------")
if var3.RunDeveloperFrameworkTests() then
   print("")
   print("----- All DeveloperFramework Tests ------")
   local var102 = var4.TestHelpers
   var102 = var74
   var102.runFrameworkTests(var102, var7)
   print("----------------------------------")
end
if var3.RunningUnderCLI() then
   pcall(function()
      game:GetService("ProcessService"):ExitAsync(0)
   end)
end
