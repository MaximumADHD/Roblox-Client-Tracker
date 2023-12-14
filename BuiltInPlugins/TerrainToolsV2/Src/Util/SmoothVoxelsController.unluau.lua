-- Generated with Unluau (https://github.com/valencefun/unluau)
local var0 = script.Parent.Parent.Parent
local var1 = var0.Src.Actions
local var2 = require(var1.SetSmoothVoxelsUpgradePercent)
local var3 = require(var1.SetSmoothVoxelsUpgradePossible)
local var4 = require(var1.SetSmoothVoxelsUpgradeSuggestion)
local var5 = require(var0.Packages.Framework).ContextServices.ContextItem:extend("SmoothVoxelsController")
function var5.new(arg1, arg2, arg3, arg4, arg5)
   local var29 = {}
   var29._changeHistoryService = game:GetService("ChangeHistoryService")
   var29._smoothVoxelsUpgraderService = game:GetService("SmoothVoxelsUpgraderService")
   var29._analytics = arg1
   var29._plugin = arg2
   var29._store = arg3
   var29._terrain = arg4
   var29._mock = arg5
   local var1 = setmetatable(var29, var5)
   if arg5 then
      return var1
   end
   local var2 = var1._terrain:get()
   var1._onSmoothVoxelsUpgradedChanged = var2:GetPropertyChangedSignal("SmoothVoxelsUpgraded"):Connect(function()
      var1:checkUpgradeCapability()
   end)
   var1._onShorelinesUpgradedChanged = var2:GetPropertyChangedSignal("ShorelinesUpgraded"):Connect(function()
      var1:checkUpgradeCapability()
   end)
   var1._dontAsk = var1._plugin:GetSetting("UpgradeSmoothVoxels_DontAsk")
   var1:checkUpgradeCapability()
   return var1
end

function var5.destroy(arg1)
   if arg1._mock then
   end
   if arg1._onSmoothVoxelsUpgradedChanged then
      arg1._onSmoothVoxelsUpgradedChanged:Disconnect()
   end
   if arg1._onShorelinesUpgradedChanged then
      arg1._onShorelinesUpgradedChanged:Disconnect()
   end
end

function var5.dismiss(arg1, arg2)
   if arg1._mock then
   end
   arg1._dismiss = true
   arg1._dontAsk = arg2
   arg1._plugin:SetSetting("UpgradeSmoothVoxels_DontAsk", arg2)
   arg1._analytics:report("upgradeSmoothVoxelsDismiss", arg2)
   arg1:checkUpgradeCapability()
end

function var5.checkUpgradeCapability(arg1)
   if arg1._mock then
   end
   local var0 = arg1._terrain:get()
   local var1 = var0 and var0:CanSmoothVoxelsBeUpgraded()
   local var96 = var3(var1)
   arg1._store:dispatch()
   local var101 = arg1._dontAsk
   if var101 then
      if arg1._dismiss then
         local var0 = arg1._updating
         if var0 then
            var0 = var1
         end
      end
   end
   local var3 = var4(var101)
   arg1._store:dispatch()
end

function var5.cancel(arg1)
   if arg1._mock then
   end
   arg1._updating = false
   local var0 = arg1._store:getState().Tools.SmoothVoxelsUpgradePercent
   if var0 >= 0 then
      if var0 < 1 then
         arg1._smoothVoxelsUpgraderService:Cancel()
         arg1._analytics:report("upgradeSmoothVoxelsCancel")
         local var0 = var2(65535)
         arg1._store:dispatch()
      end
   end
   arg1._smoothVoxelsUpgraderService:Cancel()
   arg1._analytics:report("upgradeSmoothVoxelsCancel")
   local var1 = var2(65535)
   arg1._store:dispatch()
end

function var5.start(arg1, arg2)
   if arg1._mock then
   end
   arg1._updating = true
   arg1._smoothVoxelsUpgraderService:Start()
   arg1._smoothVoxelsUpgraderService.Status:Connect(function()
      var1:checkUpgradeCapability()
   end)
   arg1._analytics:report("upgradeSmoothVoxelsAction", arg2)
end

return var5
