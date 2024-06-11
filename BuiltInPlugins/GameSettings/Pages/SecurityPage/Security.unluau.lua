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
local function var12(arg1, arg2)
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
   
   local function fun4(arg1)
      arg1.Secrets = var3:GetSecrets()
   end
   
   return {}
end

local function fun0(arg1, arg2, arg3)
   return function(arg1)
      arg1.HttpEnabled = var3:GetHttpEnabled(var1)
   end
end

local function var13(arg1, arg2)
   local var0 = arg1:getState().Metadata.gameId
   local var1 = arg2.universePermissionsController
   local function fun0(arg1)
      arg1.HttpEnabled = var3:GetHttpEnabled(var1)
   end
   
   local var106 = "HttpEnabled"
   local function fun10(arg1)
      arg1.ThirdPartyPurchaseAllowed = var3:GetThirdPartyPurchasesAllowed(var2)
   end
   
   local var117 = "Secrets"
   local function fun11(arg1)
      arg1.StudioAccessToApisAllowed = var3:GetStudioAccessToApisAllowed(var2)
   end
   
   local function fun12(arg1)
      arg1.ThirdPartyTeleportAllowed = var3:GetThirdPartyTeleportsAllowed(var2)
   end
   
   local var128 = "StudioAccessToApisAllowed"
   local function fun4(arg1)
      arg1.StudioAccessToApisAllowed = var3:GetStudioAccessToApisAllowed(var2)
   end
   
   local function fun14(arg1)
      arg1.Secrets = var3:GetSecrets()
   end
   
   local var138 = "ThirdPartyPurchaseAllowed"
   local function fun6(arg1)
      arg1.StudioAccessToApisAllowed = var3:GetStudioAccessToApisAllowed(var2)
   end
   
   local function fun7(arg1, arg2)
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
      
      local function fun4(arg1)
         arg1.Secrets = var3:GetSecrets()
      end
      
      return {}
   end
   
   local var6 = "ThirdPartyTeleportAllowed"
   local function fun8(arg1)
      arg1.StudioAccessToApisAllowed = var3:GetStudioAccessToApisAllowed(var2)
   end
   
   return { (arg1)
      arg1.StudioAccessToApisAllowed = var3:GetStudioAccessToApisAllowed(var2)
   end }
end

local function var14(arg1, arg2)
   local var0 = {}
   local var189 = arg1("HttpEnabled")
   var0.HttpEnabled = var189
   var189 = arg1
   local var191 = var189("Secrets")
   var0.Secrets = var191
   var191 = arg1
   local var193 = var191("StudioAccessToApisAllowed")
   var0.StudioAccessToApisAllowed = var193
   var193 = arg1
   local var195 = var193("ThirdPartyPurchaseAllowed")
   var0.ThirdPartyPurchaseAllowed = var195
   var195 = arg1
   local var197 = var195("ThirdPartyTeleportAllowed")
   var0.ThirdPartyTeleportAllowed = var197
   var197 = arg2
   local var199 = var197("HttpEnabled")
   var0.HttpEnabledValueChanged = var199
   var199 = arg2
   local var201 = var199("ThirdPartyPurchaseAllowed")
   var0.ThirdPartyPurchaseAllowedValueChanged = var201
   var201 = arg2
   var0.ThirdPartyTeleportAllowedValueChanged = var201("ThirdPartyTeleportAllowed")
   return var0
end

local function var15(arg1, arg2)
   local var0 = {}
   local var209 = arg1("HttpEnabled")
   var0.HttpEnabledChanged = var209
   var209 = arg1
   local var211 = var209("Secrets")
   var0.SecretsChanged = var211
   var211 = arg1
   local var213 = var211("StudioAccessToApisAllowed")
   var0.StudioApiServicesChanged = var213
   var213 = arg1
   local var215 = var213("ThirdPartyPurchaseAllowed")
   var0.ThirdPartyPurchaseChanged = var215
   var215 = arg1
   var0.ThirdPartyTeleportAllowedChanged = var215("ThirdPartyTeleportAllowed")
   return var0
end

local var16 = var1.PureComponent:extend(script.Name)
local function fun27(arg1)
   local var234 = {}
   var234.SettingsLoadJobs = var12
   var234.SettingsSaveJobs = var13
   var234.Title = arg1.props.Localization:getText("General", "Category" ... var11)
   var234.PageId = var11
   function var234.CreateChildren(arg1)
      arg1.HttpEnabled = var3:GetHttpEnabled(var1)
   end
   
   return var1.createElement(var8, var234)
end

function var16.render(arg1)
   local var234 = {}
   var234.SettingsLoadJobs = var12
   var234.SettingsSaveJobs = var13
   var234.Title = arg1.props.Localization:getText("General", "Category" ... var11)
   var234.PageId = var11
   function var234.CreateChildren(arg1)
      arg1.HttpEnabled = var3:GetHttpEnabled(var1)
   end
   
   return var1.createElement(var8, var234)
end

fun27 = var3.withContext
local var245 = {}
var245.Localization = var3.Localization
var245.Stylizer = var3.Stylizer
var16 = fun27(var245)(var16)
local var18 = require(var0.Src.Networking.settingFromState)
var16 = require(var0.Packages.RoactRodux).connect(function(arg1, arg2)
   if not arg1 then
   end
   return var14(function(arg1)
      arg1.HttpEnabled = var3:GetHttpEnabled(var1)
   end, function(arg1)
      arg1.StudioAccessToApisAllowed = var3:GetStudioAccessToApisAllowed(var2)
   end)
end, function(arg1)
   return var15(function(arg1)
      arg1.HttpEnabled = var3:GetHttpEnabled(var1)
   end, arg1)
end)(var16)
var16.LocalizationId = var11
return var16
