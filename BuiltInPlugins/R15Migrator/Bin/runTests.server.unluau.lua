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
      local var93 = " Tests ------"
      print("----- All " ... var1.Name ... var93)
      local var96 = script
      require(var96.Parent.defineLuaFlags)
      var96 = var1.Src
      var96 = var1
      var93 = var3
      var0.TestBootstrap:run({}, var96, var93)
      print("----------------------------------")
      if var2.RunDeveloperFrameworkTests() then
         print("")
         print("----- All DeveloperFramework Tests ------")
         local var109 = var3.TestHelpers
         var109 = var0
         var109.runFrameworkTests(var109, var1)
         print("----------------------------------")
      end
   end
end
if var0 then
   var3 = require(var1.Packages.Framework)
end
local var122 = require(var1.Packages.Dev.TestEZ)
local var5 = var122.Reporters
local var6 = var5.TextReporter
if _G.TEAMCITY then
   var5 = var122.Reporters.TeamCityReporter
   if not var5 then
      var5 = var6
   end
end
var5 = var6
local var7 = {}
var7.showTimingInfo = false
var7.testNamePattern = nil
var7.extraEnvironment = {}
local var138 = " Tests ------"
print("----- All " ... var1.Name ... var138)
local var141 = script
require(var141.Parent.defineLuaFlags)
var141 = var1.Src
var141 = var5
var138 = var7
var122.TestBootstrap:run({}, var141, var138)
print("----------------------------------")
if var2.RunDeveloperFrameworkTests() then
   print("")
   print("----- All DeveloperFramework Tests ------")
   local var154 = var3.TestHelpers
   var154 = var122
   var154.runFrameworkTests(var154, var5)
   print("----------------------------------")
end
if var2.RunningUnderCLI() then
   pcall(function()
      game:GetService("ProcessService"):ExitAsync(0)
   end)
end
