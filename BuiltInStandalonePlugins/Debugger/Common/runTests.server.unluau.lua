-- Generated with Unluau (https://github.com/valencefun/unluau)
local var0 = script.Parent.Parent
local var1 = require(var0.Src.Util.DebugFlags)
local var2 = nil
require(script.Parent.defineLuaFlags)
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
      local var46 = script
      require(var46.Parent.defineLuaFlags)
      var46 = var0.Src
      var46 = var1
      var0.TestBootstrap:run({}, var46)
      print("----------------------------------")
      if var1.RunDeveloperFrameworkTests() then
         print("")
         print("----- All DeveloperFramework Tests ------")
         local var59 = var2.TestHelpers
         var59 = var0
         var59.runFrameworkTests(var59, var1)
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
local var93 = script
require(var93.Parent.defineLuaFlags)
var93 = var0.Src
var93 = var4
var3.TestBootstrap:run({}, var93)
print("----------------------------------")
if var1.RunDeveloperFrameworkTests() then
   print("")
   print("----- All DeveloperFramework Tests ------")
   local var106 = var2.TestHelpers
   var106 = var3
   var106.runFrameworkTests(var106, var4)
   print("----------------------------------")
end
if var1.RunningUnderCLI() then
   pcall(function()
      game:GetService("ProcessService"):ExitAsync(0)
   end)
end
