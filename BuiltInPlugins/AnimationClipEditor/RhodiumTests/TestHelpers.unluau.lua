-- Generated with Unluau (https://github.com/valencefun/unluau)
local var0 = game:GetService("Workspace")
local var1 = script:FindFirstAncestor("AnimationClipEditor")
local var2 = require(var1.Packages.Framework).ContextServices.Analytics
local var3 = require(var1.Packages.Dev.Rhodium).Element
local var4 = require(var1.RhodiumTests.Test)
local var5 = require(var1.Src.Util.RigInfo)
local var6 = require(var1.Src.Thunks.LoadAnimationData)
local var7 = require(var1.Src.Thunks.UpdateRootInstance)
local var8 = {}
var8.plugin = nil
function var8.init(arg1)
   assert(var0:FindFirstChild("Dummy"), "Rhodium Testing requires a \'Dummy\' rig in Workspace.")
   var8.plugin = arg1
   var8.delay()
end

function var8.loadAnimation(arg1, arg2)
   local var0 = var2.mock()
   var5.clearCache()
   local var59 = var0
   var59 = var0
   local var61 = var7(var59.Dummy, var59)
   arg1:dispatch()
   local var2 = var6(arg2, var0)
   arg1:dispatch()
end

function var8.delay(arg1)
   wait()
end

function var8.clickInstance(arg1)
   local var71 = var3
   var71 = arg1
   var71.new(var71):click()
   var8.delay()
end

function var8.runTest(arg1)
   local var0 = var8
   local var1 = var4.new(var0.plugin)
   var1:destroy()
   if not var1:run(arg1) then
      error(var0)
   end
end

return var8
