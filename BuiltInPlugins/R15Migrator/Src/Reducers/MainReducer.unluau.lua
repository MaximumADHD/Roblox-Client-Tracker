-- Generated with Unluau (https://github.com/valencefun/unluau)
local var94 = {}
var94.AnimationConversion = require(script.Parent.AnimationConversion)
var94.CharacterConversion = require(script.Parent.CharacterConversion)
var94.ScriptConversion = require(script.Parent.ScriptConversion)
var94.Adapter = require(script.Parent.Adapter)
var94.PanelSelection = require(script.Parent.PanelSelection)
function var94.AvatarType(arg1, arg2)
   if arg2.type == "SetAvatarType" then
      return arg2.avatarType
   end
   return arg1
end

return require(script:FindFirstAncestor("R15Migrator").Packages.Rodux).combineReducers(var94)
