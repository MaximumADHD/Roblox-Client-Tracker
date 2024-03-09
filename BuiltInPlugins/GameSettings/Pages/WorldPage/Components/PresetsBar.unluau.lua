-- Generated with Unluau (https://github.com/valencefun/unluau)
local var0 = script.Parent.Parent.Parent.Parent
local var1 = require(var0.Packages.Roact)
local var2 = require(var0.Packages.Framework).ContextServices
local var3 = require(var0.Packages.RoactStudioWidgets.ButtonBar)
local var4 = var1.PureComponent:extend(script.Name)
local function fun3(arg1)
   local var0 = arg1.props
   local var1 = var0.ApplyPreset
   local var2 = var0.Mouse:get()
   local var3 = var0.Localization
   local var164 = {}
   var164.Name = var3:getText("General", "WorldPresetsClassic")
   var164.Enabled = true
   var164.ShowPressed = true
   var164.Mouse = var2
   local var171 = {}
   var171.ToolTip = var3:getText("General", "WorldPresetsClassicToolTip")
   local var176 = {}
   var176.Gravity = 196.2
   var176.JumpPower = 50
   var176.Walkspeed = 16
   var176.MaxSlopeAngle = 89
   var171.Preset = var176
   var164.Value = var171
   local var181 = {}
   var181.Name = var3:getText("General", "WorldPresetsRealistic")
   var181.Enabled = true
   var181.ShowPressed = true
   var181.Mouse = var2
   local var188 = {}
   var188.ToolTip = var3:getText("General", "WorldPresetsRealisticToolTip")
   local var193 = {}
   var193.Gravity = 35
   var193.JumpPower = 13
   var193.Walkspeed = 16
   var188.Preset = var193
   var181.Value = var188
   local var197 = {}
   var197.Name = var3:getText("General", "WorldPresetsAction")
   var197.Enabled = true
   var197.ShowPressed = true
   var197.Mouse = var2
   local var204 = {}
   var204.ToolTip = var3:getText("General", "WorldPresetsActionToolTip")
   local var7 = {}
   var7.Gravity = 75
   var7.JumpPower = 31
   var7.Walkspeed = 18
   var204.Preset = var7
   var197.Value = var204
   local var216 = {}
   var216.LayoutOrder = var0.LayoutOrder
   var216.Title = var3:getText("General", "TitlePresets")
   function var216.ButtonClicked(arg1)
      var1(arg1.Preset)
   end
   
   var216.Buttons = {}
   return var1.createElement(var3, var216)
end

function var4.render(arg1)
   local var0 = arg1.props
   local var1 = var0.ApplyPreset
   local var2 = var0.Mouse:get()
   local var3 = var0.Localization
   local var164 = {}
   var164.Name = var3:getText("General", "WorldPresetsClassic")
   var164.Enabled = true
   var164.ShowPressed = true
   var164.Mouse = var2
   local var171 = {}
   var171.ToolTip = var3:getText("General", "WorldPresetsClassicToolTip")
   local var176 = {}
   var176.Gravity = 196.2
   var176.JumpPower = 50
   var176.Walkspeed = 16
   var176.MaxSlopeAngle = 89
   var171.Preset = var176
   var164.Value = var171
   local var181 = {}
   var181.Name = var3:getText("General", "WorldPresetsRealistic")
   var181.Enabled = true
   var181.ShowPressed = true
   var181.Mouse = var2
   local var188 = {}
   var188.ToolTip = var3:getText("General", "WorldPresetsRealisticToolTip")
   local var193 = {}
   var193.Gravity = 35
   var193.JumpPower = 13
   var193.Walkspeed = 16
   var188.Preset = var193
   var181.Value = var188
   local var197 = {}
   var197.Name = var3:getText("General", "WorldPresetsAction")
   var197.Enabled = true
   var197.ShowPressed = true
   var197.Mouse = var2
   local var204 = {}
   var204.ToolTip = var3:getText("General", "WorldPresetsActionToolTip")
   local var7 = {}
   var7.Gravity = 75
   var7.JumpPower = 31
   var7.Walkspeed = 18
   var204.Preset = var7
   var197.Value = var204
   local var216 = {}
   var216.LayoutOrder = var0.LayoutOrder
   var216.Title = var3:getText("General", "TitlePresets")
   function var216.ButtonClicked(arg1)
      var1(arg1.Preset)
   end
   
   var216.Buttons = {}
   return var1.createElement(var3, var216)
end

fun3 = var2.withContext
local var225 = {}
var225.Localization = var2.Localization
var225.Mouse = var2.Mouse
var4 = fun3(var225)(var4)
return var4
