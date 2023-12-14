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
local var10 = script.Name
local function var11(arg1, arg2)
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
   
   return {}
end

local function fun0(arg1, arg2, arg3)
   return function(arg1)
      arg1.HttpEnabled = var3:GetHttpEnabled(var1)
   end
end

local function var12(arg1, arg2)
   local var0 = arg1:getState().Metadata.gameId
   local var1 = arg2.universePermissionsController
   local function fun7(arg1)
      arg1.HttpEnabled = var3:GetHttpEnabled(var1)
   end
   
   local var96 = "HttpEnabled"
   local function fun1(arg1)
      arg1.StudioAccessToApisAllowed = var3:GetStudioAccessToApisAllowed(var2)
   end
   
   local function fun9(arg1)
      arg1.ThirdPartyPurchaseAllowed = var3:GetThirdPartyPurchasesAllowed(var2)
   end
   
   local var107 = "StudioAccessToApisAllowed"
   local function fun3(arg1)
      arg1.StudioAccessToApisAllowed = var3:GetStudioAccessToApisAllowed(var2)
   end
   
   local function fun11(arg1)
      arg1.ThirdPartyTeleportAllowed = var3:GetThirdPartyTeleportsAllowed(var2)
   end
   
   local var118 = "ThirdPartyPurchaseAllowed"
   local function fun5(arg1)
      arg1.StudioAccessToApisAllowed = var3:GetStudioAccessToApisAllowed(var2)
   end
   
   local function fun6(arg1, arg2)
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
      
      return {}
   end
   
   local var5 = "ThirdPartyTeleportAllowed"
   local function fun7(arg1)
      arg1.StudioAccessToApisAllowed = var3:GetStudioAccessToApisAllowed(var2)
   end
   
   return {}
end

local function var13(arg1, arg2)
   local var0 = {}
   local var165 = arg1("HttpEnabled")
   var0.HttpEnabled = var165
   var165 = arg1
   local var167 = var165("StudioAccessToApisAllowed")
   var0.StudioAccessToApisAllowed = var167
   var167 = arg1
   local var169 = var167("ThirdPartyPurchaseAllowed")
   var0.ThirdPartyPurchaseAllowed = var169
   var169 = arg1
   local var171 = var169("ThirdPartyTeleportAllowed")
   var0.ThirdPartyTeleportAllowed = var171
   var171 = arg2
   local var173 = var171("HttpEnabled")
   var0.HttpEnabledValueChanged = var173
   var173 = arg2
   local var175 = var173("ThirdPartyPurchaseAllowed")
   var0.ThirdPartyPurchaseAllowedValueChanged = var175
   var175 = arg2
   var0.ThirdPartyTeleportAllowedValueChanged = var175("ThirdPartyTeleportAllowed")
   return var0
end

local function var14(arg1, arg2)
   local var0 = {}
   local var183 = arg1("HttpEnabled")
   var0.HttpEnabledChanged = var183
   var183 = arg1
   local var185 = var183("StudioAccessToApisAllowed")
   var0.StudioApiServicesChanged = var185
   var185 = arg1
   local var187 = var185("ThirdPartyPurchaseAllowed")
   var0.ThirdPartyPurchaseChanged = var187
   var187 = arg1
   var0.ThirdPartyTeleportAllowedChanged = var187("ThirdPartyTeleportAllowed")
   return var0
end

local var15 = var1.PureComponent:extend(script.Name)
local function fun23(arg1)
   local var206 = {}
   var206.SettingsLoadJobs = var11
   var206.SettingsSaveJobs = var12
   var206.Title = arg1.props.Localization:getText("General", "Category" ... var10)
   var206.PageId = var10
   function var206.CreateChildren(arg1)
      arg1.HttpEnabled = var3:GetHttpEnabled(var1)
   end
   
   return var1.createElement(var8, var206)
end

function var15.render(arg1)
   local var206 = {}
   var206.SettingsLoadJobs = var11
   var206.SettingsSaveJobs = var12
   var206.Title = arg1.props.Localization:getText("General", "Category" ... var10)
   var206.PageId = var10
   function var206.CreateChildren(arg1)
      arg1.HttpEnabled = var3:GetHttpEnabled(var1)
   end
   
   return var1.createElement(var8, var206)
end

fun23 = var3.withContext
local var217 = {}
var217.Localization = var3.Localization
var217.Stylizer = var3.Stylizer
var15 = fun23(var217)(var15)
local var17 = require(var0.Src.Networking.settingFromState)
var15 = require(var0.Packages.RoactRodux).connect(function(arg1, arg2)
   if not arg1 then
   end
   return var13(function(arg1)
      arg1.HttpEnabled = var3:GetHttpEnabled(var1)
   end, function(arg1)
      arg1.StudioAccessToApisAllowed = var3:GetStudioAccessToApisAllowed(var2)
   end)
end, function(arg1)
   return var14(function(arg1)
      arg1.HttpEnabled = var3:GetHttpEnabled(var1)
   end, arg1)
end)(var15)
var15.LocalizationId = var10
return var15
