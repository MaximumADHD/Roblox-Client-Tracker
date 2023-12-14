-- Generated with Unluau (https://github.com/valencefun/unluau)
local var0 = script.Parent.Parent
require(script.Parent.defineLuaFlags)
require(script.Parent.commonInit)()
local var1 = require(var0.Src.Util.DebugFlags)
local var2 = require(var0.Packages.Framework)
if not var1.RunningUnderCLI() then
   if var1.RunTests() then
      if not game:GetFastFlag("RetireAudioDiscoveryPlugin") then
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
         local var97 = var0.Name
         local var98 = " Tests ------"
         print("----- All " ... var97 ... var98)
         var97 = var0.Src
         var97 = var1
         var98 = var3
         var0.TestBootstrap:run({}, var97, var98)
         print("----------------------------------")
         if var1.RunDeveloperFrameworkTests() then
            print("")
            print("----- All DeveloperFramework Tests ------")
            local var110 = var2.TestHelpers
            var110 = var0
            var110.runFrameworkTests(var110, var1)
            print("----------------------------------")
         end
      end
   end
end
if not game:GetFastFlag("RetireAudioDiscoveryPlugin") then
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
   local var138 = var0.Name
   local var139 = " Tests ------"
   print("----- All " ... var138 ... var139)
   var138 = var0.Src
   var138 = var1
   var139 = var3
   var0.TestBootstrap:run({}, var138, var139)
   print("----------------------------------")
   if var1.RunDeveloperFrameworkTests() then
      print("")
      print("----- All DeveloperFramework Tests ------")
      local var151 = var2.TestHelpers
      var151 = var0
      var151.runFrameworkTests(var151, var1)
      print("----------------------------------")
   end
end
if var1.RunningUnderCLI() then
   pcall(function()
      game:GetService("ProcessService"):ExitAsync(0)
   end)
end
