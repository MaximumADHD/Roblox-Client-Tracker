-- Generated with Unluau (https://github.com/valencefun/unluau)
local var0 = script.Parent.Parent.Parent
local var1 = require(var0.Packages.Roact)
local var2 = require(var0.Packages.Framework)
local var3 = var2.ContextServices
local var4 = var2.UI.TextLabel
local var5 = var2.Util.LayoutOrderIterator
local var6 = require(var0.Src.Components.ToggleButtonWithTitle)
local var7 = require(var0.Src.Actions.AddChange)
local var8 = require(var0.Src.Components.SettingsPages.SettingsPage)
local var9 = require(var0.Src.Util.Analytics)
local var10 = require(script.Parent.Components.Secrets)
local var11 = script.Name
local var12 = game:GetFastFlag("LocalSecretsInStudio")
local function var13(arg1, arg2)
   local var0 = arg1:getState()
   local var1 = var0.Metadata.game
   local var2 = var0.Metadata.gameId
   local var3 = arg2.universePermissionsController
   local function fun0(arg1)
      arg1.HttpEnabled = var3:GetHttpEnabled(var1)
   end
   
   local function fun1(arg1)
      arg1.StudioAccessToApisAllowed = var3:GetStudioAccessToApisAllowed(var2)
   end
   
   local function fun2(arg1)
      arg1.ThirdPartyPurchaseAllowed = var3:GetThirdPartyPurchasesAllowed(var2)
   end
   
   local function fun3(arg1)
      arg1.ThirdPartyTeleportAllowed = var3:GetThirdPartyTeleportsAllowed(var2)
   end
   
   if var12 then
      local var0 = function(arg1)
         arg1.Secrets = var3:GetSecrets()
      end or nil
   end
   local var4 = nil
   return {}
end

local function fun0(arg1, arg2, arg3)
   return function(arg1)
      arg1.HttpEnabled = var3:GetHttpEnabled(var1)
   end
end

local function var14(arg1, arg2)
   local var0 = arg1:getState().Metadata.gameId
   local var1 = arg2.universePermissionsController
   local function fun8(arg1)
      arg1.HttpEnabled = var3:GetHttpEnabled(var1)
   end
   
   local var114 = "HttpEnabled"
   if var12 then
      local function fun0(arg1)
         arg1.ThirdPartyPurchaseAllowed = var3:GetThirdPartyPurchasesAllowed(var2)
      end
      
      local var0 = "Secrets"
      local var1 = function(arg1)
         arg1.StudioAccessToApisAllowed = var3:GetStudioAccessToApisAllowed(var2)
      end or nil
   end
   local var3 = nil
   local function fun12(arg1)
      arg1.ThirdPartyTeleportAllowed = var3:GetThirdPartyTeleportsAllowed(var2)
   end
   
   local var140 = "StudioAccessToApisAllowed"
   local function fun2(arg1)
      arg1.StudioAccessToApisAllowed = var3:GetStudioAccessToApisAllowed(var2)
   end
   
   local function fun14(arg1)
      arg1.Secrets = var3:GetSecrets()
   end
   
   local var150 = "ThirdPartyPurchaseAllowed"
   local function fun4(arg1)
      arg1.StudioAccessToApisAllowed = var3:GetStudioAccessToApisAllowed(var2)
   end
   
   local function fun5(arg1, arg2)
      local var0 = arg1:getState()
      local var1 = var0.Metadata.game
      local var2 = var0.Metadata.gameId
      local var3 = arg2.universePermissionsController
      local function fun0(arg1)
         arg1.HttpEnabled = var3:GetHttpEnabled(var1)
      end
      
      local function fun1(arg1)
         arg1.StudioAccessToApisAllowed = var3:GetStudioAccessToApisAllowed(var2)
      end
      
      local function fun2(arg1)
         arg1.ThirdPartyPurchaseAllowed = var3:GetThirdPartyPurchasesAllowed(var2)
      end
      
      local function fun3(arg1)
         arg1.ThirdPartyTeleportAllowed = var3:GetThirdPartyTeleportsAllowed(var2)
      end
      
      if var12 then
         local var0 = function(arg1)
            arg1.Secrets = var3:GetSecrets()
         end or nil
      end
      local var4 = nil
      return {}
   end
   
   local var6 = "ThirdPartyTeleportAllowed"
   local function fun6(arg1)
      arg1.StudioAccessToApisAllowed = var3:GetStudioAccessToApisAllowed(var2)
   end
   
   return { (arg1)
      arg1.StudioAccessToApisAllowed = var3:GetStudioAccessToApisAllowed(var2)
   end }
end

local function var15(arg1, arg2)
   local var0 = {}
   local var205 = arg1("HttpEnabled")
   var0.HttpEnabled = var205
   if var12 then
      var205 = arg1
      local var0 = var205("Secrets") or nil
   end
   local var211 = nil
   var0.Secrets = var211
   var211 = arg1
   local var213 = var211("StudioAccessToApisAllowed")
   var0.StudioAccessToApisAllowed = var213
   var213 = arg1
   local var215 = var213("ThirdPartyPurchaseAllowed")
   var0.ThirdPartyPurchaseAllowed = var215
   var215 = arg1
   local var217 = var215("ThirdPartyTeleportAllowed")
   var0.ThirdPartyTeleportAllowed = var217
   var217 = arg2
   local var219 = var217("HttpEnabled")
   var0.HttpEnabledValueChanged = var219
   var219 = arg2
   local var221 = var219("ThirdPartyPurchaseAllowed")
   var0.ThirdPartyPurchaseAllowedValueChanged = var221
   var221 = arg2
   var0.ThirdPartyTeleportAllowedValueChanged = var221("ThirdPartyTeleportAllowed")
   return var0
end

local function var16(arg1, arg2)
   local var0 = {}
   local var229 = arg1("HttpEnabled")
   var0.HttpEnabledChanged = var229
   if var12 then
      var229 = arg1
      local var0 = var229("Secrets") or nil
   end
   local var235 = nil
   var0.SecretsChanged = var235
   var235 = arg1
   local var237 = var235("StudioAccessToApisAllowed")
   var0.StudioApiServicesChanged = var237
   var237 = arg1
   local var239 = var237("ThirdPartyPurchaseAllowed")
   var0.ThirdPartyPurchaseChanged = var239
   var239 = arg1
   var0.ThirdPartyTeleportAllowedChanged = var239("ThirdPartyTeleportAllowed")
   return var0
end

local var17 = var1.PureComponent:extend(script.Name)
local function fun27(arg1)
   local var258 = {}
   var258.SettingsLoadJobs = var13
   var258.SettingsSaveJobs = var14
   var258.Title = arg1.props.Localization:getText("General", "Category" ... var11)
   var258.PageId = var11
   function var258.CreateChildren(arg1)
      arg1.HttpEnabled = var3:GetHttpEnabled(var1)
   end
   
   return var1.createElement(var8, var258)
end

function var17.render(arg1)
   local var258 = {}
   var258.SettingsLoadJobs = var13
   var258.SettingsSaveJobs = var14
   var258.Title = arg1.props.Localization:getText("General", "Category" ... var11)
   var258.PageId = var11
   function var258.CreateChildren(arg1)
      arg1.HttpEnabled = var3:GetHttpEnabled(var1)
   end
   
   return var1.createElement(var8, var258)
end

fun27 = var3.withContext
local var269 = {}
var269.Localization = var3.Localization
var269.Stylizer = var3.Stylizer
var17 = fun27(var269)(var17)
local var19 = require(var0.Src.Networking.settingFromState)
var17 = require(var0.Packages.RoactRodux).connect(function(arg1, arg2)
   if not arg1 then
   end
   return var15(function(arg1)
      arg1.HttpEnabled = var3:GetHttpEnabled(var1)
   end, function(arg1)
      arg1.StudioAccessToApisAllowed = var3:GetStudioAccessToApisAllowed(var2)
   end)
end, function(arg1)
   return var16(function(arg1)
      arg1.HttpEnabled = var3:GetHttpEnabled(var1)
   end, arg1)
end)(var17)
var17.LocalizationId = var11
return var17
