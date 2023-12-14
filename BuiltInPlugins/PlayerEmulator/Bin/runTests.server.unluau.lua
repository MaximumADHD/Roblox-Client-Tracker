-- Generated with Unluau (https://github.com/valencefun/unluau)
local var0 = script.Parent.Parent
local var1 = require(var0.Src.Util.DebugFlags)
if not var1.RunningUnderCLI() then
   if var1.RunTests() then
      local var0 = require(var0.Packages.Dev.TestEZ)
      local var1 = var0.TestBootstrap
      local var2 = var0.Reporters.TextReporter
      local var23 = var1.LogTestsQuiet()
      if var23 then
         local var0 = var0.Reporters.TextReporterQuiet
      end
      if _G.TEAMCITY then
         var23 = var0.Reporters.TeamCityReporter
         if not var23 then
            var23 = var2
         end
      end
      var23 = var2
      var2 = var23
      print("----- All " ... script.Parent.Parent.Name ... " Tests ------")
      require(script.Parent.defineLuaFlags)
      local var41 = var0.Src
      var41 = var2
      var1:run({}, var41)
      print("----------------------------------")
      if var1.RunDeveloperFrameworkTests() then
         print("")
         print("----- All Developer Framework Tests ------")
         local var55 = var0.Packages._Index.DeveloperFramework.DeveloperFramework
         var55 = var2
         var1:run({}, var55)
         print("----------------------------------")
      end
   end
end
local var63 = require(var0.Packages.Dev.TestEZ)
local var3 = var63.TestBootstrap
local var4 = var63.Reporters.TextReporter
local var70 = var1.LogTestsQuiet()
if var70 then
   local var0 = var63.Reporters.TextReporterQuiet
end
if _G.TEAMCITY then
   var70 = var63.Reporters.TeamCityReporter
   if not var70 then
      var70 = var4
   end
end
var70 = var4
var4 = var70
print("----- All " ... script.Parent.Parent.Name ... " Tests ------")
require(script.Parent.defineLuaFlags)
local var88 = var0.Src
var88 = var4
var3:run({}, var88)
print("----------------------------------")
if var1.RunDeveloperFrameworkTests() then
   print("")
   print("----- All Developer Framework Tests ------")
   local var102 = var0.Packages._Index.DeveloperFramework.DeveloperFramework
   var102 = var4
   var3:run({}, var102)
   print("----------------------------------")
end
if var1.RunningUnderCLI() then
   pcall(function()
      game:GetService("ProcessService"):ExitAsync(0)
   end)
end
