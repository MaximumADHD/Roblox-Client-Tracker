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
      local var110 = " Tests ------"
      print("----- All " ... var1.Name ... var110)
      local var113 = script
      require(var113.Parent.defineLuaFlags)
      var113 = var1.Src
      var113 = var1
      var110 = var3
      var0.TestBootstrap:run({}, var113, var110)
      print("----------------------------------")
      if var2.RunDeveloperFrameworkTests() then
         print("")
         print("----- All DeveloperFramework Tests ------")
         local var126 = var3.TestHelpers
         var126 = var0
         var126.runFrameworkTests(var126, var1)
         print("----------------------------------")
      end
   end
end
if var0 then
   var3 = require(var1.Packages.Framework)
end
local var139 = require(var1.Packages.Dev.TestEZ)
local var5 = var139.Reporters
local var6 = var5.TextReporter
if _G.TEAMCITY then
   var5 = var139.Reporters.TeamCityReporter
   if not var5 then
      var5 = var6
   end
end
var5 = var6
local var7 = {}
var7.showTimingInfo = false
var7.testNamePattern = nil
var7.extraEnvironment = {}
local var155 = " Tests ------"
print("----- All " ... var1.Name ... var155)
local var158 = script
require(var158.Parent.defineLuaFlags)
var158 = var1.Src
var158 = var5
var155 = var7
var139.TestBootstrap:run({}, var158, var155)
print("----------------------------------")
if var2.RunDeveloperFrameworkTests() then
   print("")
   print("----- All DeveloperFramework Tests ------")
   local var171 = var3.TestHelpers
   var171 = var139
   var171.runFrameworkTests(var171, var5)
   print("----------------------------------")
end
if var2.RunningUnderCLI() then
   pcall(function()
      game:GetService("ProcessService"):ExitAsync(0)
   end)
end
