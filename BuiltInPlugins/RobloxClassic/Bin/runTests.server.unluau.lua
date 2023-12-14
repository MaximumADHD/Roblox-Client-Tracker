-- Generated with Unluau (https://github.com/valencefun/unluau)
local var0 = game:GetFastFlag("ImprovePluginSpeed_RobloxClassic")
local var1 = script.Parent.Parent
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
      local var91 = " Tests ------"
      print("----- All " ... var1.Name ... var91)
      local var94 = script
      require(var94.Parent.defineLuaFlags)
      var94 = var1.Src
      var94 = var1
      var91 = var3
      var0.TestBootstrap:run({}, var94, var91)
      print("----------------------------------")
      if var2.RunDeveloperFrameworkTests() then
         print("")
         print("----- All DeveloperFramework Tests ------")
         local var107 = var3.TestHelpers
         var107 = var0
         var107.runFrameworkTests(var107, var1)
         print("----------------------------------")
      end
   end
end
if var0 then
   var3 = require(var1.Packages.Framework)
end
local var120 = require(var1.Packages.Dev.TestEZ)
local var5 = var120.Reporters
local var6 = var5.TextReporter
if _G.TEAMCITY then
   var5 = var120.Reporters.TeamCityReporter
   if not var5 then
      var5 = var6
   end
end
var5 = var6
local var7 = {}
var7.showTimingInfo = false
var7.testNamePattern = nil
var7.extraEnvironment = {}
local var136 = " Tests ------"
print("----- All " ... var1.Name ... var136)
local var139 = script
require(var139.Parent.defineLuaFlags)
var139 = var1.Src
var139 = var5
var136 = var7
var120.TestBootstrap:run({}, var139, var136)
print("----------------------------------")
if var2.RunDeveloperFrameworkTests() then
   print("")
   print("----- All DeveloperFramework Tests ------")
   local var152 = var3.TestHelpers
   var152 = var120
   var152.runFrameworkTests(var152, var5)
   print("----------------------------------")
end
if var2.RunningUnderCLI() then
   pcall(function()
      game:GetService("ProcessService"):ExitAsync(0)
   end)
end
