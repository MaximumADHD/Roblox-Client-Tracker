-- Generated with Unluau (https://github.com/valencefun/unluau)
local var0 = script.Parent.Parent
local var1 = var0.Packages.DraggerFramework
local var47 = var1.Utility
var47 = require(var1.Utility.isFTF)
local var51 = var47()
if var51 then
   local var0 = true
end
if false then
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
   print("----- All DraggerFramework Tests ------")
   local var70 = var1
   var70 = var2
   var1:run({}, var70)
   print("----------------------------------")
   print("----- All DraggerSchemaCore Tests ------")
   local var77 = var0.Packages.DraggerSchemaCore
   var77 = var2
   var1:run({}, var77)
   print("----------------------------------")
end
var51 = require(var47.isCli)
if var51() then
   game:GetService("ProcessService"):ExitAsync(0)
end
