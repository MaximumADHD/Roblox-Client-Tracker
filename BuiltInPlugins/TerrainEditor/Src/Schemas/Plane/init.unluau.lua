-- Generated with Unluau (https://github.com/valencefun/unluau)
local var0 = script:FindFirstAncestor("TerrainEditor")
local var15 = {}
var15.dispatchWorldClick = require(script.dispatchWorldClick)
var15.getMouseTarget = require(script.getMouseTarget)
var15.Selection = require(script.Selection)
var15.SelectionInfo = require(script.SelectionInfo)
var15.TransformHandlesImplementation = require(script.TransformHandlesImplementation)
return require(var0.Packages.Dash).join(require(var0.Packages.DraggerSchemaTemplate.DraggerSchema), var15)
