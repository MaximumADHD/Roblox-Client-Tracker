-- Generated with Unluau (https://github.com/valencefun/unluau)
local var0 = script.Parent.Parent
local var1 = require(var0.Src.Utility.DebugFlags)
local var2 = nil
if not var1.RunningUnderCLI() then
   if var1.RunTests() then
      require(script.Parent.commonInit)()
      var2 = require(var0.Packages.Framework)
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
      print("----- All " ... var0.Name ... " Tests ------")
      local var92 = script
      require(var92.Parent.defineLuaTestFlags)
      var92 = var0.Src
      var92 = var1
      var0.TestBootstrap:run({}, var92)
      print("----------------------------------")
      if var1.RunDeveloperFrameworkTests() then
         print("")
         print("----- All DeveloperFramework Tests ------")
         local var105 = var2.TestHelpers
         var105 = var0
         var105.runFrameworkTests(var105, var1)
         print("----------------------------------")
      end
   end
end
require(script.Parent.commonInit)()
var2 = require(var0.Packages.Framework)
local var3 = require(var0.Packages.Dev.TestEZ)
local var4 = var3.Reporters
local var5 = var4.TextReporter
if _G.TEAMCITY then
   var4 = var3.Reporters.TeamCityReporter
   if not var4 then
      var4 = var5
   end
end
var4 = var5
print("----- All " ... var0.Name ... " Tests ------")
local var139 = script
require(var139.Parent.defineLuaTestFlags)
var139 = var0.Src
var139 = var4
var3.TestBootstrap:run({}, var139)
print("----------------------------------")
if var1.RunDeveloperFrameworkTests() then
   print("")
   print("----- All DeveloperFramework Tests ------")
   local var152 = var2.TestHelpers
   var152 = var3
   var152.runFrameworkTests(var152, var4)
   print("----------------------------------")
end
if var1.RunningUnderCLI() then
   pcall(function()
      game:GetService("ProcessService"):ExitAsync(0)
   end)
end
