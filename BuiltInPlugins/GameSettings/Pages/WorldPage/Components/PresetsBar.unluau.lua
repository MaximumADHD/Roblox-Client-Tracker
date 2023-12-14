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
   local var116 = {}
   var116.Name = var3:getText("General", "WorldPresetsClassic")
   var116.Enabled = true
   var116.ShowPressed = true
   var116.Mouse = var2
   local var123 = {}
   var123.ToolTip = var3:getText("General", "WorldPresetsClassicToolTip")
   local var128 = {}
   var128.Gravity = 196.2
   var128.JumpPower = 50
   var128.Walkspeed = 16
   var128.MaxSlopeAngle = 89
   var123.Preset = var128
   var116.Value = var123
   local var133 = {}
   var133.Name = var3:getText("General", "WorldPresetsRealistic")
   var133.Enabled = true
   var133.ShowPressed = true
   var133.Mouse = var2
   local var140 = {}
   var140.ToolTip = var3:getText("General", "WorldPresetsRealisticToolTip")
   local var145 = {}
   var145.Gravity = 35
   var145.JumpPower = 13
   var145.Walkspeed = 16
   var140.Preset = var145
   var133.Value = var140
   local var149 = {}
   var149.Name = var3:getText("General", "WorldPresetsAction")
   var149.Enabled = true
   var149.ShowPressed = true
   var149.Mouse = var2
   local var156 = {}
   var156.ToolTip = var3:getText("General", "WorldPresetsActionToolTip")
   local var7 = {}
   var7.Gravity = 75
   var7.JumpPower = 31
   var7.Walkspeed = 18
   var156.Preset = var7
   var149.Value = var156
   local var168 = {}
   var168.LayoutOrder = var0.LayoutOrder
   var168.Title = var3:getText("General", "TitlePresets")
   function var168.ButtonClicked(arg1)
      var1(arg1.Preset)
   end
   
   var168.Buttons = {}
   return var1.createElement(var3, var168)
end

function var4.render(arg1)
   local var0 = arg1.props
   local var1 = var0.ApplyPreset
   local var2 = var0.Mouse:get()
   local var3 = var0.Localization
   local var116 = {}
   var116.Name = var3:getText("General", "WorldPresetsClassic")
   var116.Enabled = true
   var116.ShowPressed = true
   var116.Mouse = var2
   local var123 = {}
   var123.ToolTip = var3:getText("General", "WorldPresetsClassicToolTip")
   local var128 = {}
   var128.Gravity = 196.2
   var128.JumpPower = 50
   var128.Walkspeed = 16
   var128.MaxSlopeAngle = 89
   var123.Preset = var128
   var116.Value = var123
   local var133 = {}
   var133.Name = var3:getText("General", "WorldPresetsRealistic")
   var133.Enabled = true
   var133.ShowPressed = true
   var133.Mouse = var2
   local var140 = {}
   var140.ToolTip = var3:getText("General", "WorldPresetsRealisticToolTip")
   local var145 = {}
   var145.Gravity = 35
   var145.JumpPower = 13
   var145.Walkspeed = 16
   var140.Preset = var145
   var133.Value = var140
   local var149 = {}
   var149.Name = var3:getText("General", "WorldPresetsAction")
   var149.Enabled = true
   var149.ShowPressed = true
   var149.Mouse = var2
   local var156 = {}
   var156.ToolTip = var3:getText("General", "WorldPresetsActionToolTip")
   local var7 = {}
   var7.Gravity = 75
   var7.JumpPower = 31
   var7.Walkspeed = 18
   var156.Preset = var7
   var149.Value = var156
   local var168 = {}
   var168.LayoutOrder = var0.LayoutOrder
   var168.Title = var3:getText("General", "TitlePresets")
   function var168.ButtonClicked(arg1)
      var1(arg1.Preset)
   end
   
   var168.Buttons = {}
   return var1.createElement(var3, var168)
end

fun3 = var2.withContext
local var177 = {}
var177.Localization = var2.Localization
var177.Mouse = var2.Mouse
var4 = fun3(var177)(var4)
return var4
