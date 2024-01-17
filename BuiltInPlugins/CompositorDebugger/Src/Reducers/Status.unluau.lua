-- Generated with Unluau (https://github.com/valencefun/unluau)
local var0 = script:FindFirstAncestor("CompositorDebugger")
local var1 = require(var0.Packages.Framework).Dash
local var2 = var1.join
local var3 = var1.None
local var4 = require(var0.Src.Types)
local var5 = var0.Src.Actions
local var49 = {}
var49.SelectedLayer = nil
local var51 = {}
var51.layerDetails = true
var51.props = true
var51.state = true
var51.watches = true
var49.ExpandedSections = var51
var49.Adornments = {}
var49.PropertyOverrideEvent = nil
var49.LayerAdornmentEvent = nil
var49.Actor = nil
var49.HistoryField = {}
local var61 = {}
var61.CrossFade = true
var49.LayerFilters = var61
function require(var5.SetDebugDataEvent).name(arg1, arg2)
   local var69 = {}
   var69.DebugDataEvent = arg2.event
   var69.DebugDataConnection = arg2.connection
   return var2(arg1, var69)
end

function require(var5.SetHistoryField).name(arg1, arg2)
   local var78 = {}
   local var0 = {}
   var0.id = arg2.id
   var0.section = arg2.section
   var0.field = arg2.field
   var78.HistoryField = var0
   return var2(arg1, var78)
end

function require(var5.SetLayerAdornmentEvent).name(arg1, arg2)
   local var89 = {}
   var89.LayerAdornmentEvent = arg2.event
   return var2(arg1, var89)
end

function require(var5.SetPropertyOverrideEvent).name(arg1, arg2)
   local var97 = {}
   var97.PropertyOverrideEvent = arg2.event
   return var2(arg1, var97)
end

function require(var5.SetActor).name(arg1, arg2)
   local var105 = {}
   var105.Actor = arg2.actor or var3
   return var2(arg1, var105)
end

function require(var5.SetSelectedLayer).name(arg1, arg2)
   local var115 = {}
   var115.SelectedLayer = arg2.selectedLayer or var3
   return var2(arg1, var115)
end

function require(var5.SetExpandedSections).name(arg1, arg2)
   local var125 = {}
   var125.ExpandedSections = arg2.expandedSections
   return var2(arg1, var125)
end

function require(var5.SetAdornments).name(arg1, arg2)
   local var133 = {}
   var133.Adornments = arg2.adornments
   return var2(arg1, var133)
end

function require(var5.SetLayerFilter).name(arg1, arg2)
   local var141 = {}
   var141.LayerFilters = var2(arg1.LayerFilters, arg2.layerFilters)
   return var2(arg1, var141)
end

return require(var0.Packages.Rodux).createReducer(var49, {})
