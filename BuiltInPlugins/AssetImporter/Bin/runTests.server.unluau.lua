-- Generated with Unluau (https://github.com/valencefun/unluau)
local var0 = script.Parent.Parent
local var1 = require(var0.Src.Utility.DebugFlags)
local var2 = nil
if not var1.RunningUnderCLI() then
   if var1.RunTests() then
      require(script.Parent.commonInit)()
      var2 = require(var0.Packages.Framework)
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
      local var42 = script
      require(var42.Parent.defineLuaTestFlags)
      var42 = var0.Src
      var42 = var1
      var0.TestBootstrap:run({}, var42)
      print("----------------------------------")
      if var1.RunDeveloperFrameworkTests() then
         print("")
         print("----- All DeveloperFramework Tests ------")
         local var55 = var2.TestHelpers
         var55 = var0
         var55.runFrameworkTests(var55, var1)
         print("----------------------------------")
      end
   end
end
require(script.Parent.commonInit)()
var2 = require(var0.Packages.Framework)
local var3 = require(var0.Packages.Dev.TestEZ)
local var4 = var3.Reporters
local var5 = var4.TextReporter
if _G.TEAMCITY then
   var4 = var3.Reporters.TeamCityReporter
   if not var4 then
      var4 = var5
   end
end
var4 = var5
print("----- All " ... var0.Name ... " Tests ------")
local var89 = script
require(var89.Parent.defineLuaTestFlags)
var89 = var0.Src
var89 = var4
var3.TestBootstrap:run({}, var89)
print("----------------------------------")
if var1.RunDeveloperFrameworkTests() then
   print("")
   print("----- All DeveloperFramework Tests ------")
   local var102 = var2.TestHelpers
   var102 = var3
   var102.runFrameworkTests(var102, var4)
   print("----------------------------------")
end
if var1.RunningUnderCLI() then
   pcall(function()
      game:GetService("ProcessService"):ExitAsync(0)
   end)
end
