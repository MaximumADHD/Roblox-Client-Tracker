-- Generated with Unluau (https://github.com/valencefun/unluau)
local var0 = script.Parent.Parent
local var1 = script.Parent.Parent.Parent.Parent
local var2 = require(var1.Packages.Roact)
local var3 = require(var1.Packages.Framework)
local var4 = var3.ContextServices
local var5 = var3.UI.TextInput
local var6 = require(var0.Util.formatNumberForDisplay)
local var7 = var1.Packages.RoactStudioWidgets
local var8 = require(var7.RadioButtonSet)
local var9 = require(var7.Text)
local var10 = var2.PureComponent:extend("JumpSelect")
local function fun5(arg1)
   local var0 = arg1.props
   local var1 = var0.UseJumpPower
   local var2 = var0.JumpPower
   local var3 = var0.JumpHeight
   local var4 = var0.SetUseJumpPower
   local var5 = var0.SetJumpPower
   local var6 = var0.SetJumpHeight
   local var7 = var0.Localization
   local var8 = UDim.new(0, 10)
   local var63 = {}
   var63.LayoutOrder = var0.LayoutOrder
   var63.Size = UDim2.new(1, 0, 0, 50)
   var63.BackgroundTransparency = 1
   local var71 = {}
   local var75 = {}
   var75.Title = var7:getText("General", "TitleJump")
   local var81 = {}
   var81.Id = false
   var81.Title = var7:getText("General", "JumpHeight")
   local var87 = {}
   var87.Id = true
   var87.Title = var7:getText("General", "JumpPower")
   var75.Buttons = {}
   var75.Enabled = true
   var75.Selected = var1
   var75.Mouse = var0.Mouse:get()
   function var75.SelectionChanged(arg1)
      var4(arg1.Id)
   end
   
   var71.JumpSelect = var2.createElement(var8, var75)
   local var101 = {}
   var101.Position = UDim2.new(0, 340, 0, 0)
   var101.BackgroundTransparency = 1
   local var109 = {}
   local var113 = {}
   var113.Padding = var8
   var113.SortOrder = Enum.SortOrder.LayoutOrder
   var109.Layout = var2.createElement("UIListLayout", var113)
   local var119 = {}
   var119.Disabled = var1
   var119.LayoutOrder = 1
   function var119.OnFocusLost()
      var6(math.clamp(var3, 0, ∞))
   end
   
   function var119.OnTextChanged(arg1)
      local var131 = tonumber(arg1)
      var6(arg1)
   end
   
   var119.Size = UDim2.fromOffset(150, 20)
   var119.Text = var6(var3)
   var109.JumpHeightInputBox = var2.createElement(var5, var119)
   local var145 = {}
   var145.Disabled = var1
   var145.LayoutOrder = 2
   function var145.OnFocusLost()
      var5(math.clamp(var2, 0, 1000))
   end
   
   function var145.OnTextChanged(arg1)
      local var158 = tonumber(arg1)
      var5(arg1)
   end
   
   var145.Size = UDim2.new(0, 150, 0, 20)
   var145.Text = var6(var2)
   var109.JumpPowerInputBox = var2.createElement(var5, var145)
   var71.JumpInput = var2.createElement("Frame", var101, var109)
   local var175 = {}
   var175.Position = UDim2.new(0, 510, 0, 0)
   var175.BackgroundTransparency = 1
   local var183 = {}
   local var187 = {}
   var187.Padding = var8
   var187.SortOrder = Enum.SortOrder.LayoutOrder
   var183.Layout = var2.createElement("UIListLayout", var187)
   local var193 = {}
   var193.Enabled = var1
   var193.Size = UDim2.new(1, 0, 0, 20)
   local var10 = var6(var0.WorldRootPhysics:get().convertStudsToMeters(var3))
   var193.Text = var7:getText("General", "UnitsMeters1", {})
   var183.JumpHeightMetricLabel = var2.createElement(var9, var193)
   var71.MetricLabels = var2.createElement("Frame", var175, var183)
   return var2.createElement("Frame", var63, var71)
end

function var10.render(arg1)
   local var0 = arg1.props
   local var1 = var0.UseJumpPower
   local var2 = var0.JumpPower
   local var3 = var0.JumpHeight
   local var4 = var0.SetUseJumpPower
   local var5 = var0.SetJumpPower
   local var6 = var0.SetJumpHeight
   local var7 = var0.Localization
   local var8 = UDim.new(0, 10)
   local var63 = {}
   var63.LayoutOrder = var0.LayoutOrder
   var63.Size = UDim2.new(1, 0, 0, 50)
   var63.BackgroundTransparency = 1
   local var71 = {}
   local var75 = {}
   var75.Title = var7:getText("General", "TitleJump")
   local var81 = {}
   var81.Id = false
   var81.Title = var7:getText("General", "JumpHeight")
   local var87 = {}
   var87.Id = true
   var87.Title = var7:getText("General", "JumpPower")
   var75.Buttons = {}
   var75.Enabled = true
   var75.Selected = var1
   var75.Mouse = var0.Mouse:get()
   function var75.SelectionChanged(arg1)
      var4(arg1.Id)
   end
   
   var71.JumpSelect = var2.createElement(var8, var75)
   local var101 = {}
   var101.Position = UDim2.new(0, 340, 0, 0)
   var101.BackgroundTransparency = 1
   local var109 = {}
   local var113 = {}
   var113.Padding = var8
   var113.SortOrder = Enum.SortOrder.LayoutOrder
   var109.Layout = var2.createElement("UIListLayout", var113)
   local var119 = {}
   var119.Disabled = var1
   var119.LayoutOrder = 1
   function var119.OnFocusLost()
      var6(math.clamp(var3, 0, ∞))
   end
   
   function var119.OnTextChanged(arg1)
      local var131 = tonumber(arg1)
      var6(arg1)
   end
   
   var119.Size = UDim2.fromOffset(150, 20)
   var119.Text = var6(var3)
   var109.JumpHeightInputBox = var2.createElement(var5, var119)
   local var145 = {}
   var145.Disabled = var1
   var145.LayoutOrder = 2
   function var145.OnFocusLost()
      var5(math.clamp(var2, 0, 1000))
   end
   
   function var145.OnTextChanged(arg1)
      local var158 = tonumber(arg1)
      var5(arg1)
   end
   
   var145.Size = UDim2.new(0, 150, 0, 20)
   var145.Text = var6(var2)
   var109.JumpPowerInputBox = var2.createElement(var5, var145)
   var71.JumpInput = var2.createElement("Frame", var101, var109)
   local var175 = {}
   var175.Position = UDim2.new(0, 510, 0, 0)
   var175.BackgroundTransparency = 1
   local var183 = {}
   local var187 = {}
   var187.Padding = var8
   var187.SortOrder = Enum.SortOrder.LayoutOrder
   var183.Layout = var2.createElement("UIListLayout", var187)
   local var193 = {}
   var193.Enabled = var1
   var193.Size = UDim2.new(1, 0, 0, 20)
   local var10 = var6(var0.WorldRootPhysics:get().convertStudsToMeters(var3))
   var193.Text = var7:getText("General", "UnitsMeters1", {})
   var183.JumpHeightMetricLabel = var2.createElement(var9, var193)
   var71.MetricLabels = var2.createElement("Frame", var175, var183)
   return var2.createElement("Frame", var63, var71)
end

fun5 = var4.withContext
local var214 = {}
var214.Localization = var4.Localization
var214.Mouse = var4.Mouse
var214.WorldRootPhysics = require(var0.ContextServices.WorldRootPhysics)
var10 = fun5(var214)(var10)
return var10
