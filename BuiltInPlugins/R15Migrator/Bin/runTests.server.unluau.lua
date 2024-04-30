-- Generated with Unluau (https://github.com/valencefun/unluau)
local var0 = game:GetFastFlag("ImprovePluginSpeed_R15Migrator")
local var1 = script:FindFirstAncestor("R15Migrator")
require(script.Parent.commonInit)()
local var2 = require(var1.Src.Util.DebugFlags)
local var3 = nil
if not var0 then
   var3 = require(var1.Packages.Framework)
end
if not var2.RunningUnderCLI() then
   if var2.RunTests() then
      if var0 then
         var3 = require(var1.Packages.Framework)
      end
      local var0 = require(var1.Packages.Dev.TestEZ)
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
      local var132 = " Tests ------"
      print("----- All " ... var1.Name ... var132)
      local var135 = script
      require(var135.Parent.defineLuaFlags)
      var135 = var1.Src
      var135 = var1
      var132 = var3
      var0.TestBootstrap:run({}, var135, var132)
      print("----------------------------------")
      if var2.RunDeveloperFrameworkTests() then
         print("")
         print("----- All DeveloperFramework Tests ------")
         local var148 = var3.TestHelpers
         var148 = var0
         var148.runFrameworkTests(var148, var1)
         print("----------------------------------")
      end
   end
end
if var0 then
   var3 = require(var1.Packages.Framework)
end
local var161 = require(var1.Packages.Dev.TestEZ)
local var5 = var161.Reporters
local var6 = var5.TextReporter
if _G.TEAMCITY then
   var5 = var161.Reporters.TeamCityReporter
   if not var5 then
      var5 = var6
   end
end
var5 = var6
local var7 = {}
var7.showTimingInfo = false
var7.testNamePattern = nil
var7.extraEnvironment = {}
local var177 = " Tests ------"
print("----- All " ... var1.Name ... var177)
local var180 = script
require(var180.Parent.defineLuaFlags)
var180 = var1.Src
var180 = var5
var177 = var7
var161.TestBootstrap:run({}, var180, var177)
print("----------------------------------")
if var2.RunDeveloperFrameworkTests() then
   print("")
   print("----- All DeveloperFramework Tests ------")
   local var193 = var3.TestHelpers
   var193 = var161
   var193.runFrameworkTests(var193, var5)
   print("----------------------------------")
end
if var2.RunningUnderCLI() then
   pcall(function()
      game:GetService("ProcessService"):ExitAsync(0)
   end)
end
