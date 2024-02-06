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
      local var76 = " Tests ------"
      print("----- All " ... var1.Name ... var76)
      local var79 = script
      require(var79.Parent.defineLuaFlags)
      var79 = var1.Src
      var79 = var1
      var76 = var3
      var0.TestBootstrap:run({}, var79, var76)
      print("----------------------------------")
      if var2.RunDeveloperFrameworkTests() then
         print("")
         print("----- All DeveloperFramework Tests ------")
         local var92 = var3.TestHelpers
         var92 = var0
         var92.runFrameworkTests(var92, var1)
         print("----------------------------------")
      end
   end
end
if var0 then
   var3 = require(var1.Packages.Framework)
end
local var105 = require(var1.Packages.Dev.TestEZ)
local var5 = var105.Reporters
local var6 = var5.TextReporter
if _G.TEAMCITY then
   var5 = var105.Reporters.TeamCityReporter
   if not var5 then
      var5 = var6
   end
end
var5 = var6
local var7 = {}
var7.showTimingInfo = false
var7.testNamePattern = nil
var7.extraEnvironment = {}
local var121 = " Tests ------"
print("----- All " ... var1.Name ... var121)
local var124 = script
require(var124.Parent.defineLuaFlags)
var124 = var1.Src
var124 = var5
var121 = var7
var105.TestBootstrap:run({}, var124, var121)
print("----------------------------------")
if var2.RunDeveloperFrameworkTests() then
   print("")
   print("----- All DeveloperFramework Tests ------")
   local var137 = var3.TestHelpers
   var137 = var105
   var137.runFrameworkTests(var137, var5)
   print("----------------------------------")
end
if var2.RunningUnderCLI() then
   pcall(function()
      game:GetService("ProcessService"):ExitAsync(0)
   end)
end
