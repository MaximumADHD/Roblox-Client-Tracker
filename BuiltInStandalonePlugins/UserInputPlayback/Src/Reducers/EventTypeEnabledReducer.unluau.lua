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
   local var174 = {}
   function var174.SetGamepadEnabled(arg1, arg2)
      local var179 = {}
      var179.gamepad = arg2.gamepadEnabled
      return var2(arg1, var179)
   end
   
   function var174.SetKeyboardEnabled(arg1, arg2)
      local var186 = {}
      var186.keyboard = arg2.keyboardEnabled
      return var2(arg1, var186)
   end
   
   function var174.SetMouseClickEnabled(arg1, arg2)
      local var193 = {}
      var193.mouseClick = arg2.mouseClickEnabled
      return var2(arg1, var193)
   end
   
   function var174.SetMouseMoveEnabled(arg1, arg2)
      local var200 = {}
      var200.mouseMove = arg2.mouseMoveEnabled
      return var2(arg1, var200)
   end
   
   function var174.SetTouchEnabled(arg1, arg2)
      local var207 = {}
      var207.touch = arg2.touchEnabled
      return var2(arg1, var207)
   end
   
   return var1.createReducer(var8, var174)
end

local function fun0(arg1, arg2)
   return function(arg1, arg2)
      local var217 = {}
      var217.gamepad = arg2.gamepadEnabled
      return var2(arg1, var217)
   end
end

local var10 = {}
function var10.makeReducerForName(arg1)
   local var0 = var9()
   return function(arg1, arg2)
      local var227 = {}
      var227.gamepad = arg2.gamepadEnabled
      return var2(arg1, var227)
   end
end

return var10
