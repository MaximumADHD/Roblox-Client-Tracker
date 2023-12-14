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
      print("----- All " ... var0.Name ... " Tests ------")
      local var346 = script
      require(var346.Parent.defineLuaFlags)
      var346 = var0.Src
      var346 = var1
      var0.TestBootstrap:run({}, var346)
      print("----------------------------------")
   end
end
local var357 = require(var0.Packages.Dev.TestEZ)
local var3 = var357.Reporters
local var4 = var3.TextReporter
if _G.TEAMCITY then
   var3 = var357.Reporters.TeamCityReporter
   if not var3 then
      var3 = var4
   end
end
var3 = var4
print("----- All " ... var0.Name ... " Tests ------")
local var372 = script
require(var372.Parent.defineLuaFlags)
var372 = var0.Src
var372 = var3
var357.TestBootstrap:run({}, var372)
print("----------------------------------")
if var1.RunningUnderCLI() then
   pcall(function()
      game:GetService("ProcessService"):ExitAsync(0)
   end)
end
