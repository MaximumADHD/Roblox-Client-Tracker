-- Generated with Unluau (https://github.com/valencefun/unluau)
local var0 = script:FindFirstAncestor("AvatarCompatibilityPreviewer")
local var158 = {}
var158.dispatchWorldClick = require(script.dispatchWorldClick)
var158.getMouseTarget = require(script.getMouseTarget)
var158.FreeformDragger = require(script.FreeformDragger)
var158.SelectionInfo = require(script.SelectionInfo)
return require(var0.Packages.Dash).join(require(var0.Packages.DraggerSchemaTemplate.DraggerSchema), var158)
