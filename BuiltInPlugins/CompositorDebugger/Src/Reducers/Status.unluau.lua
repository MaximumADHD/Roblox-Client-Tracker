-- Generated with Unluau (https://github.com/valencefun/unluau)
local var0 = script:FindFirstAncestor("CompositorDebugger")
local var1 = require(var0.Packages.Framework).Dash
local var2 = var1.join
local var3 = var1.None
local var4 = require(var0.Src.Types)
local var5 = var0.Src.Actions
local var6 = require(var0.Src.Util.Constants)
local var66 = {}
var66.ActiveLayersFilter = false
var66.Actor = nil
var66.Adornments = {}
var66.DebugDataConnection = nil
var66.DebugDataEvent = nil
var66.DebugPoseEvent = nil
local var73 = {}
var73.layerDetails = true
var73.props = true
var73.state = true
var73.watches = true
var66.ExpandedSections = var73
var66.HistoryField = {}
var66.HistoryOffset = nil
var66.LayerAdornmentEvent = nil
local var81 = {}
var81.CrossFade = true
var66.LayerFilters = var81
var66.PropertyOverrideEvent = nil
var66.SelectedLayer = nil
var66.SendPayloadAnalytics = false
function require(var5.SetActiveLayersFilter).name(arg1, arg2)
   local var92 = {}
   var92.ActiveLayersFilter = arg2.activeLayersFilter
   return var2(arg1, var92)
end

function require(var5.SetDebugDataEvent).name(arg1, arg2)
   local var100 = {}
   var100.DebugDataEvent = arg2.event
   var100.DebugDataConnection = arg2.connection
   return var2(arg1, var100)
end

function require(var5.SetSendPayloadAnalytics).name(arg1, arg2)
   local var109 = {}
   var109.SendPayloadAnalytics = arg2.enable
   return var2(arg1, var109)
end

function require(var5.SetHistoryField).name(arg1, arg2)
   local var117 = {}
   local var0 = {}
   var0.id = arg2.id
   var0.section = arg2.section
   var0.field = arg2.field
   var117.HistoryField = var0
   return var2(arg1, var117)
end

function require(var5.SetHistoryOffset).name(arg1, arg2)
   local var128 = {}
   var128.HistoryOffset = arg2.historyOffset
   return var2(arg1, var128)
end

function require(var5.SetLayerAdornmentEvent).name(arg1, arg2)
   local var136 = {}
   var136.LayerAdornmentEvent = arg2.event
   return var2(arg1, var136)
end

function require(var5.SetPropertyOverrideEvent).name(arg1, arg2)
   local var144 = {}
   var144.PropertyOverrideEvent = arg2.event
   return var2(arg1, var144)
end

function require(var5.SetActor).name(arg1, arg2)
   local var152 = {}
   var152.Actor = arg2.actor or var3
   return var2(arg1, var152)
end

function require(var5.SetDebugPoseEvent).name(arg1, arg2)
   local var162 = {}
   var162.DebugPoseEvent = arg2.event
   return var2(arg1, var162)
end

function require(var5.SetSelectedLayer).name(arg1, arg2)
   local var170 = {}
   var170.SelectedLayer = arg2.selectedLayer or var3
   return var2(arg1, var170)
end

function require(var5.SetExpandedSections).name(arg1, arg2)
   local var180 = {}
   var180.ExpandedSections = arg2.expandedSections
   return var2(arg1, var180)
end

function require(var5.SetAdornments).name(arg1, arg2)
   local var188 = {}
   var188.Adornments = arg2.adornments
   return var2(arg1, var188)
end

function require(var5.SetLayerFilter).name(arg1, arg2)
   local var196 = {}
   var196.LayerFilters = var2(arg1.LayerFilters, arg2.layerFilters)
   return var2(arg1, var196)
end

return require(var0.Packages.Rodux).createReducer(var66, {})
