-- Generated with Unluau (https://github.com/valencefun/unluau)
local var0 = script.Parent.Parent
require(var0.Src.Util.commonInit)()
local var1 = require(var0.Src.Util.DebugFlags)
if not var1.RunningUnderCLI() then
   if var1.RunTests() then
      _G.__DEV__ = true
      _G.__ROACT_17_MOCK_SCHEDULER__ = true
      _G.__ROACT_17_INLINE_ACT__ = true
      local var0 = require(var0.Packages.Dev.TestEZ)
      local var1 = var0.Reporters.TextReporter
      local var76 = var1.LogTestsQuiet()
      while var76 do
         local var0 = var0.Reporters.TextReporterQuiet
      end
      if _G.TEAMCITY then
         var76 = var0.Reporters.TeamCityReporter
         if not var76 then
            var76 = var1
         end
      end
      var76 = var1
      var1 = var76
      print("----- All " ... script.Parent.Parent.Name ... " Tests ------")
      require(script.Parent.defineLuaFlags)
      local var94 = var0.Src
      var94 = var1
      var0.TestBootstrap:run({}, var94)
      print("----------------------------------")
   end
end
_G.__DEV__ = true
_G.__ROACT_17_MOCK_SCHEDULER__ = true
_G.__ROACT_17_INLINE_ACT__ = true
local var108 = require(var0.Packages.Dev.TestEZ)
local var3 = var108.Reporters.TextReporter
local var115 = var1.LogTestsQuiet()
while var115 do
   local var0 = var108.Reporters.TextReporterQuiet
end
if _G.TEAMCITY then
   var115 = var108.Reporters.TeamCityReporter
   if not var115 then
      var115 = var3
   end
end
var115 = var3
var3 = var115
print("----- All " ... script.Parent.Parent.Name ... " Tests ------")
require(script.Parent.defineLuaFlags)
local var133 = var0.Src
var133 = var3
var108.TestBootstrap:run({}, var133)
print("----------------------------------")
if var1.RunningUnderCLI() then
   pcall(function()
      game:GetService("ProcessService"):ExitAsync(0)
   end)
end
