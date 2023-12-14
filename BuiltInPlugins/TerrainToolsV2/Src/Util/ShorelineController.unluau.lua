-- Generated with Unluau (https://github.com/valencefun/unluau)
local var0 = script.Parent.Parent.Parent
local var1 = var0.Src.Actions
local var2 = require(var1.SetShorelinesUpgradePercent)
local var3 = require(var1.SetShorelinesUpgradePossible)
local var4 = require(var1.SetShorelinesUpgradeSuggestion)
local var5 = require(var0.Packages.Framework).ContextServices.ContextItem:extend("ShorelineController")
function var5.new(arg1, arg2, arg3, arg4, arg5)
   local var68 = {}
   var68._changeHistoryService = game:GetService("ChangeHistoryService")
   var68._shorelineUpgraderService = game:GetService("ShorelineUpgraderService")
   var68._analytics = arg1
   var68._plugin = arg2
   var68._store = arg3
   var68._terrain = arg4
   var68._mock = arg5
   local var1 = setmetatable(var68, var5)
   if arg5 then
      return var1
   end
   var1._onShorelinesUpgradedChanged = var1._terrain:get():GetPropertyChangedSignal("ShorelinesUpgraded"):Connect(function()
      var1:checkUpgradeCapability()
   end)
   var1._dontAsk = var1._plugin:GetSetting("UpgradeShorelines_DontAsk")
   var1:checkUpgradeCapability()
   return var1
end

function var5.destroy(arg1)
   if arg1._mock then
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
   arg1._plugin:SetSetting("UpgradeShorelines_DontAsk", arg2)
   arg1._analytics:report("upgradeShorelinesDismiss", arg2)
   arg1:checkUpgradeCapability()
end

function var5.checkUpgradeCapability(arg1)
   if arg1._mock then
   end
   local var0 = arg1._terrain:get()
   local var1 = var0 and var0:CanShorelinesBeUpgraded()
   local var125 = var3(var1)
   arg1._store:dispatch()
   local var130 = arg1._dontAsk
   if var130 then
      if arg1._dismiss then
         local var0 = arg1._updating
         if var0 then
            var0 = var1
         end
      end
   end
   local var3 = var4(var130)
   arg1._store:dispatch()
end

function var5.cancel(arg1)
   if arg1._mock then
   end
   arg1._updating = false
   local var0 = arg1._store:getState().Tools.ShorelinesUpgradePercent
   if var0 >= 0 then
      if var0 < 1 then
         arg1._shorelineUpgraderService:Cancel()
         arg1._analytics:report("upgradeShorelinesCancel")
         local var0 = var2(65535)
         arg1._store:dispatch()
      end
   end
   arg1._shorelineUpgraderService:Cancel()
   arg1._analytics:report("upgradeShorelinesCancel")
   local var1 = var2(65535)
   arg1._store:dispatch()
end

function var5.start(arg1, arg2)
   if arg1._mock then
   end
   arg1._updating = true
   arg1._shorelineUpgraderService:Start()
   arg1._shorelineUpgraderService.Status:Connect(function()
      var1:checkUpgradeCapability()
   end)
   arg1._analytics:report("upgradeShorelinesAction", arg2)
end

return var5
