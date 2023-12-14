-- Generated with Unluau (https://github.com/valencefun/unluau)
local var0 = game:getFastFlag("ImprovePluginSpeed_ManageCollaborators")
local var1 = script.Parent.Parent
if not var0 then
   require(script.Parent.commonInit)()
end
local var2 = require(var1.Src.Util.DebugFlags)
local var3 = nil
if not var0 then
   var3 = require(var1.Packages.Framework)
end
if not var2.RunningUnderCLI() then
   if var2.RunTests() then
      if var0 then
         require(script.Parent.commonInit)()
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
      local var103 = var1.Name
      local var104 = " Tests ------"
      print("----- All " ... var103 ... var104)
      var103 = var1.Src
      var103 = var1
      var104 = var3
      var0.TestBootstrap:run({}, var103, var104)
      print("----------------------------------")
      if var2.RunDeveloperFrameworkTests() then
         print("")
         print("----- All DeveloperFramework Tests ------")
         local var116 = var3.TestHelpers
         var116 = var0
         var116.runFrameworkTests(var116, var1)
         print("----------------------------------")
      end
   end
end
if var0 then
   require(script.Parent.commonInit)()
   var3 = require(var1.Packages.Framework)
end
local var135 = require(var1.Packages.Dev.TestEZ)
local var5 = var135.Reporters
local var6 = var5.TextReporter
if _G.TEAMCITY then
   var5 = var135.Reporters.TeamCityReporter
   if not var5 then
      var5 = var6
   end
end
var5 = var6
local var7 = {}
var7.showTimingInfo = false
var7.testNamePattern = nil
var7.extraEnvironment = {}
local var150 = var1.Name
local var151 = " Tests ------"
print("----- All " ... var150 ... var151)
var150 = var1.Src
var150 = var5
var151 = var7
var135.TestBootstrap:run({}, var150, var151)
print("----------------------------------")
if var2.RunDeveloperFrameworkTests() then
   print("")
   print("----- All DeveloperFramework Tests ------")
   local var163 = var3.TestHelpers
   var163 = var135
   var163.runFrameworkTests(var163, var5)
   print("----------------------------------")
end
if var2.RunningUnderCLI() then
   pcall(function()
      game:GetService("ProcessService"):ExitAsync(0)
   end)
end
