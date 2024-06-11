-- Generated with Unluau (https://github.com/valencefun/unluau)
local var0 = script:FindFirstAncestor("AvatarCompatibilityPreviewer")
local var73 = {}
var73.dispatchWorldClick = require(script.dispatchWorldClick)
var73.getMouseTarget = require(script.getMouseTarget)
var73.FreeformDragger = require(script.FreeformDragger)
var73.SelectionInfo = require(script.SelectionInfo)
return require(var0.Packages.Dash).join(require(var0.Packages.DraggerSchemaTemplate.DraggerSchema), var73)
