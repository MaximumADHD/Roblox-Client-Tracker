-- Generated with Unluau (https://github.com/valencefun/unluau)
local var0 = game:GetService("Workspace")
local var1 = script:FindFirstAncestor("AnimationClipEditor")
local var2 = require(var1.Packages.Framework).ContextServices.Analytics
local var3 = require(var1.Packages.Dev.Rhodium).Element
local var4 = require(var1.RhodiumTests.Test)
local var5 = require(var1.Src.Util.RigInfo)
local var6 = require(var1.Src.Thunks.LoadAnimationData)
local var7 = require(var1.Src.Thunks.UpdateRootInstance)
local var8 = require(var1.LuaFlags.GetFFlagRigInfoCache)
local var9 = {}
var9.plugin = nil
function var9.init(arg1)
   assert(var0:FindFirstChild("Dummy"), "Rhodium Testing requires a \'Dummy\' rig in Workspace.")
   var9.plugin = arg1
   var9.delay()
end

function var9.loadAnimation(arg1, arg2)
   local var0 = var2.mock()
   if var8() then
      var5.clearCache()
   end
   local var139 = var0
   var139 = var0
   local var141 = var7(var139.Dummy, var139)
   arg1:dispatch()
   local var2 = var6(arg2, var0)
   arg1:dispatch()
end

function var9.delay(arg1)
   wait()
end

function var9.clickInstance(arg1)
   local var151 = var3
   var151 = arg1
   var151.new(var151):click()
   var9.delay()
end

function var9.runTest(arg1)
   local var0 = var9
   local var1 = var4.new(var0.plugin)
   var1:destroy()
   if not var1:run(arg1) then
      error(var0)
   end
end

return var9
