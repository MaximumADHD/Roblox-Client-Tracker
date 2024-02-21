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
      local var99 = " Tests ------"
      print("----- All " ... var1.Name ... var99)
      local var102 = script
      require(var102.Parent.defineLuaFlags)
      var102 = var1.Src
      var102 = var1
      var99 = var3
      var0.TestBootstrap:run({}, var102, var99)
      print("----------------------------------")
      if var2.RunDeveloperFrameworkTests() then
         print("")
         print("----- All DeveloperFramework Tests ------")
         local var115 = var3.TestHelpers
         var115 = var0
         var115.runFrameworkTests(var115, var1)
         print("----------------------------------")
      end
   end
end
if var0 then
   var3 = require(var1.Packages.Framework)
end
local var128 = require(var1.Packages.Dev.TestEZ)
local var5 = var128.Reporters
local var6 = var5.TextReporter
if _G.TEAMCITY then
   var5 = var128.Reporters.TeamCityReporter
   if not var5 then
      var5 = var6
   end
end
var5 = var6
local var7 = {}
var7.showTimingInfo = false
var7.testNamePattern = nil
var7.extraEnvironment = {}
local var144 = " Tests ------"
print("----- All " ... var1.Name ... var144)
local var147 = script
require(var147.Parent.defineLuaFlags)
var147 = var1.Src
var147 = var5
var144 = var7
var128.TestBootstrap:run({}, var147, var144)
print("----------------------------------")
if var2.RunDeveloperFrameworkTests() then
   print("")
   print("----- All DeveloperFramework Tests ------")
   local var160 = var3.TestHelpers
   var160 = var128
   var160.runFrameworkTests(var160, var5)
   print("----------------------------------")
end
if var2.RunningUnderCLI() then
   pcall(function()
      game:GetService("ProcessService"):ExitAsync(0)
   end)
end
