-- Generated with Unluau (https://github.com/valencefun/unluau)
local var0 = script.Parent.Parent
local var1 = script.Parent.Parent.Parent.Parent
local var2 = require(var1.Packages.Roact)
local var3 = require(var1.Packages.Framework)
local var4 = var3.ContextServices
local var5 = var3.UI.TextInput
local var6 = require(var0.Util.formatNumberForDisplay)
local var7 = require(var0.Util.formatNumberForEngine)
local var8 = var1.Packages.RoactStudioWidgets
local var9 = require(var8.RadioButtonSet)
local var10 = require(var8.Text)
local var11 = game:GetFastFlag("StudioGameSettingsWorldPageFormatNumbersForGerman")
local var12 = var2.PureComponent:extend("JumpSelect")
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
   local var71 = {}
   var71.LayoutOrder = var0.LayoutOrder
   var71.Size = UDim2.new(1, 0, 0, 50)
   var71.BackgroundTransparency = 1
   local var79 = {}
   local var83 = {}
   var83.Title = var7:getText("General", "TitleJump")
   local var89 = {}
   var89.Id = false
   var89.Title = var7:getText("General", "JumpHeight")
   local var95 = {}
   var95.Id = true
   var95.Title = var7:getText("General", "JumpPower")
   var83.Buttons = {}
   var83.Enabled = true
   var83.Selected = var1
   var83.Mouse = var0.Mouse:get()
   function var83.SelectionChanged(arg1)
      var4(arg1.Id)
   end
   
   var79.JumpSelect = var2.createElement(var9, var83)
   local var109 = {}
   var109.Position = UDim2.new(0, 340, 0, 0)
   var109.BackgroundTransparency = 1
   local var117 = {}
   local var121 = {}
   var121.Padding = var8
   var121.SortOrder = Enum.SortOrder.LayoutOrder
   var117.Layout = var2.createElement("UIListLayout", var121)
   local var127 = {}
   var127.Disabled = var1
   var127.LayoutOrder = 1
   function var127.OnFocusLost()
      var6(math.clamp(var3, 0, ∞))
   end
   
   function var127.OnTextChanged(arg1)
      if var11 then
         arg1 = var7(arg1)
      end
      local var143 = tonumber(arg1)
      var6(arg1)
   end
   
   var127.Size = UDim2.fromOffset(150, 20)
   var127.Text = var6(var3)
   var117.JumpHeightInputBox = var2.createElement(var5, var127)
   local var157 = {}
   var157.Disabled = var1
   var157.LayoutOrder = 2
   function var157.OnFocusLost()
      var5(math.clamp(var2, 0, 1000))
   end
   
   function var157.OnTextChanged(arg1)
      if var11 then
         arg1 = var7(arg1)
      end
      local var174 = tonumber(arg1)
      var5(arg1)
   end
   
   var157.Size = UDim2.new(0, 150, 0, 20)
   var157.Text = var6(var2)
   var117.JumpPowerInputBox = var2.createElement(var5, var157)
   var79.JumpInput = var2.createElement("Frame", var109, var117)
   local var191 = {}
   var191.Position = UDim2.new(0, 510, 0, 0)
   var191.BackgroundTransparency = 1
   local var199 = {}
   local var203 = {}
   var203.Padding = var8
   var203.SortOrder = Enum.SortOrder.LayoutOrder
   var199.Layout = var2.createElement("UIListLayout", var203)
   local var209 = {}
   var209.Enabled = var1
   var209.Size = UDim2.new(1, 0, 0, 20)
   local var10 = var6(var0.WorldRootPhysics:get().convertStudsToMeters(var3))
   var209.Text = var7:getText("General", "UnitsMeters1", {})
   var199.JumpHeightMetricLabel = var2.createElement(var10, var209)
   var79.MetricLabels = var2.createElement("Frame", var191, var199)
   return var2.createElement("Frame", var71, var79)
end

function var12.render(arg1)
   local var0 = arg1.props
   local var1 = var0.UseJumpPower
   local var2 = var0.JumpPower
   local var3 = var0.JumpHeight
   local var4 = var0.SetUseJumpPower
   local var5 = var0.SetJumpPower
   local var6 = var0.SetJumpHeight
   local var7 = var0.Localization
   local var8 = UDim.new(0, 10)
   local var71 = {}
   var71.LayoutOrder = var0.LayoutOrder
   var71.Size = UDim2.new(1, 0, 0, 50)
   var71.BackgroundTransparency = 1
   local var79 = {}
   local var83 = {}
   var83.Title = var7:getText("General", "TitleJump")
   local var89 = {}
   var89.Id = false
   var89.Title = var7:getText("General", "JumpHeight")
   local var95 = {}
   var95.Id = true
   var95.Title = var7:getText("General", "JumpPower")
   var83.Buttons = {}
   var83.Enabled = true
   var83.Selected = var1
   var83.Mouse = var0.Mouse:get()
   function var83.SelectionChanged(arg1)
      var4(arg1.Id)
   end
   
   var79.JumpSelect = var2.createElement(var9, var83)
   local var109 = {}
   var109.Position = UDim2.new(0, 340, 0, 0)
   var109.BackgroundTransparency = 1
   local var117 = {}
   local var121 = {}
   var121.Padding = var8
   var121.SortOrder = Enum.SortOrder.LayoutOrder
   var117.Layout = var2.createElement("UIListLayout", var121)
   local var127 = {}
   var127.Disabled = var1
   var127.LayoutOrder = 1
   function var127.OnFocusLost()
      var6(math.clamp(var3, 0, ∞))
   end
   
   function var127.OnTextChanged(arg1)
      if var11 then
         arg1 = var7(arg1)
      end
      local var143 = tonumber(arg1)
      var6(arg1)
   end
   
   var127.Size = UDim2.fromOffset(150, 20)
   var127.Text = var6(var3)
   var117.JumpHeightInputBox = var2.createElement(var5, var127)
   local var157 = {}
   var157.Disabled = var1
   var157.LayoutOrder = 2
   function var157.OnFocusLost()
      var5(math.clamp(var2, 0, 1000))
   end
   
   function var157.OnTextChanged(arg1)
      if var11 then
         arg1 = var7(arg1)
      end
      local var174 = tonumber(arg1)
      var5(arg1)
   end
   
   var157.Size = UDim2.new(0, 150, 0, 20)
   var157.Text = var6(var2)
   var117.JumpPowerInputBox = var2.createElement(var5, var157)
   var79.JumpInput = var2.createElement("Frame", var109, var117)
   local var191 = {}
   var191.Position = UDim2.new(0, 510, 0, 0)
   var191.BackgroundTransparency = 1
   local var199 = {}
   local var203 = {}
   var203.Padding = var8
   var203.SortOrder = Enum.SortOrder.LayoutOrder
   var199.Layout = var2.createElement("UIListLayout", var203)
   local var209 = {}
   var209.Enabled = var1
   var209.Size = UDim2.new(1, 0, 0, 20)
   local var10 = var6(var0.WorldRootPhysics:get().convertStudsToMeters(var3))
   var209.Text = var7:getText("General", "UnitsMeters1", {})
   var199.JumpHeightMetricLabel = var2.createElement(var10, var209)
   var79.MetricLabels = var2.createElement("Frame", var191, var199)
   return var2.createElement("Frame", var71, var79)
end

fun5 = var4.withContext
local var230 = {}
var230.Localization = var4.Localization
var230.Mouse = var4.Mouse
var230.WorldRootPhysics = require(var0.ContextServices.WorldRootPhysics)
var12 = fun5(var230)(var12)
return var12
