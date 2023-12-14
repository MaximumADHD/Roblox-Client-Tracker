-- Generated with Unluau (https://github.com/valencefun/unluau)
local var0 = script.Parent
local var1 = script.Parent.Parent.Parent
local var2 = require(var1.Packages.Roact)
local var3 = require(var1.Packages.Framework)
local var4 = var3.ContextServices
local var5 = require(var1.Src.Actions.AddChange)
local var6 = require(var0.Util.formatNumberForDisplay)
local var7 = require(var1.Src.Components.SettingsPages.SettingsPage)
local var8 = require(var0.Components.PresetsBar)
local var9 = require(var0.Components.JumpSelect)
local var10 = require(var0.Components.NumberInputRow)
local var11 = var3.UI
local var12 = var11.TextLabel
local var13 = var11.TitledFrame
local var14 = var11.Separator
local var15 = script.Name
local function var16(arg1, arg2)
   local var0 = arg1:getState().Metadata.game
   local var1 = arg2.worldRootPhysicsController
   local function fun0(arg1)
      arg1.workspaceJumpPower = var1:getJumpPower(var0)
   end
   
   local function fun1(arg1)
      arg1.workspaceJumpHeight = var1:getJumpHeight(var0)
   end
   
   local function fun2(arg1)
      arg1.workspaceWalkSpeed = var1:getWalkspeed(var0)
   end
   
   local function fun3(arg1)
      arg1.workspaceMaxSlopeAngle = var1:getMaxSlopeAngle(var0)
   end
   
   return { (arg1)
      arg1.workspaceGravity = var1:getGravity(var0)
   end, (arg1)
      arg1.workspaceUseJumpPower = var1:getUseJumpPower(var0)
   end }
end

local function var17(arg1, arg2)
   local var0 = arg1:getState().Metadata.game
   local var1 = arg2.worldRootPhysicsController
   local function fun0(arg1)
      arg1.workspaceGravity = var1:getGravity(var0)
   end
   
   local function fun1(arg1)
      arg1.workspaceUseJumpPower = var1:getUseJumpPower(var0)
   end
   
   local function fun2(arg1)
      arg1.workspaceJumpPower = var1:getJumpPower(var0)
   end
   
   local function fun3(arg1)
      arg1.workspaceJumpHeight = var1:getJumpHeight(var0)
   end
   
   return {}
end

local function var18(arg1, arg2)
   local var0 = {}
   local var128 = arg1("workspaceUseJumpPower")
   var0.WorkspaceUseJumpPower = var128
   var128 = arg1
   local var130 = var128("workspaceJumpPower")
   var0.WorkspaceJumpPower = var130
   var130 = arg1
   local var132 = var130("workspaceJumpHeight")
   var0.WorkspaceJumpHeight = var132
   var132 = arg1
   local var134 = var132("workspaceGravity")
   var0.WorkspaceGravity = var134
   var134 = arg1
   local var136 = var134("workspaceWalkSpeed")
   var0.WorkspaceWalkSpeed = var136
   var136 = arg1
   var0.WorkspaceMaxSlopeAngle = var136("workspaceMaxSlopeAngle")
   return var0
end

local function var19(arg1)
   local var0 = {}
   local var143 = arg1("workspaceUseJumpPower")
   var0.WorkspaceUseJumpPowerChanged = var143
   var143 = arg1
   local var145 = var143("workspaceJumpPower")
   var0.WorkspaceJumpPowerChanged = var145
   var145 = arg1
   local var147 = var145("workspaceJumpHeight")
   var0.WorkspaceJumpHeightChanged = var147
   var147 = arg1
   local var149 = var147("workspaceGravity")
   var0.WorkspaceGravityChanged = var149
   var149 = arg1
   local var151 = var149("workspaceWalkSpeed")
   var0.WorkspaceWalkSpeedChanged = var151
   var151 = arg1
   var0.WorkspaceMaxSlopeAngleChanged = var151("workspaceMaxSlopeAngle")
   return var0
end

local var20 = var2.PureComponent:extend("World")
local function fun15(arg1)
   local var169 = {}
   var169.SettingsLoadJobs = var16
   var169.SettingsSaveJobs = var17
   var169.Title = arg1.props.Localization:getText("General", "Category" ... var15)
   var169.PageId = var15
   function var169.CreateChildren(arg1)
      arg1.workspaceGravity = var1:getGravity(var0)
   end
   
   return var2.createElement(var7, var169)
end

function var20.render(arg1)
   local var169 = {}
   var169.SettingsLoadJobs = var16
   var169.SettingsSaveJobs = var17
   var169.Title = arg1.props.Localization:getText("General", "Category" ... var15)
   var169.PageId = var15
   function var169.CreateChildren(arg1)
      arg1.workspaceGravity = var1:getGravity(var0)
   end
   
   return var2.createElement(var7, var169)
end

fun15 = var4.withContext
local var180 = {}
var180.Localization = var4.Localization
var180.WorldRootPhysics = require(var0.ContextServices.WorldRootPhysics)
var20 = fun15(var180)(var20)
local var22 = require(var1.Src.Networking.settingFromState)
var20 = require(var1.Packages.RoactRodux).connect(function(arg1, arg2)
   if not arg1 then
   end
   return var18(function(arg1)
      arg1.workspaceGravity = var1:getGravity(var0)
   end, arg1)
end, function(arg1)
   return var19(function(arg1)
      arg1.workspaceGravity = var1:getGravity(var0)
   end)
end)(var20)
var20.LocalizationId = var15
return var20
