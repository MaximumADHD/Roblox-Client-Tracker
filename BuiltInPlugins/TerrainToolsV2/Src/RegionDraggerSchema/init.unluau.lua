-- Generated with Unluau (https://github.com/valencefun/unluau)
local var0 = script.Parent.Parent
local var12 = require(var0.Packages.Cryo).Dictionary
var12 = require(var0.Packages.DraggerSchemaTemplate.DraggerSchema)
local var14 = {}
var14.addUndoWaypoint = require(script.addUndoWaypoint)
var14.beginBoxSelect = require(script.beginBoxSelect)
var14.dispatchWorldClick = require(script.dispatchWorldClick)
var14.endBoxSelect = require(script.endBoxSelect)
var14.isExclusiveSelectable = require(script.isExclusiveSelectable)
var14.ExtrudeHandlesImplementation = require(script.ExtrudeHandlesImplementation)
var14.getMouseTarget = require(script.getMouseTarget)
var14.Selection = require(script.Selection)
var14.SelectionInfo = require(script.SelectionInfo)
var14.TransformHandlesImplementation = require(script.TransformHandlesImplementation)
var14.updateBoxSelect = require(script.updateBoxSelect)
return var12.join(var12, var14)
