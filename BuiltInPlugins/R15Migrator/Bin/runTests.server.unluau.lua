-- Generated with Unluau (https://github.com/valencefun/unluau)
local var0 = game:GetFastFlag("ImprovePluginSpeed_R15Migrator")
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
      local var74 = " Tests ------"
      print("----- All " ... var1.Name ... var74)
      local var77 = script
      require(var77.Parent.defineLuaFlags)
      var77 = var1.Src
      var77 = var1
      var74 = var3
      var0.TestBootstrap:run({}, var77, var74)
      print("----------------------------------")
      if var2.RunDeveloperFrameworkTests() then
         print("")
         print("----- All DeveloperFramework Tests ------")
         local var90 = var3.TestHelpers
         var90 = var0
         var90.runFrameworkTests(var90, var1)
         print("----------------------------------")
      end
   end
end
if var0 then
   var3 = require(var1.Packages.Framework)
end
local var103 = require(var1.Packages.Dev.TestEZ)
local var5 = var103.Reporters
local var6 = var5.TextReporter
if _G.TEAMCITY then
   var5 = var103.Reporters.TeamCityReporter
   if not var5 then
      var5 = var6
   end
end
var5 = var6
local var7 = {}
var7.showTimingInfo = false
var7.testNamePattern = nil
var7.extraEnvironment = {}
local var119 = " Tests ------"
print("----- All " ... var1.Name ... var119)
local var122 = script
require(var122.Parent.defineLuaFlags)
var122 = var1.Src
var122 = var5
var119 = var7
var103.TestBootstrap:run({}, var122, var119)
print("----------------------------------")
if var2.RunDeveloperFrameworkTests() then
   print("")
   print("----- All DeveloperFramework Tests ------")
   local var135 = var3.TestHelpers
   var135 = var103
   var135.runFrameworkTests(var135, var5)
   print("----------------------------------")
end
if var2.RunningUnderCLI() then
   pcall(function()
      game:GetService("ProcessService"):ExitAsync(0)
   end)
end
