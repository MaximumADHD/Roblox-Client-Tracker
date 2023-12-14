-- Generated with Unluau (https://github.com/valencefun/unluau)
local var0 = script.Parent.Parent
local var1 = require(var0.Src.Util.DebugFlags)
if not var1.RunningUnderCLI() then
   if var1.RunTests() then
      local var0 = require(var0.Packages.Dev.TestEZ)
      local var1 = var0.TestBootstrap
      local var2 = var0.Reporters.TextReporter
      local var194 = var1.LogTestsQuiet()
      if var194 then
         local var0 = var0.Reporters.TextReporterQuiet
      end
      if _G.TEAMCITY then
         var194 = var0.Reporters.TeamCityReporter
         if not var194 then
            var194 = var2
         end
      end
      var194 = var2
      var2 = var194
      print("----- All " ... script.Parent.Parent.Name ... " Tests ------")
      require(script.Parent.defineLuaFlags)
      local var212 = var0.Src
      var212 = var2
      var1:run({}, var212)
      print("----------------------------------")
      if var1.RunDeveloperFrameworkTests() then
         print("")
         print("----- All Developer Framework Tests ------")
         local var226 = var0.Packages._Index.DeveloperFramework.DeveloperFramework
         var226 = var2
         var1:run({}, var226)
         print("----------------------------------")
      end
   end
end
local var234 = require(var0.Packages.Dev.TestEZ)
local var3 = var234.TestBootstrap
local var4 = var234.Reporters.TextReporter
local var241 = var1.LogTestsQuiet()
if var241 then
   local var0 = var234.Reporters.TextReporterQuiet
end
if _G.TEAMCITY then
   var241 = var234.Reporters.TeamCityReporter
   if not var241 then
      var241 = var4
   end
end
var241 = var4
var4 = var241
print("----- All " ... script.Parent.Parent.Name ... " Tests ------")
require(script.Parent.defineLuaFlags)
local var259 = var0.Src
var259 = var4
var3:run({}, var259)
print("----------------------------------")
if var1.RunDeveloperFrameworkTests() then
   print("")
   print("----- All Developer Framework Tests ------")
   local var273 = var0.Packages._Index.DeveloperFramework.DeveloperFramework
   var273 = var4
   var3:run({}, var273)
   print("----------------------------------")
end
if var1.RunningUnderCLI() then
   pcall(function()
      game:GetService("ProcessService"):ExitAsync(0)
   end)
end
