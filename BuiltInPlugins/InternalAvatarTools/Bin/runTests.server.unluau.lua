-- Generated with Unluau (https://github.com/valencefun/unluau)
local var0 = script.Parent.Parent
require(script.Parent.commonInit)()
local var1 = require(var0.Src.Util.DebugFlags)
if not var1.RunningUnderCLI() then
   if var1.RunTests() then
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
      local var90 = " Tests ------"
      print("----- All " ... var0.Name ... var90)
      local var93 = script
      require(var93.Parent.defineLuaFlags)
      var93 = var0.Src
      var93 = var1
      var90 = var3
      var0.TestBootstrap:run({}, var93, var90)
      print("----------------------------------")
   end
end
local var104 = require(var0.Packages.Dev.TestEZ)
local var3 = var104.Reporters
local var4 = var3.TextReporter
if _G.TEAMCITY then
   var3 = var104.Reporters.TeamCityReporter
   if not var3 then
      var3 = var4
   end
end
var3 = var4
local var5 = {}
var5.showTimingInfo = false
var5.testNamePattern = nil
var5.extraEnvironment = {}
local var120 = " Tests ------"
print("----- All " ... var0.Name ... var120)
local var123 = script
require(var123.Parent.defineLuaFlags)
var123 = var0.Src
var123 = var3
var120 = var5
var104.TestBootstrap:run({}, var123, var120)
print("----------------------------------")
if var1.RunningUnderCLI() then
   pcall(function()
      game:GetService("ProcessService"):ExitAsync(0)
   end)
end
