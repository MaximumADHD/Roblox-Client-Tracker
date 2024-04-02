-- Generated with Unluau (https://github.com/valencefun/unluau)
local var44 = {}
var44.AnimationConversion = require(script.Parent.AnimationConversion)
var44.CharacterConversion = require(script.Parent.CharacterConversion)
var44.ScriptConversion = require(script.Parent.ScriptConversion)
var44.Adapter = require(script.Parent.Adapter)
var44.PanelSelection = require(script.Parent.PanelSelection)
var44.DataDisplay = require(script.Parent.DataDisplay)
function var44.AvatarType(arg1, arg2)
   if arg2.type == "SetAvatarType" then
      return arg2.avatarType
   end
   return arg1
end

var44.ConversionProgress = require(script.Parent.ConversionProgress)
return require(script:FindFirstAncestor("R15Migrator").Packages.Rodux).combineReducers(var44)
