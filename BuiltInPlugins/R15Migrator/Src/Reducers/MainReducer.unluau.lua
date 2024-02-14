-- Generated with Unluau (https://github.com/valencefun/unluau)
local var39 = {}
var39.AnimationConversion = require(script.Parent.AnimationConversion)
var39.CharacterConversion = require(script.Parent.CharacterConversion)
var39.ScriptConversion = require(script.Parent.ScriptConversion)
var39.Adapter = require(script.Parent.Adapter)
var39.PanelSelection = require(script.Parent.PanelSelection)
var39.DataDisplay = require(script.Parent.DataDisplay)
function var39.AvatarType(arg1, arg2)
   if arg2.type == "SetAvatarType" then
      return arg2.avatarType
   end
   return arg1
end

return require(script:FindFirstAncestor("R15Migrator").Packages.Rodux).combineReducers(var39)
