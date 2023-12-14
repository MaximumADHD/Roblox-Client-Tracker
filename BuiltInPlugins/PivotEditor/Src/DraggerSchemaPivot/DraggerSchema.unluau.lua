-- Generated with Unluau (https://github.com/valencefun/unluau)
local var0 = require(script.Parent.Parent.Parent.Packages.DraggerSchemaCore.DraggerSchema)
local var1 = {}
var1.SelectionInfo = require(script.Parent.SelectionInfo)
var1.BoundsChangedTracker = require(script.Parent.BoundsChangedTracker)
var1.dispatchWorldClick = require(script.Parent.dispatchWorldClick)
var1.MoveHandlesImplementation = require(script.Parent.MoveHandlesImplementation)
var1.RotateHandlesImplementation = require(script.Parent.RotateHandlesImplementation)
var1.FreeformDragger = require(script.Parent.FreeformDragger)
var1.isExclusiveSelectable = var0.isExclusiveSelectable
var1.getMouseTarget = var0.getMouseTarget
var1.getNextSelectables = var0.getNextSelectables
var1.getSelectableWithCache = var0.getSelectableWithCache
var1.Selection = var0.Selection
var1.getSelectionBoxComponent = var0.getSelectionBoxComponent
var1.HoverEscapeDetector = var0.HoverEscapeDetector
var1.setHover = var0.setHover
var1.setActivePoint = var0.setActivePoint
var1.beginBoxSelect = var0.beginBoxSelect
var1.endBoxSelect = var0.endBoxSelect
var1.addUndoWaypoint = var0.addUndoWaypoint
return var1
