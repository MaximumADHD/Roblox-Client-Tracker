-- Generated with Unluau (https://github.com/valencefun/unluau)
local var0 = script.Parent.Parent
local var1 = require(var0.Src.Util.DebugFlags)
if not var1.RunningUnderCLI() then
   if var1.RunTests() then
      local var0 = require(var0.Packages._Index.TestEZ.TestEZ)
      local var1 = var0.TestBootstrap
      local var2 = var0.Reporters.TextReporter
      local var38 = var1.LogTestsQuiet()
      if var38 then
         local var0 = var0.Reporters.TextReporterQuiet
      end
      if _G.TEAMCITY then
         var38 = var0.Reporters.TeamCityReporter
         if not var38 then
            var38 = var2
         end
      end
      var38 = var2
      var2 = var38
      print("----- All " ... script.Parent.Parent.Name ... " Tests ------")
      require(script.Parent.defineLuaFlags)
      local var56 = var0.Src
      var56 = var2
      var1:run({}, var56)
      print("----------------------------------")
      if var1.RunDeveloperFrameworkTests() then
         print("")
         print("----- All Developer Framework Tests ------")
         local var70 = var0.Packages._Index.DeveloperFramework.DeveloperFramework
         var70 = var2
         var1:run({}, var70)
         print("----------------------------------")
      end
   end
end
local var79 = require(var0.Packages._Index.TestEZ.TestEZ)
local var3 = var79.TestBootstrap
local var4 = var79.Reporters.TextReporter
local var86 = var1.LogTestsQuiet()
if var86 then
   local var0 = var79.Reporters.TextReporterQuiet
end
if _G.TEAMCITY then
   var86 = var79.Reporters.TeamCityReporter
   if not var86 then
      var86 = var4
   end
end
var86 = var4
var4 = var86
print("----- All " ... script.Parent.Parent.Name ... " Tests ------")
require(script.Parent.defineLuaFlags)
local var104 = var0.Src
var104 = var4
var3:run({}, var104)
print("----------------------------------")
if var1.RunDeveloperFrameworkTests() then
   print("")
   print("----- All Developer Framework Tests ------")
   local var118 = var0.Packages._Index.DeveloperFramework.DeveloperFramework
   var118 = var4
   var3:run({}, var118)
   print("----------------------------------")
end
if var1.RunningUnderCLI() then
   pcall(function()
      game:GetService("ProcessService"):ExitAsync(0)
   end)
end
