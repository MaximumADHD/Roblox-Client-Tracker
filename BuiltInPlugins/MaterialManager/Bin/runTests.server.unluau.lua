-- Generated with Unluau (https://github.com/valencefun/unluau)
local var0 = script.Parent.Parent
require(script.Parent.commonInit)()
local var1 = require(var0.Src.Util.DebugFlags)
if not var1.RunningUnderCLI() then
   if var1.RunTests() then
      _G.__DEV__ = true
      _G.__ROACT_17_MOCK_SCHEDULER__ = true
      _G.__ROACT_17_INLINE_ACT__ = true
      local var0 = require(var0.Packages.Dev.TestEZ)
      local var1 = var0.Reporters.TextReporter
      local var85 = var1.LogTestsQuiet()
      while var85 do
         local var0 = var0.Reporters.TextReporterQuiet
      end
      if _G.TEAMCITY then
         var85 = var0.Reporters.TeamCityReporter
         if not var85 then
            var85 = var1
         end
      end
      var85 = var1
      var1 = var85
      print("----- All " ... script.Parent.Parent.Name ... " Tests ------")
      require(script.Parent.defineLuaFlags)
      local var103 = var0.Src
      var103 = var1
      var0.TestBootstrap:run({}, var103)
      print("----------------------------------")
   end
end
_G.__DEV__ = true
_G.__ROACT_17_MOCK_SCHEDULER__ = true
_G.__ROACT_17_INLINE_ACT__ = true
local var117 = require(var0.Packages.Dev.TestEZ)
local var3 = var117.Reporters.TextReporter
local var124 = var1.LogTestsQuiet()
while var124 do
   local var0 = var117.Reporters.TextReporterQuiet
end
if _G.TEAMCITY then
   var124 = var117.Reporters.TeamCityReporter
   if not var124 then
      var124 = var3
   end
end
var124 = var3
var3 = var124
print("----- All " ... script.Parent.Parent.Name ... " Tests ------")
require(script.Parent.defineLuaFlags)
local var142 = var0.Src
var142 = var3
var117.TestBootstrap:run({}, var142)
print("----------------------------------")
if var1.RunningUnderCLI() then
   pcall(function()
      game:GetService("ProcessService"):ExitAsync(0)
   end)
end
