-- Generated with Unluau (https://github.com/valencefun/unluau)
local var0 = script.Parent.Parent.Parent
local var1 = require(var0.Packages.Dash)
local var2 = var1.None
local var3 = var1.join
local var4 = var1.joinDeep
local var5 = var1.collect
local var6 = var1.values
local var7 = table.sort
local var8 = require(var0.Src.Util.TabIds)
local var9 = var0.Src.Actions
local function var10(arg1)
   return arg1.Id or arg1.Name
end

local function var11(arg1)
   local var0 = var6(arg1.Children)
   var7(var0, function(arg1, arg2)
      if arg1.Name > arg2.Name then
         local var0 = false
      end
      return true
   end)
   return var0
end

local function fun0(arg1, arg2, arg3)
   local var0 = {}
   var0.Name = arg1
   var0.ClassName = arg2
   var0.Children = arg3 or {}
   var0.GetChildren = var11
   var0.GetDebugId = var10
   return var0
end

local var12 = {}
local var69 = {}
var69.Id = var8.ELEMENTS
var69.Label = "Elements"
local var72 = {}
var72.Id = var8.PROFILE
var72.Label = "Profile"
local var76 = {}
var76.tabs = var12
var76.selectedTab = var12[1]
var76.targets = {}
var76.selectedTargetName = nil
var76.selectedTarget = nil
var76.expandedTargets = {}
function require(var9.SetTab).name(arg1, arg2)
   local var88 = {}
   var88.selectedTab = arg2.tab
   return var3(arg1, var88)
end

function require(var9.ClearTargets).name(arg1, arg2)
   local var96 = {}
   var96.targets = {}
   var96.expandedTargets = {}
   var96.selectedTarget = var2
   return var3(arg1, var96)
end

function require(var9.SelectTarget).name(arg1, arg2)
   local var106 = {}
   var106.selectedTarget = arg2.target
   return var3(arg1, var106)
end

function require(var9.CloseTarget).name(arg1)
   local var113 = {}
   var113.selectedTarget = var2
   return var3(arg1, var113)
end

function require(var9.ToggleTarget).name(arg1, arg2)
   local var121 = {}
   var121.expandedTargets = arg2.change
   return var4(arg1, var121)
end

function require(var9.AddTargets).name(arg1, arg2)
   local var0 = {}
   var0.Plugin = "Plugin"
   var0.CoreGui = "CoreGui"
   var0.Library = "Frame"
   var0.StandalonePlugin = "Plugin"
   local var133 = var0[arg2.sourceKind]
   local var143 = {}
   var143.targets = var5(arg2.targets, function(arg1)
      return arg1.Id or arg1.Name
   end)
   return var4(arg1, var143)
end

return require(var0.Packages.Rodux).createReducer(var76, {})
