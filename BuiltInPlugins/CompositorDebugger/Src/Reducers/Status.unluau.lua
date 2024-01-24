-- Generated with Unluau (https://github.com/valencefun/unluau)
local var0 = script:FindFirstAncestor("CompositorDebugger")
local var1 = require(var0.Packages.Framework).Dash
local var2 = var1.join
local var3 = var1.None
local var4 = require(var0.Src.Types)
local var5 = var0.Src.Actions
local var52 = {}
var52.SelectedLayer = nil
local var54 = {}
var54.layerDetails = true
var54.props = true
var54.state = true
var54.watches = true
var52.ExpandedSections = var54
var52.Adornments = {}
var52.PropertyOverrideEvent = nil
var52.LayerAdornmentEvent = nil
var52.Actor = nil
var52.HistoryField = {}
local var64 = {}
var64.CrossFade = true
var52.LayerFilters = var64
var52.ActiveLayersFilter = false
function require(var5.SetActiveLayersFilter).name(arg1, arg2)
   local var73 = {}
   var73.ActiveLayersFilter = arg2.activeLayersFilter
   return var2(arg1, var73)
end

function require(var5.SetDebugDataEvent).name(arg1, arg2)
   local var81 = {}
   var81.DebugDataEvent = arg2.event
   var81.DebugDataConnection = arg2.connection
   return var2(arg1, var81)
end

function require(var5.SetHistoryField).name(arg1, arg2)
   local var90 = {}
   local var0 = {}
   var0.id = arg2.id
   var0.section = arg2.section
   var0.field = arg2.field
   var90.HistoryField = var0
   return var2(arg1, var90)
end

function require(var5.SetLayerAdornmentEvent).name(arg1, arg2)
   local var101 = {}
   var101.LayerAdornmentEvent = arg2.event
   return var2(arg1, var101)
end

function require(var5.SetPropertyOverrideEvent).name(arg1, arg2)
   local var109 = {}
   var109.PropertyOverrideEvent = arg2.event
   return var2(arg1, var109)
end

function require(var5.SetActor).name(arg1, arg2)
   local var117 = {}
   var117.Actor = arg2.actor or var3
   return var2(arg1, var117)
end

function require(var5.SetSelectedLayer).name(arg1, arg2)
   local var127 = {}
   var127.SelectedLayer = arg2.selectedLayer or var3
   return var2(arg1, var127)
end

function require(var5.SetExpandedSections).name(arg1, arg2)
   local var137 = {}
   var137.ExpandedSections = arg2.expandedSections
   return var2(arg1, var137)
end

function require(var5.SetAdornments).name(arg1, arg2)
   local var145 = {}
   var145.Adornments = arg2.adornments
   return var2(arg1, var145)
end

function require(var5.SetLayerFilter).name(arg1, arg2)
   local var153 = {}
   var153.LayerFilters = var2(arg1.LayerFilters, arg2.layerFilters)
   return var2(arg1, var153)
end

return require(var0.Packages.Rodux).createReducer(var52, {})
