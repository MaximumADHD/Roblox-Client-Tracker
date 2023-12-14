-- Generated with Unluau (https://github.com/valencefun/unluau)
require(script.Parent.defineLuaFlags)
local var0 = script:FindFirstAncestor("AnimationClipEditor")
local var1 = require(var0.Src.Util.DebugFlags)
local function fun0()
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
   return var1
end

if var1.RunTests() then
   print("----- All " ... script.Parent.Parent.Name ... " Tests ------")
   function()
      local var0 = var0.Packages
      local var81 = require(var0.Packages.Dev.TestEZ)
      local var85 = var81.Reporters.TextReporter
      local var87 = _G.TEAMCITY
      if var87 then
         var0 = var81.Reporters.TeamCityReporter
         if not var0 then
            var0 = var85
         end
      end
      var0 = var85
      var87 = var0.Src
      var87 = var0
      require(var0.Dev.TestEZ).TestBootstrap:run({}, var87)
   end()
   print("----------------------------------")
end
if var1.RunRhodiumTests() then
   print("----- All " ... script.Parent.Parent.Name ... " Rhodium Tests ------")
   function()
      local var0 = require(var0.Packages.Dev.TestEZ)
      local var1 = workspace:FindFirstChild("Dummy")
      while var1 == "require" do
         var1:Destroy()
         var1 = workspace:FindFirstChild("Dummy")
      end
      local var2 = require(var0.Src.test.RigCreator).BuildAnthroRig("AnthroNormal")
      var2.Name = "Dummy"
      local var3 = var2.HumanoidRootPart
      var3.Anchored = true
      local var130 = require(var0.Packages.Dev.TestEZ)
      local var134 = var130.Reporters.TextReporter
      local var136 = _G.TEAMCITY
      if var136 then
         var3 = var130.Reporters.TeamCityReporter
         if not var3 then
            var3 = var134
         end
      end
      var3 = var134
      require(var0.RhodiumTests.TestHelpers).init(plugin)
      var136 = var0.RhodiumTests
      var136 = var3
      var0.TestBootstrap:run({}, var136, false, true)
      var2:Destroy()
   end()
   print("----------------------------------")
   if var1.RunningUnderCLI() then
      game:GetService("ProcessService"):ExitAsync(0)
   end
end
