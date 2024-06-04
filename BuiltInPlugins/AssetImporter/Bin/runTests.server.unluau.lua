-- Generated with Unluau (https://github.com/valencefun/unluau)
local var0 = script:FindFirstAncestor("AssetImporter")
local var1 = require(var0.Src.Utility.DebugFlags)
local var2 = require(var0.Src.Utility.isFTF)
local var3 = nil
if not var1.RunningUnderCLI() then
   if var1.RunTests() then
      require(script.Parent.commonInit)()
      var3 = require(var0.Packages.Framework)
      local var0 = require(var0.Packages.Dev.TestEZ)
      local var1 = var0.TestBootstrap
      local var2 = var0.Reporters
      local var3 = var2.TextReporter
      if _G.TEAMCITY then
         var2 = var0.Reporters.TeamCityReporter
         if not var2 then
            var2 = var3
         end
      end
      var2 = var3
      print("----- All " ... var0.Name ... " Tests ------")
      local var98 = script
      require(var98.Parent.defineLuaTestFlags)
      var98 = var0.Src
      var98 = var2
      var1:run({}, var98)
      print("----------------------------------")
      local var106 = var1.RunDeveloperFrameworkTests()
      if var106 then
         print("")
         print("----- All DeveloperFramework Tests ------")
         local var111 = var3.TestHelpers
         var111 = var0
         var111.runFrameworkTests(var111, var2)
         print("----------------------------------")
      end
      var106 = var2
      if var106() then
         print("")
         print("----- All FTF Tests ------")
         local var122 = var0.FTFTest
         var122 = var2
         var1:run({}, var122)
         print("----------------------------------")
      end
   end
end
require(script.Parent.commonInit)()
var3 = require(var0.Packages.Framework)
local var4 = require(var0.Packages.Dev.TestEZ)
local var5 = var4.TestBootstrap
local var6 = var4.Reporters
local var7 = var6.TextReporter
if _G.TEAMCITY then
   var6 = var4.Reporters.TeamCityReporter
   if not var6 then
      var6 = var7
   end
end
var6 = var7
print("----- All " ... var0.Name ... " Tests ------")
local var155 = script
require(var155.Parent.defineLuaTestFlags)
var155 = var0.Src
var155 = var6
var5:run({}, var155)
print("----------------------------------")
local var163 = var1.RunDeveloperFrameworkTests()
if var163 then
   print("")
   print("----- All DeveloperFramework Tests ------")
   local var168 = var3.TestHelpers
   var168 = var4
   var168.runFrameworkTests(var168, var6)
   print("----------------------------------")
end
var163 = var2
if var163() then
   print("")
   print("----- All FTF Tests ------")
   local var179 = var0.FTFTest
   var179 = var6
   var5:run({}, var179)
   print("----------------------------------")
end
if var1.RunningUnderCLI() then
   pcall(function()
      game:GetService("ProcessService"):ExitAsync(0)
   end)
end
