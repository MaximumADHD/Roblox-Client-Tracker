-- Generated with Unluau (https://github.com/valencefun/unluau)
local var0 = script:FindFirstAncestor("AvatarCompatibilityPreviewer")
local var64 = {}
var64.dispatchWorldClick = require(script.dispatchWorldClick)
var64.getMouseTarget = require(script.getMouseTarget)
var64.FreeformDragger = require(script.FreeformDragger)
var64.SelectionInfo = require(script.SelectionInfo)
return require(var0.Packages.Dash).join(require(var0.Packages.DraggerSchemaTemplate.DraggerSchema), var64)
