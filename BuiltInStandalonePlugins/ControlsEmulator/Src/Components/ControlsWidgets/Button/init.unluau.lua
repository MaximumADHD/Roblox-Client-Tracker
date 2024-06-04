-- Generated with Unluau (https://github.com/valencefun/unluau)
local var0 = script:FindFirstAncestor("ControlsEmulator")
local var1 = require(var0.Src.Util.MockableProxyServices).StudioDeviceEmulatorService
local var2 = require(var0.Packages.React)
local var3 = Vector3.new(0, 0, 1)
local var4 = Vector3.zero
local var5 = require(var0.Src.Util.Constants).FAKE_CONNECTED_GAMEPAD_ID
return function(arg1)
   local var30 = {}
   var2.Tag = "Widget-Button"
   var30.Text = arg1.Text
   var30.Position = arg1.Position
   var30.Size = arg1.Size
   function var2.Event.Activated()
      var1:SendGamepadEvent(var5, arg1.KeyCode, var3, Vector3.zero)
      var1:SendGamepadEvent(var5, arg1.KeyCode, var4, Vector3.zero)
   end
   
   return var2.createElement("TextButton", var30)
end
