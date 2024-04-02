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
   local var53 = {}
   function var53.SetGamepadEnabled(arg1, arg2)
      local var58 = {}
      var58.gamepad = arg2.gamepadEnabled
      return var2(arg1, var58)
   end
   
   function var53.SetKeyboardEnabled(arg1, arg2)
      local var65 = {}
      var65.keyboard = arg2.keyboardEnabled
      return var2(arg1, var65)
   end
   
   function var53.SetMouseClickEnabled(arg1, arg2)
      local var72 = {}
      var72.mouseClick = arg2.mouseClickEnabled
      return var2(arg1, var72)
   end
   
   function var53.SetMouseMoveEnabled(arg1, arg2)
      local var79 = {}
      var79.mouseMove = arg2.mouseMoveEnabled
      return var2(arg1, var79)
   end
   
   function var53.SetTouchEnabled(arg1, arg2)
      local var86 = {}
      var86.touch = arg2.touchEnabled
      return var2(arg1, var86)
   end
   
   return var1.createReducer(var8, var53)
end

local function fun0(arg1, arg2)
   return function(arg1, arg2)
      local var96 = {}
      var96.gamepad = arg2.gamepadEnabled
      return var2(arg1, var96)
   end
end

local var10 = {}
function var10.makeReducerForName(arg1)
   local var0 = var9()
   return function(arg1, arg2)
      local var106 = {}
      var106.gamepad = arg2.gamepadEnabled
      return var2(arg1, var106)
   end
end

return var10
