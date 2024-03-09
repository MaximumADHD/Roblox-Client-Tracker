-- Generated with Unluau (https://github.com/valencefun/unluau)
local var0 = script:FindFirstAncestor("CompositorDebugger")
local var1 = require(var0.Packages.Framework).Dash
local var2 = var1.join
local var3 = var1.None
local var4 = require(var0.Src.Types)
local var5 = var0.Src.Actions
local var6 = require(var0.Src.Util.Constants)
local var63 = {}
var63.SelectedLayer = nil
local var65 = {}
var65.layerDetails = true
var65.props = true
var65.state = true
var65.watches = true
var63.ExpandedSections = var65
var63.Adornments = {}
var63.PropertyOverrideEvent = nil
var63.LayerAdornmentEvent = nil
var63.DebugPoseEvent = nil
var63.Actor = nil
var63.HistoryField = {}
local var76 = {}
var76.CrossFade = true
var63.LayerFilters = var76
var63.ActiveLayersFilter = false
var63.HistoryOffset = nil
var63.HistoryDuration = var6.DEFAULT_TIMECONTROLS_INTERVAL * var6.FRAMERATE
function require(var5.SetActiveLayersFilter).name(arg1, arg2)
   local var89 = {}
   var89.ActiveLayersFilter = arg2.activeLayersFilter
   return var2(arg1, var89)
end

function require(var5.SetDebugDataEvent).name(arg1, arg2)
   local var97 = {}
   var97.DebugDataEvent = arg2.event
   var97.DebugDataConnection = arg2.connection
   return var2(arg1, var97)
end

function require(var5.SetHistoryField).name(arg1, arg2)
   local var106 = {}
   local var0 = {}
   var0.id = arg2.id
   var0.section = arg2.section
   var0.field = arg2.field
   var106.HistoryField = var0
   return var2(arg1, var106)
end

function require(var5.SetHistoryOffset).name(arg1, arg2)
   local var117 = {}
   var117.HistoryOffset = arg2.historyOffset
   return var2(arg1, var117)
end

function require(var5.SetLayerAdornmentEvent).name(arg1, arg2)
   local var125 = {}
   var125.LayerAdornmentEvent = arg2.event
   return var2(arg1, var125)
end

function require(var5.SetPropertyOverrideEvent).name(arg1, arg2)
   local var133 = {}
   var133.PropertyOverrideEvent = arg2.event
   return var2(arg1, var133)
end

function require(var5.SetActor).name(arg1, arg2)
   local var141 = {}
   var141.Actor = arg2.actor or var3
   return var2(arg1, var141)
end

function require(var5.SetDebugPoseEvent).name(arg1, arg2)
   local var151 = {}
   var151.DebugPoseEvent = arg2.event
   return var2(arg1, var151)
end

function require(var5.SetSelectedLayer).name(arg1, arg2)
   local var159 = {}
   var159.SelectedLayer = arg2.selectedLayer or var3
   return var2(arg1, var159)
end

function require(var5.SetExpandedSections).name(arg1, arg2)
   local var169 = {}
   var169.ExpandedSections = arg2.expandedSections
   return var2(arg1, var169)
end

function require(var5.SetAdornments).name(arg1, arg2)
   local var177 = {}
   var177.Adornments = arg2.adornments
   return var2(arg1, var177)
end

function require(var5.SetLayerFilter).name(arg1, arg2)
   local var185 = {}
   var185.LayerFilters = var2(arg1.LayerFilters, arg2.layerFilters)
   return var2(arg1, var185)
end

return require(var0.Packages.Rodux).createReducer(var63, {})
