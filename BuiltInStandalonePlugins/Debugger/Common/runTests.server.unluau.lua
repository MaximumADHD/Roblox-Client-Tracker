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
      local var239 = script
      require(var239.Parent.defineLuaFlags)
      var239 = var0.Src
      var239 = var1
      var0.TestBootstrap:run({}, var239)
      print("----------------------------------")
      if var1.RunDeveloperFrameworkTests() then
         print("")
         print("----- All DeveloperFramework Tests ------")
         local var252 = var2.TestHelpers
         var252 = var0
         var252.runFrameworkTests(var252, var1)
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
local var286 = script
require(var286.Parent.defineLuaFlags)
var286 = var0.Src
var286 = var4
var3.TestBootstrap:run({}, var286)
print("----------------------------------")
if var1.RunDeveloperFrameworkTests() then
   print("")
   print("----- All DeveloperFramework Tests ------")
   local var299 = var2.TestHelpers
   var299 = var3
   var299.runFrameworkTests(var299, var4)
   print("----------------------------------")
end
if var1.RunningUnderCLI() then
   pcall(function()
      game:GetService("ProcessService"):ExitAsync(0)
   end)
end
