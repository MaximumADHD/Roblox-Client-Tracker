-- Generated with Unluau (https://github.com/valencefun/unluau)
local var0 = game:GetService("Workspace")
local var1 = script:FindFirstAncestor("AnimationClipEditor")
local var2 = require(var1.Packages.Framework).ContextServices.Analytics
local var3 = require(var1.Packages.Dev.Rhodium).Element
local var4 = require(var1.RhodiumTests.Test)
local var5 = require(var1.Src.Thunks.LoadAnimationData)
local var6 = require(var1.Src.Thunks.UpdateRootInstance)
local var7 = {}
var7.plugin = nil
function var7.init(arg1)
   assert(var0:FindFirstChild("Dummy"), "Rhodium Testing requires a \'Dummy\' rig in Workspace.")
   var7.plugin = arg1
   var7.delay()
end

function var7.loadAnimation(arg1, arg2)
   local var0 = var2.mock()
   local var52 = var0
   var52 = var0
   local var54 = var6(var52.Dummy, var52)
   arg1:dispatch()
   local var2 = var5(arg2, var0)
   arg1:dispatch()
end

function var7.delay(arg1)
   wait()
end

function var7.clickInstance(arg1)
   local var64 = var3
   var64 = arg1
   var64.new(var64):click()
   var7.delay()
end

function var7.runTest(arg1)
   local var0 = var7
   local var1 = var4.new(var0.plugin)
   var1:destroy()
   if not var1:run(arg1) then
      error(var0)
   end
end

return var7
