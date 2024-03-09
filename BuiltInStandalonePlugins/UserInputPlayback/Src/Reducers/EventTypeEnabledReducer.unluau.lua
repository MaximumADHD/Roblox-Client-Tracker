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
   local var157 = {}
   function var157.SetGamepadEnabled(arg1, arg2)
      local var162 = {}
      var162.gamepad = arg2.gamepadEnabled
      return var2(arg1, var162)
   end
   
   function var157.SetKeyboardEnabled(arg1, arg2)
      local var169 = {}
      var169.keyboard = arg2.keyboardEnabled
      return var2(arg1, var169)
   end
   
   function var157.SetMouseClickEnabled(arg1, arg2)
      local var176 = {}
      var176.mouseClick = arg2.mouseClickEnabled
      return var2(arg1, var176)
   end
   
   function var157.SetMouseMoveEnabled(arg1, arg2)
      local var183 = {}
      var183.mouseMove = arg2.mouseMoveEnabled
      return var2(arg1, var183)
   end
   
   function var157.SetTouchEnabled(arg1, arg2)
      local var190 = {}
      var190.touch = arg2.touchEnabled
      return var2(arg1, var190)
   end
   
   return var1.createReducer(var8, var157)
end

local function fun0(arg1, arg2)
   return function(arg1, arg2)
      local var200 = {}
      var200.gamepad = arg2.gamepadEnabled
      return var2(arg1, var200)
   end
end

local var10 = {}
function var10.makeReducerForName(arg1)
   local var0 = var9()
   return function(arg1, arg2)
      local var210 = {}
      var210.gamepad = arg2.gamepadEnabled
      return var2(arg1, var210)
   end
end

return var10
