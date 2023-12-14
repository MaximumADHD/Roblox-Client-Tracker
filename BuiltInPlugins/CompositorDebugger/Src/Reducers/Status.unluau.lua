-- Generated with Unluau (https://github.com/valencefun/unluau)
local var0 = script:FindFirstAncestor("CompositorDebugger")
local var1 = require(var0.Packages.Framework).Dash
local var2 = var1.join
local var3 = var1.None
local var4 = require(var0.Src.Types)
local var5 = var0.Src.Actions
local var46 = {}
var46.SelectedLayer = nil
local var48 = {}
var48.layerDetails = true
var48.props = true
var48.state = true
var48.watches = true
var46.ExpandedSections = var48
var46.Adornments = {}
var46.PropertyOverrideEvent = nil
var46.LayerAdornmentEvent = nil
var46.Actor = nil
var46.HistoryField = {}
function require(var5.SetDebugDataEvent).name(arg1, arg2)
   local var64 = {}
   var64.DebugDataEvent = arg2.event
   var64.DebugDataConnection = arg2.connection
   return var2(arg1, var64)
end

function require(var5.SetHistoryField).name(arg1, arg2)
   local var73 = {}
   local var0 = {}
   var0.id = arg2.id
   var0.section = arg2.section
   var0.field = arg2.field
   var73.HistoryField = var0
   return var2(arg1, var73)
end

function require(var5.SetLayerAdornmentEvent).name(arg1, arg2)
   local var84 = {}
   var84.LayerAdornmentEvent = arg2.event
   return var2(arg1, var84)
end

function require(var5.SetPropertyOverrideEvent).name(arg1, arg2)
   local var92 = {}
   var92.PropertyOverrideEvent = arg2.event
   return var2(arg1, var92)
end

function require(var5.SetActor).name(arg1, arg2)
   local var100 = {}
   var100.Actor = arg2.actor or var3
   return var2(arg1, var100)
end

function require(var5.SetSelectedLayer).name(arg1, arg2)
   local var110 = {}
   var110.SelectedLayer = arg2.selectedLayer or var3
   return var2(arg1, var110)
end

function require(var5.SetExpandedSections).name(arg1, arg2)
   local var120 = {}
   var120.ExpandedSections = arg2.expandedSections
   return var2(arg1, var120)
end

function require(var5.SetAdornments).name(arg1, arg2)
   local var128 = {}
   var128.Adornments = arg2.adornments
   return var2(arg1, var128)
end

return require(var0.Packages.Rodux).createReducer(var46, {})
