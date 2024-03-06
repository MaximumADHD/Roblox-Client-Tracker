-- Generated with Unluau (https://github.com/valencefun/unluau)
local var0 = script.Parent.Parent
local var1 = require(var0.Src.Util.DebugFlags)
if not var1.RunningUnderCLI() then
   if var1.RunTests() then
      local var0 = require(var0.Packages.Dev.TestEZ)
      local var1 = var0.TestBootstrap
      local var2 = var0.Reporters.TextReporter
      local var189 = var1.LogTestsQuiet()
      if var189 then
         local var0 = var0.Reporters.TextReporterQuiet
      end
      if _G.TEAMCITY then
         var189 = var0.Reporters.TeamCityReporter
         if not var189 then
            var189 = var2
         end
      end
      var189 = var2
      var2 = var189
      print("----- All " ... script.Parent.Parent.Name ... " Tests ------")
      require(script.Parent.defineLuaFlags)
      local var207 = var0.Src
      var207 = var2
      var1:run({}, var207)
      print("----------------------------------")
      if var1.RunDeveloperFrameworkTests() then
         print("")
         print("----- All Developer Framework Tests ------")
         local var221 = var0.Packages._Index.DeveloperFramework.DeveloperFramework
         var221 = var2
         var1:run({}, var221)
         print("----------------------------------")
      end
   end
end
local var229 = require(var0.Packages.Dev.TestEZ)
local var3 = var229.TestBootstrap
local var4 = var229.Reporters.TextReporter
local var236 = var1.LogTestsQuiet()
if var236 then
   local var0 = var229.Reporters.TextReporterQuiet
end
if _G.TEAMCITY then
   var236 = var229.Reporters.TeamCityReporter
   if not var236 then
      var236 = var4
   end
end
var236 = var4
var4 = var236
print("----- All " ... script.Parent.Parent.Name ... " Tests ------")
require(script.Parent.defineLuaFlags)
local var254 = var0.Src
var254 = var4
var3:run({}, var254)
print("----------------------------------")
if var1.RunDeveloperFrameworkTests() then
   print("")
   print("----- All Developer Framework Tests ------")
   local var268 = var0.Packages._Index.DeveloperFramework.DeveloperFramework
   var268 = var4
   var3:run({}, var268)
   print("----------------------------------")
end
if var1.RunningUnderCLI() then
   pcall(function()
      game:GetService("ProcessService"):ExitAsync(0)
   end)
end
