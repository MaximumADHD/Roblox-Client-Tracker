-- Generated with Unluau (https://github.com/valencefun/unluau)
local var0 = script.Parent.Parent.Parent
local var1 = require(var0.Packages.Rodux)
local var2 = require(var0.Packages.Cryo).Dictionary.join
local var3 = require(var0.Src.Actions.EventTypeEnabled.SetGamepadEnabled)
local var4 = require(var0.Src.Actions.EventTypeEnabled.SetKeyboardEnabled)
local var5 = require(var0.Src.Actions.EventTypeEnabled.SetMouseClickEnabled)
local var6 = require(var0.Src.Actions.EventTypeEnabled.SetMouseMoveEnabled)
local var7 = require(var0.Src.Actions.EventTypeEnabled.SetTouchEnabled)
local var8 = {}
var8.mouseMove = true
var8.mouseClick = true
var8.keyboard = true
var8.gamepad = true
var8.touch = true
local function var9()
   local var97 = {}
   function var97.SetGamepadEnabled(arg1, arg2)
      local var102 = {}
      var102.gamepad = arg2.gamepadEnabled
      return var2(arg1, var102)
   end
   
   function var97.SetKeyboardEnabled(arg1, arg2)
      local var109 = {}
      var109.keyboard = arg2.keyboardEnabled
      return var2(arg1, var109)
   end
   
   function var97.SetMouseClickEnabled(arg1, arg2)
      local var116 = {}
      var116.mouseClick = arg2.mouseClickEnabled
      return var2(arg1, var116)
   end
   
   function var97.SetMouseMoveEnabled(arg1, arg2)
      local var123 = {}
      var123.mouseMove = arg2.mouseMoveEnabled
      return var2(arg1, var123)
   end
   
   function var97.SetTouchEnabled(arg1, arg2)
      local var130 = {}
      var130.touch = arg2.touchEnabled
      return var2(arg1, var130)
   end
   
   return var1.createReducer(var8, var97)
end

local function fun0(arg1, arg2)
   return function(arg1, arg2)
      local var140 = {}
      var140.gamepad = arg2.gamepadEnabled
      return var2(arg1, var140)
   end
end

local var10 = {}
function var10.makeReducerForName(arg1)
   local var0 = var9()
   return function(arg1, arg2)
      local var150 = {}
      var150.gamepad = arg2.gamepadEnabled
      return var2(arg1, var150)
   end
end

return var10
