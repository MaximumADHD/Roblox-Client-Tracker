-- Generated with Unluau (https://github.com/valencefun/unluau)
local var89 = {}
var89.AnimationConversion = require(script.Parent.AnimationConversion)
var89.CharacterConversion = require(script.Parent.CharacterConversion)
var89.ScriptConversion = require(script.Parent.ScriptConversion)
var89.Adapter = require(script.Parent.Adapter)
function var89.AvatarType(arg1, arg2)
   if arg2.type == "SetAvatarType" then
      return arg2.avatarType
   end
   return arg1
end

return require(script.Parent.Parent.Parent.Packages.Rodux).combineReducers(var89)
